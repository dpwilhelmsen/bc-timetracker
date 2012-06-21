<pre>
<?php
error_reporting(E_ALL);
ini_set('display_errors', 'On');
// typical REST request
    require('Basecamp.class.php');
    $bc = new Basecamp('https://xxx.basecamphq.com/','xxx','xxx');
    $response = $bc->getProjects();
	
    // see the XML output
    //var_dump($response);

    // iterate the projects
    foreach($response['body']->project as $project) {
      //print_r($project);
	  echo $project->name.'</br>';
	  $todo = $bc->getTodoListsForProject($project->id);
	  echo '<ul>';
	  foreach($todo['body']->{'todo-list'} as $todol) {
		echo '<li>'.$todol->name.'</li>';
	  }
	  echo '</ul>';
	}
    // upload a file and attach to a new message
   /* $file_id = $bc->uploadFile('./myfile.zip');

    $response = $bc->createMessageForProject(
      1234567,
      'test title',
      'test body',
      null,
      null,
      0,
      false,
      array(),
      array(array('My Zip File',$file_id,'application/zip','myfile.zip'))
    );*/

    // copy milestones and to-do's between projects
    /*$bc->copyProject($from_project_id,$to_project_id);*/