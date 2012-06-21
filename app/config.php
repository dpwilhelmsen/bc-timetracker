<?php
/** Configuration Variables **/

define ('DEVELOPMENT_ENVIRONMENT',true);

define('DB_NAME', 'DB');
define('DB_USER', 'USER');
define('DB_PASSWORD', 'PASS');
define('DB_HOST', 'localhost');

$routing = array(
		'/admin\/(.*?)\/(.*?)\/(.*)/' => 'admin/\1_\2/\3'
);
$default = array();
$default['controller'] = 'index';
$default['action'] = 'index';