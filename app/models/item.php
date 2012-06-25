<?php
class Item extends Model {
	public function stuff() {
		$bc = new Basecamp(BC_URL, BC_USER, BC_PASS);
		$response = $bc->getProjects();
		// iterate the projects
		$results = array();
		$count = 0;
		foreach($response['body']->project as $project) {
			$results[$count] = $project;
			$count++;
		}
		return $results;
	}
}