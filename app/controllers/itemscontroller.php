<?php

class ItemsController extends Controller {
	public function beforeAction() {
		
	}
	public function index(){
		$bc = new Basecamp(BC_URL, BC_USER, BC_PASS);
		$response = $bc->getProjects();
		// iterate the projects
		/*foreach($response['body']->project as $project) {
			//print_r($project);
			echo $project->name.'</br>';
			$todo = $bc->getTodoListsForProject($project->id);
			echo '<ul>';
			foreach($todo['body']->{'todo-list'} as $todol) {
				echo '<li>'.$todol->name.'</li><ul>';
				$id = ($todol->id*1);
				$items = $bc->getTodoItemsForList($id);
				foreach($items['body'] as $item) {
					$after = '';
					$completed = (string) $item->completed;
					if($completed !== 'true'){
						echo '<li>'.$item->content.$after.'</li>';
					}
						
				}
				echo '</ul>';
			}
			echo '</ul>';
		}*/
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