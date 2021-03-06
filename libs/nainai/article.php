<?php


/**
 * @author panduo
 * @date 2016-12-26 15:47:41
 * @brief 耐耐网资讯分类管理
 */
namespace nainai;
use Library\Query;
use Library\Thumb;
use Library\M;
use nainai\Keyword;
use Library\tool;
class Article{

	const TYPE_USER = 1;//前台用户发布
	const TYPE_ADMIN = 2;//后台管理员发布

	public function setKeywordField(&$fields,$keyword){

		$keyword_info = Keyword::keywordInfo($keyword);
		$tmp = ',((';
		$keyword_filter = '';
		foreach ($keyword as $key => $value) {
			$title_score = 100;//100为标题相关度权重
			$tmp .= "(LENGTH(name) - LENGTH( REPLACE(name,'{$value}','')))/LENGTH('{$value}')+";	
			$keyword_score = isset($keyword_info[$value]) ? $keyword_info[$value]['search_num']*$keyword_info[$value]['base_score'] : 0.5;//0.5为新关键字权重
			//已存关键字权重默认为1 可由后台设置
			$keyword_filter .= "((LENGTH(ifnull(keywords,'')) - LENGTH( REPLACE(ifnull(keywords,''),'{$value}','')))/LENGTH('{$value}'))*{$keyword_score}+";
		}
		$fields .= rtrim($tmp,'+').")*{$title_score}+".rtrim($keyword_filter,'+').') as sign';
	}

	/**
	 * 获取文章列表
	 * @param  int $page      页数
	 * @param  array   $where     条件数组
	 * @param  string  $order     排序条件
	 * @param  string  $fields    查询值域
	 * @param  int $user_id   获取指定用户收藏文章列表
	 * @param  int $author_id 获取指定作者发布文章列表(前台)
	 * @param  string  $device    设备
	 * @param  int  $pageSize 每页显示数
	 * @return array
	 */
	public function arcList($page = 1,$where=array(),$order='',$fields='',$pageSize=10,$user_id = 0,$author_id = 0,$device=DEVICE_TYPE){
		$where_str = '';
		if(!$order) $order = 'update_time desc';
		$index = 0;
		if($where && is_array($where)){
			foreach ($where as $key => $value) {
				$key = (strpos($key,'.') ? '' : 'a.').$key;

				$oper = is_array($value) && isset($value[1]) ? $value[0] : '=';
				
				switch ($oper) {
					case 'like':
						if(is_array($value[1])){
							$tmp = ' (';
							foreach ($value[1] as $k => $v) {
								$tmp .= $key." like '%{$v}%' or ";
							}
							$tmp = rtrim($tmp,'or ').') and ';	
							
						}else{
							$tmp = $key." like '%{$value[1]}%' and ";
						}
						
						$where_str .= $tmp;
						break;
					case 'neq':
						$where_str .= $key.'!='.$value[1].' and ';
						break;
					case '=':
						$where_str .= $key.'='.$value.' and ';
						break;
					case 'gt':
						$where_str .= $key.">'".$value[1]."' and ";
						break;
					case 'lt':
						$where_str .= $key."<'".$value[1]."' and ";
						break;
					default:
						break;
				}
			}
			$where_str = rtrim($where_str,'and ');
			// var_dump($where_str);
		}else{
			$where_str = 'a.is_del = 0 and a.status <= 1';
		}
		$reModel = new Query('article as a');
		$reModel->distinct = 1;
		$reModel->join = 'left join article_content as ac on a.id = ac.article_id left join article_cover as aco on aco.article_id = a.id left join user as u on a.user_id = u.id';
		$bind = array();
        if(intval($user_id)>0){
        	$reModel->join .= 'left join user_favcate as uf on uf.cate_id = c.id';
        	$where = 'uf.user_id=:user_id and';
        	$bind = array_merge($bind,array('user_id'=>intval($user_id)));
        }
        if(intval($author_id)>0){
        	$where = 'a.user_id=:author_id and a.type='.\nainai\Article::TYPE_USER;
        	$bind = array_merge($bind,array('author_id'=>intval($author_id)));
        	
        }
        if($pageSize>0) $reModel->pagesize=$pageSize;

        $reModel->bind = $bind;
        $reModel->group = 'a.id';
        $reModel->order = $order;
        $reModel->fields = ($fields ? $fields:'a.*').",GROUP_CONCAT(url) as cover,u.username as author";

        $reModel->where = $where_str;
        $reModel->page = $page;
        $list = $reModel->find();
        if($page>0 && $device == 'pc'){
        	$reBar = $reModel->getPageBar();
        }
        foreach ($list as $key => &$value) {
        	$value['author'] = $value['type'] == \nainai\Article::TYPE_ADMIN ? '耐耐资讯' : ($value['author'] ? $value['author']:'佚名');
        	if(isset($value['cover'])){
        		// $thumbs[$key] = Thumb::get($value['img'],180,180);
          //       $photos[$key] = Thumb::getOrigImg($value['img']);
          		$covers = explode(',',$value['cover']);
          		$value['ori_covers'] = $covers;
          		$tmp = array();
          		foreach ($covers as $k => $v) {
          			$tmp []= Thumb::get($v,180,180);	
          		}
          		$value['cover'] = $tmp;
        	}else{
        		$value['cover'] = array();
        	}
        }
        return $page > 0 && $device == 'pc' ? array($list,$reBar) : $list;
	}

