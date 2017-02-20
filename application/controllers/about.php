<?php

use Library\safe;
use Library\tool;
use Library\M;
use Library\json;
use Library\Query;
use Library\Thumb;
use Library\url;
class AboutController extends InitController {

	public function aboutAction(){
		$id = safe::filter($this->_request->getParam('id'),'int',1);
		
		$query = new query('article_category');
		$query->order = 'sort';
		$query->where = 'status = 1 and pid = 0';
		$res = $query->find();
			
		$query = new Query('article as a');
		$query->join = 'left join article_content as ac on a.id = ac.article_id left join article_category as cate on cate.id = a.cate_id';
		$query->where = 'cate.id='.$id;
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
		$this->getView()->assign('list',$res);
		$this->getView()->assign('info',$arcinfo);
		$this->getView()->assign('id',$id);
		$this->getView()->assign('title','关于耐装');
	}

}