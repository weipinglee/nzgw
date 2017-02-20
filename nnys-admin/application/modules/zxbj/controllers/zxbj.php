<?php

use \Library\Safe;
use \Library\Thumb;
use \Library\url;
use \Library\json;
use \Library\tool;
use \Library\M;
use \Library\query;

class ZxbjController extends InitController {


	public function zxbjListAction(){
		$query = new query('zxbj');
		$query->page = safe::filterGet('page');
		$query->order = 'status asc,create_time asc';
		$res = $query->find();

		$pagebar = $query->getPageBar();

		$this->getView()->assign('list',$res);
		$this->getView()->assign('pageBar',$pagebar);
	}
	
	public function setStatusAction(){
        if (IS_AJAX) {
            $id=intval($this->_request->getParam('id'));
            $status = safe::filterPost('status', 'int');
            $data = [
                'status' => $status
            ];
            $m = new M('zxbj');
            $res = $m->data($data)->where(array('id'=>$id))->update();
            $res = $res > 0 ? tool::getSuccInfo() : tool::getSuccInfo(0,'操作失败');
            die(json::encode($res));
        }
    }
}