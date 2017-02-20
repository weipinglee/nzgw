<?php

use Library\safe;
use Library\tool;
use Library\M;
use Library\json;
use Library\Query;
use Library\Thumb;
class LuxuryController extends InitController {
	public function LuxuryAction(){
		$this->getView()->assign('title','豪华套餐');
	}

	public function VillaAction(){
		$this->getView()->assign('title','别墅套餐');
	}
}