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
		$model = new Item;
		$results = $model->todos($id);
		//var_dump($results['items']);
		$bc = new Basecamp(BC_URL, BC_USER, BC_PASS);
		$response = $bc->getTodoListsForProject($id, 'pending');
		$count = 0;
		//var_dump($response['body']);
		$itemArray = array();
		foreach($response['body']->{'todo-list'} as $todoList) {
			if(!array_key_exists((int) $todoList->id, $results['items'])){ 
				//TODO - Send info to database
			}
			$items = $bc->getTodoItemsForList($todoList->id);
			//var_dump($items['body']);
			foreach($items['body']->{'todo-item'} as $item) {
				//var_dump($item);
				if((string)$item->completed === 'false'){
				$itemArray[(int)$todoList->id][$count]['id'] = (string)$item->id;
				$itemArray[(int)$todoList->id][$count]['list_id'] = (int) $todoList->id;
				$itemArray[(int)$todoList->id][$count]['name'] = (string) $item->content;
				$itemArray[(int)$todoList->id][$count]['complete'] = (string) $item->completed;
				$itemArray[(int)$todoList->id][$count]['position'] = (int) $item->position;
				$count++;
				}
			}
		}
		$h = new Helper;
		$compare = $h->multidimensional_array_diff($itemArray, $results['items']);
		
		
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