	/**
	 * 获取文章详情
	 * @param  int $article_id 文章id
	 * @param  int $user_id  当前用户id
	 * @return array
	 */
	public function arcInfo($article_id,$user_id = 10){
		$article_id = intval($article_id);
		if(!$article_id || $article_id <= 0) return array();

		$arcList = $this->arcList(0,array('id'=>$article_id),'','a.*,ac.content',1);

		if(!$arcList) return array();
		$arcInfo = $arcList[0];

		
		if($user_id > 0) Keyword::check($user_id,$arcInfo);

		$arcInfo['keywords'] = tool::explode($arcInfo['keywords']);

		if(DEVICE_TYPE != 'pc')
		$arcInfo['comArcList'] = $this->comArcList($arcInfo,$user_id);
		
		return $arcInfo;
	}

	/**
	 * 文章热度更新		
	 * @param  int $article_id 文章id
	 * @return 
	 */
	public function arcScore($article_id){

	}

	/**
	 * 特定文章相关推荐列表
	 * @param  array $arcInfo 文章信息数组
	 * @param  int $size 文章数
	 * @return array
	 */
	public function comArcList($arcInfo,$user_id = 0,$size = 3){
		if(!$arcInfo) return array();

		//获取用户常用关键字
		$fav_keywords = Keyword::userFavKeywords($user_id);

		$user_fields = 'a.*';
		$order = 'sign desc,update_time desc';
		$where = array('id'=>array('neq',$arcInfo['id']));
		if($fav_keywords) {
			$this->setKeywordField($user_fields,$fav_keywords);
			$userarcList = $this->arcList(1,$where,$order,$user_fields,10);
		}else{
			$userarcList = array();
		}

		//当前文章关键字
		$arc_keywords = $arcInfo['keywords'];

		$arc_fields = 'a.*';
		$where = array('cate_id'=>$arcInfo['cate_id'],'id'=>array('neq',$arcInfo['id']));
		if($arc_keywords) {
			$this->setKeywordField($arc_fields,$arc_keywords);
			$arcList = $this->arcList(1,$where,$order,$arc_fields,10);
		}else{
			$arcList = array();
		}
		$list = array_merge(array_slice($arcList,0,$size),array_slice($userarcList, 0,$size));
		$ids = array();
		foreach ($list as $key => $value) {
			if(in_array($value['id'],$ids)) unset($list[$key]);
			$ids []= $value['id'];
		}
		return $list;
	}


}