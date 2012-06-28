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
}