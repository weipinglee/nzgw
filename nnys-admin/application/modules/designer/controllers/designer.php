<?php

use \Library\Safe;
use \Library\Thumb;
use \Library\url;
use \Library\json;
use \Library\tool;
use \Library\M;
use \Library\query;

class designerController extends InitController{


	public function designerListAction(){
		$query = new query('designer');
		$query->page = safe::filterGet('page');
		$query->order = 'status asc,create_time asc';
		$res = $query->find();

		$pagebar = $query->getPageBar();

		$this->getView()->assign('list',$res);
		$this->getView()->assign('pageBar',$pagebar);
	}
	
	public function designeraddAction(){
		if(IS_POST){
			$m = new M('designer');
			$data['name'] = safe::filterPost('name');
			$data['status'] = safe::filterPost('status');
			$data['cover'] = tool::setImgApp(safe::filterPost('imgcover'));
			$data['style'] = safe::filterPost('style');
			$data['ln'] = safe::filterPost('ln');
			$data['create_time'] = date('Y-m-d H:i:s',time());

			$res = $m->data($data)->add();
			
			$res = $res > 0 ? tool::getSuccInfo():tool::getSuccInfo(0,$res);
			die(json::encode($res));
		}else{
			$this->getView()->assign('oper','添加');
			\Yaf\Dispatcher::getInstance()->disableView();
			$this->getView()->assign('url',url::createUrl('designer/designer/designeradd'));
			$this->display('designeredit');
		}
	}

	public function designereditAction() {

		if(IS_POST){
			$data['name'] = safe::filterPost('name');
			$data['status'] = safe::filterPost('status');
			if(strpos('@',$_POST['imgcover']) === false) $data['cover'] = tool::setImgApp(safe::filterPost('imgcover'));
			$data['intro'] = safe::filterPost('intro');
			$id = safe::filterPost('id');
			$m = new M('designer');
			try {
				
				$res = $m->where(array('id'=>$id))->data($data)->update();
				$res = $res > 0 ? tool::getSuccInfo():tool::getSuccInfo(0,$m->getError());
			} catch (Exception $e) {
				$res = tool::getSuccInfo(0,$e->getMessage());
			}
			die(json::encode($res));
		}else{
			$id = safe::filter($this->_request->getParam('id'));
			$m = new M('designer');
			$info = $m->where(array('id'=>$id))->getObj();
			$info['thump']= Thumb::get($info['cover'],180,180);
			$this->getView()->assign('oper','编辑');
			
			$this->getView()->assign('id',$id);
			$this->getView()->assign('info',$info);

			$this->getView()->assign('url',url::createUrl('designer/designer/designeredit'));
		}
	}

	public function setStatusAction(){
        if (IS_AJAX) {
            $id=intval($this->_request->getParam('id'));
            $status = safe::filterPost('status', 'int');
            $data = [
                'status' => $status
            ];
            $m = new M('designer');
            $res = $m->data($data)->where(array('id'=>$id))->update();
            $res = $res > 0 ? tool::getSuccInfo() : tool::getSuccInfo(0,'操作失败');
            die(json::encode($res));
        }
    }
    public function setyyStatusAction(){
        if (IS_AJAX) {
            $id=intval($this->_request->getParam('id'));
            $status = safe::filterPost('status', 'int');
            $data = [
                'status' => $status
            ];
            $m = new M('designeryy');
            $res = $m->data($data)->where(array('id'=>$id))->update();
            $res = $res > 0 ? tool::getSuccInfo() : tool::getSuccInfo(0,'操作失败');
            die(json::encode($res));
        }
    }

    public function designeryyAction(){
		$query = new query('designeryy as dy');
		$query->join = 'left join designer as d on d.id = dy.designerid';
		$query->fields = 'dy.name,dy.id,dy.phone,d.name as dyname,dy.create_time,dy.status';
		$query->page = safe::filterGet('page');
		$query->order = 'create_time desc';
		$res = $query->find();

		$pagebar = $query->getPageBar();

		$this->getView()->assign('list',$res);
		$this->getView()->assign('pageBar',$pagebar);
	}

	public function delAction(){
        if (IS_AJAX) {
            $id=safe::filterGet('id');
            $m = new M('designer');
            $res = $m->where(array('id'=>$id))->delete();

            $res = $res > 0 ? tool::getSuccInfo() : tool::getSuccInfo(0,'删除失败');
            die(json::encode($res));

        }
    }
}