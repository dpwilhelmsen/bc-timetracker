<?php
class Item extends Model {
	function __construct() {
		$this->_table = 'projects';
	}
	
	public function getProjects() {
		
		$this->pdoConn(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);
		$sql = "SELECT * FROM projects WHERE status = 'active'";
		$st = $this->dbh->prepare($sql);
		$st->execute();
		$row = $st->fetchAll(PDO::FETCH_CLASS);
		
		if (empty($row)) { 
			$bc = new Basecamp(BC_URL, BC_USER, BC_PASS);
			$response = $bc->getProjects();
			// iterate the projects
			$results = array();
			$count = 0;
			foreach($response['body']->project as $project) {
				$results[$count]['id'] = (int) $project->id;
				$results[$count]['name'] = (string) $project->name;
				$results[$count]['status'] = (string) $project->status;
				$count++;
			}
			
			$query = "INSERT INTO projects (id,title,status) VALUES "; //Prequery
			$qPart = array_fill(0, count($results), "(?, ?, ?)");
			$query .=  implode(",",$qPart);
			$stmt = $this->dbh->prepare($query);
			$i = 1;
			foreach($results as $item) { //bind the values one by one
				$stmt -> bindValue($i++, $item['id']);
				$stmt -> bindValue($i++, $item['name']);
				$stmt -> bindValue($i++, $item['status']);
			}
			var_dump($stmt);
			$stmt -> execute(); //execute
			
			$sql = "SELECT * FROM projects WHERE status = 'active'";
			$st = $this->dbh->prepare($sql);
			$st->execute();
			$row = $st->fetchAll(PDO::FETCH_CLASS);			
		}
		$results = $row;
		return $results;
	}
	
	protected function pdoConn($hostname, $username, $password, $dbname) {
		try {
			$this->dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);
			$this->dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		}
		catch(PDOException $e)
		{
			echo $e->getMessage();
		}
	}
	/**
	 * Get the todo lists for project id 
	 * @param int $id - Project id
	 */
	//TODO - Prepare varaibles for query
	public function todos($project_id) {
		$this->pdoConn(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);
		$sql = "SELECT * FROM lists WHERE project_id = $project_id AND complete = 'false'";
		$st = $this->dbh->prepare($sql);
		$st->execute();
		$row = $st->fetchAll(PDO::FETCH_CLASS);
		
		if (empty($row)) { 
			$bc = new Basecamp(BC_URL, BC_USER, BC_PASS);
			$response = $bc->getTodoListsForProject($project_id);
			// iterate the projects
			$results = array();
			$count = 0;
			foreach($response['body']->{'todo-list'} as $todo) {
				$results[$count]['id'] = (int) $todo->id;
				$results[$count]['name'] = (string) $todo->name;
				$results[$count]['completed'] = (string) $todo->completed;
				$count++;
			}
			$listItems = array();
			$itemCount = 0;
			foreach($results as $list) {
				$response = $bc->getTodoItemsForList($list['id']);
				foreach($response['body']->{'todo-item'} as $item) {
					$listItems[$itemCount]['id'] =  (int) $item->id;
					$listItems[$itemCount]['list_id'] = (int) $list['id'];
					$listItems[$itemCount]['name'] = (string) $item->content;
					$listItems[$itemCount]['complete'] = (string) $item->completed;
					$listItems[$itemCount]['position'] = (int) $item->position;
					$itemCount++;
				}
			}
			$query = "INSERT INTO lists (id,project_id,title,complete) VALUES "; //Prequery
			$qPart = array_fill(0, count($results), "(?, ?, ?, ?)");
			$query .=  implode(",",$qPart);
			$stmt = $this->dbh->prepare($query);
			$i = 1;
			foreach($results as $item) { //bind the values one by one
				$stmt -> bindValue($i++, $item['id']);
				$stmt -> bindValue($i++, $project_id);
				$stmt -> bindValue($i++, $item['name']);
				$stmt -> bindValue($i++, $item['completed']);
			}
			$stmt -> execute(); //execute
			
			$query = "INSERT INTO items (id,list_id,title,complete,position) VALUES "; //Prequery
			$qPart = array_fill(0, count($listItems), "(?, ?, ?, ?, ?)");
			$query .=  implode(",",$qPart);
			$stmt = $this->dbh->prepare($query);
			$i = 1;
			foreach($listItems as $item) { //bind the values one by one
				$stmt -> bindValue($i++, $item['id']);
				$stmt -> bindValue($i++, $item['list_id']);
				$stmt -> bindValue($i++, $item['name']);
				$stmt -> bindValue($i++, $item['complete']);
				$stmt -> bindValue($i++, $item['position']);
			}
			$stmt -> execute();
			
			$sql = "SELECT * FROM lists WHERE project_id = $project_id AND complete = 'false'";
			$st = $this->dbh->prepare($sql);
			$st->execute();
			$row = $st->fetchAll(PDO::FETCH_CLASS);			
		}
		$results = array();
		$results['lists'] = $row;
		
		//TODO - Optimze this query
		foreach($results['lists'] as $list) {
			$sql = "SELECT * FROM items WHERE list_id = $list->id AND complete = 'false'";
			$st = $this->dbh->prepare($sql);
			$st->execute();
			$row = $st->fetchAll(PDO::FETCH_ASSOC);
			$results['items'][$list->id] = $row;
		}
		
		
		return $results;
	}
}