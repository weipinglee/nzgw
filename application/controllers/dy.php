<?php

use Library\safe;
use Library\tool;
use Library\M;
use Library\json;
use Library\Query;
use Library\Thumb;
use Library\url;
class DyController extends InitController {

	public function dylistAction(){
		$query = new query('dy');
		$query->page = safe::filterGet('page');
		$query->order = 'status asc,create_time asc';
		$query->where = 'status = 1';
		$res = $query->find();

		$pagebar = $query->getPageBar();

		$this->getView()->assign('list',$res);
		$this->getView()->assign('pageBar',$pagebar);
	}

	public function DyAction() {
		if(IS_POST){
			$data['name'] = safe::filterPost('name');
			$data['phone'] = safe::filterPost('mobile');
			$data['dyid'] = safe::filterPost('id','int');
			$data['create_time'] = date('Y-m-d H:i:s',time());
			$data['status'] = 0;
			$m = new M('dyyy');
			try {
				$res = $m->data($data)->add();	
				$res = $res > 0 ? tool::getSuccInfo():tool::getSuccInfo(0,$m->getError());
			} catch (Exception $e) {
				$res = tool::getSuccInfo(0,$e->getMessage());
			}
			die(json::encode($res));
		}else{
			$query = new query('dy as d');
			$query->page = safe::filterGet('page');
			$query->join = 'left join dyyy as dy on dy.dyid = d.id';
			$query->fields = 'count(dy.dyid)*3+2017 as c,d.*';
			$query->group = 'd.id';
			$query->order = 'd.status asc,create_time asc';
			$query->where = 'd.status = 1';
			$res = $query->find();
			foreach ($res as $key => &$value) {
				// $value['thump']= Thumb::get($value['cover'],180,180);
				$value['thump'] = url::getBaseUrl().'/nnys-admin/'.str_replace('@admin', '', $value['cover']);
			}
			$pagebar = $query->getPageBar();

			$this->getView()->assign('list',$res);
			$this->getView()->assign('title','到店预约');
			$this->getView()->assign('pageBar',$pagebar);
		}
	}
	
}
