<?php

use Library\safe;
use Library\tool;
use Library\M;
use Library\json;
use Library\Query;
class ZxbjController extends InitController {

	public function zxbjAction() {
		$m = new M('zxbj');
		if(IS_POST){
			$data['name'] = safe::filterPost('name');
			$data['city'] = safe::filterPost('city');
			$data['area'] = safe::filterPost('area');
			$data['place'] = safe::filterPost('place');
			$data['phone'] = safe::filterPost('phone');
			$data['acreage'] = safe::filterPost('acreage','int');
			$data['type'] = safe::filterPost('type');
			$data['code'] = safe::filterPost('code');
			$data['create_time'] = date('Y-m-d H:i:s',time());
			$data['status'] = 0;
			
			try {
				unset($data['code']);
				$res = $m->data($data)->add();	
				$res = $res > 0 ? tool::getSuccInfo():tool::getSuccInfo(0,$m->getError());
			} catch (Exception $e) {
				$res = tool::getSuccInfo(0,$e->getMessage());
			}
			die(json::encode($res));
		}else{
			$q = new query('zxbj');
			$res = $q->db->exec("select count(*) as c from zxbj");
			$this->getView()->assign('q',$res[0]['c']+2017);
			$this->getView()->assign('title','咨询报价');
		}
	}
}
