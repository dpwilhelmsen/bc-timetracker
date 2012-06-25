<?php
foreach($projects as $project) {
	echo '<a id="id-'.$project->id .'">'.$project->name.' -- </a>';
}