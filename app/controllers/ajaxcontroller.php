<?php
class AjaxController {
	public function beforeAction() {
		
	}
	/**
	 * Fetches All Projects
	 */
	public function projects() {
		$bc = new Basecamp(BC_URL, BC_USER, BC_PASS);
		$response = $bc->getProjects();
		//var_dump($response);
		echo '<pre>';
		foreach($response['body']->project as $project) {
			print_r($project);
		}
		echo '</pre>';
	}
	/**
	 * Fetches all todo lists that have active todo items, then gets the items to compare
	 * with items saved in the database
	 *  
	 * @param int $id
	 */
	public function todos($id) {
		$bc = new Basecamp(BC_URL, BC_USER, BC_PASS);
		$response = $bc->getTodoListsForProject($id,'pending');
		$count = 1;
		echo '<pre>';
		foreach($response['body']->{'todo-list'} as $todoList) {
			$items = $bc->getTodoItemIdsForList($todoList->id);
			var_dump($items);
			$count++;
		}
		echo $count . ' Requests.';
	}
	public function all(){
		$bc = new Basecamp(BC_URL, BC_USER, BC_PASS);
		$mtime = microtime();
		$mtime = explode(" ",$mtime);
		$mtime = $mtime[1] + $mtime[0];
		$starttime = $mtime;
		
		$response = $bc->getProjects();
		//var_dump($response);
		echo '<pre>';
		$projecs = array();
		$lists = array();
		$todos = array();
		$count = 1;
		foreach($response['body']->project as $project) {
			$projects[] = (int) $project->id;
			$todo_lists = $bc->getTodoListsForProject($project->id, 'pending');
			$count++;
			foreach($todo_lists['body']->{'todo-list'} as $todoList) {
				$todos[] = (string) $todoList->id;
				$items = $bc->getTodoItemIdsForList($todoList->id);
				$todos[] = $items;
				$count++;
			}
		}
		echo '</pre>';
		echo 'done<br />'.$count.' Requests <br/>';
		$mtime = microtime();
		$mtime = explode(" ",$mtime);
		$mtime = $mtime[1] + $mtime[0];
		$endtime = $mtime;
		$totaltime = ($endtime - $starttime);
		echo "This page was created in ".$totaltime." seconds";
	}
	public function afterAction() {
	
	}
}