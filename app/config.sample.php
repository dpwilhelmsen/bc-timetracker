<?php
/** Configuration Variables **/

define ('DEVELOPMENT_ENVIRONMENT',true);

define('DB_NAME', 'timetracker');
define('DB_USER', 'xxx');
define('DB_PASSWORD', 'xxx');
define('DB_HOST', 'localhost');
define('BC_URL', 'https://xxx.basecamphq.com/');
define('BC_USER', 'xxx');
define('BC_PASS', 'xxx');

$routing = array(
		'/admin\/(.*?)\/(.*?)\/(.*)/' => 'admin/\1_\2/\3'
);
$default = array();
$default['controller'] = 'items';
$default['action'] = 'index';
