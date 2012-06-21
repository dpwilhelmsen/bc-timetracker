<?php

class IndexController {
	public function beforeAction() {
		
	}
	public function index(){
		global $config, $log;
		var_dump($config);
		$service = new \Sirprize\Basecamp\Service($config);
		$projects = $service->getProjectsInstance()->startAll();
		//var_dump($projects);
		echo '<ul>';
		foreach($projects as $project)
		{
			print '<li>'.$project->getName().' - '.$project->getId()."\n";
			
			$service = new \Sirprize\Basecamp\Cli($config);
			$service->setLog($log);
			$projectId = new \Sirprize\Basecamp\Id($project->getId());
			
			$todoLists = $service->getTodoListsInstance();
			echo '<ul><li>';
			$todoLists->startAllByProjectId($projectId);
			echo '</li>';
			if($todoLists->getResponse()->isError())
			{
				die("Error\n");
			}
			
			foreach($todoLists as $todoList)
			{
				print '<li>'.$todoList->getName()." - ".$todoList->getId()."</li>";
			}
			echo '</ul>';
			print '</li>';
		}
	}
	public function test() {
		echo 'test';
	}
	public function afterAction() {
		
	}
}