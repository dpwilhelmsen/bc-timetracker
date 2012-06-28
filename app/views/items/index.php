<?php
foreach($projects as $project) {
	echo '<a id="id-'.$project->id .'" class="large blue button">'.$project->title.'</a>';
}