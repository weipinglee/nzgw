<?php

use Library\safe;
use Library\tool;
use Library\M;
use Library\json;
use Library\Query;
use Library\url;
use Library\Thumb;
class zxktController extends InitController {

	public function zxktAction() {
		$type = safe::filter($this->_request->getParam('type'),'int',1);
		$id = safe::filter($this->_request->getParam('id'),'int');
		$query = new query('article_category');
		$query->order = 'sort';
		$query->where = 'status = 1 and pid = 0';
		$res = $query->find();
			
		$query = new Query('article as a');
		$query->join = 'left join article_content as ac on a.id = ac.article_id left join article_category as cate on cate.id = a.cate_id';
		$query->fields = 'ac.content,cate.name as cate_name';
		$query->pageSize = 1;
		$arclist = $query->find();

		$arcinfo = $arclist ? $arclist[0] : arrazxkty();
		$arcinfo['content'] = htmlspecialchars_decode($arcinfo['content']);

		foreach ($res as $key => &$value) {
			switch ($value['name']) {
				case '装修课堂':
					$value['href'] = url::createUrl('/zxkt/zxkt');
					break;
				
				default:
					$value['href'] = url::createUrl("/about/about?id={$value['id']}");
					break;
			}
		}
		
		$query = new Query('article as a');
		$query->join = 'left join article_cover as ac on ac.article_id = a.id left join article_content as con on con.article_id = a.id';
		$page = safe::filterGet('page','int',1);
		$query->where = "cate_id=5";
		$query->fields = 'a.*,ac.url,con.content';
		$query->page = $page;
		if($type != 1 && isset($id)){
			$query->where = 'a.id = '.$id;
		}
		$classes = $query->find();
		$query->pagesize = 5;
		$pagebar = $query->getPageBar();
		// echo '<pre>';var_dump($classes);
		foreach ($classes as $key => &$value) {
			// $value['url'] = Thumb::get($value['url'],180,180);
			$value['url'] = url::getBaseUrl().'/nnys-admin/'.str_replace('@admin', '', $value['url']);
			$value['content_desc'] = mb_substr(strip_tags(htmlspecialchars_decode($value['content'])),0,100,'UTF-8').'...';
			$value['content'] = htmlspecialchars_decode($value['content']);
			$value['yydd'] = date('Y-m',strtotime($value['create_time']));
			$value['day'] = date('d',strtotime($value['create_time']));
		}

		$this->getView()->assign('classes',$classes);
		$this->getView()->assign('pagebar',$pagebar);

		$this->getView()->assign('list',$res);
		$this->getView()->assign('info',$arcinfo);
		$this->getView()->assign('title','装修课堂');
		if($type != 1 && isset($id)){
			$this->getView()->assign('zxdetail',$classes[0]);
			$this->display('detail');
		}
	}
}
