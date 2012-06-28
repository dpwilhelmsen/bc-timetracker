<?php
class Model extends SQLQuery {
	protected $_model;

	function __construct() {

		$this->connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);
		$this->_model = get_class($this);
		$this->_table = strtolower($this->_model)."s";
	}
	/*function connect($hostname, $username, $password, $dbname) {
		try {
			$this->dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);
			echo 'connect';
		}
		catch(PDOException $e)
		{
			echo $e->getMessage();
		}
	}*/
	function __destruct() {
	}
}