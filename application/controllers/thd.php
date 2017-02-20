<?php

use Library\safe;
use Library\tool;
use Library\M;
use Library\json;
use Library\Query;
use Library\Thumb;
class ThdController extends InitController {
	public function ThdAction(){
		$this->getView()->assign('title','3D展厅');
	}

}