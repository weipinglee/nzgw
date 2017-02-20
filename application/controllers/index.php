<?php

use Library\M;
use Library\Thumb;
use Library\Query;
use Library\safe;
use Library\url;
class IndexController extends InitController {

	public function indexAction() {

		$slide = new M('slide');
		$list = $slide->where(array('status'=>1))->select();
		foreach ($list as $key => &$value) {
			// $value['img'] = Thumb::get($value['img'],1920,676);
			$value['img'] = url::getBaseUrl().'/nnys-admin/'.str_replace('@admin', '', $value['img']);
		}

		$query = new Query('article as a');
		$query->join = 'left join article_cover as ac on ac.article_id = a.id left join article_content as con on con.article_id = a.id';
		$page = safe::filterGet('page','int',1);
		$query->where = "cate_id=5";
		$query->fields = 'a.*,ac.url,con.content';
		$query->page = $page;
		$classes = $query->find();
		$query->pagesize = 6;
		$pagebar = $query->getPageBar();
		// echo '<pre>';var_dump($classes);
		foreach ($classes as $key => &$value) {
			$value['url'] = Thumb::get($value['url'],180,180);
			$value['content_desc'] = mb_substr(strip_tags(htmlspecialchars_decode($value['content'])),0,100,'UTF-8').'...';
			$value['content'] = htmlspecialchars_decode($value['content']);
		}

		$this->getView()->assign('classes',array_slice($classes,0,4));
		$this->getView()->assign('right_classes',array_slice($classes,4,2));
		$this->getView()->assign('slide',$list);
		$this->getView()->assign('title','首页');
	}
}
