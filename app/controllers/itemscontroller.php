<?php

class ItemsController extends Controller {
	public function beforeAction() {
		
	}
	public function index(){
		$this->set('title','BaseCamp TimeTracker');
		$projects = $this->Item->getProjects();
		//$todos = 
		$this->set('projects', $projects);
	}
	public function test() {
		echo 'test';
	}
	public function afterAction() {
		
	}
}