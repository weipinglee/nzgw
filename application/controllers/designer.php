<?php

use Library\safe;
use Library\tool;
use Library\M;
use Library\json;
use Library\Query;
use Library\Thumb;
class DesignerController extends InitController {


	public function designerAction() {
		if(IS_POST){
			$data['name'] = safe::filterPost('name');
			$data['phone'] = safe::filterPost('mobile');
			$data['designerid'] = safe::filterPost('id','int');
			$data['create_time'] = date('Y-m-d H:i:s',time());
			$data['status'] = 0;
			$m = new M('designeryy');
			try {
				$res = $m->data($data)->add();	
				$res = $res > 0 ? tool::getSuccInfo():tool::getSuccInfo(0,$m->getError());
			} catch (Exception $e) {
				$res = tool::getSuccInfo(0,$e->getMessage());
			}
			die(json::encode($res));
		}else{
			$random = safe::filter($this->_request->getParam('random'));
			$query = new query('designer');
			$query->page = safe::filterGet('page');
			$query->order = 'create_time asc';
			$query->where = 'status=1';
			$res = $query->find();
			if($random == 1){
				shuffle($res);
				$ran = floor(rand(0,count($res)))-1;
				$ran = $ran <= 0 ? 1 : $ran;
				$res = array_slice($res,$ran-1,$ran);
			}
			
			foreach ($res as $key => &$value) {
				$value['thump']= Thumb::get($value['cover'],180,180);
			}
			$pagebar = $query->getPageBar();

			$this->getView()->assign('list',$res);
			$this->getView()->assign('title','设计师');
			if(!$random) $this->getView()->assign('pageBar',$pagebar);
		}
	}
	
}
