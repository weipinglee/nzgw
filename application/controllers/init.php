<?php

use Library\safe;
use Library\tool;
use Library\M;
use Library\json;
use Library\Query;
use Library\Thumb;
class InitController extends Yaf\Controller_Abstract {
	public function init(){
		$this->getView()->setLayout('layout');
		$this->getView()->assign('title','公益基金');
	}
}
