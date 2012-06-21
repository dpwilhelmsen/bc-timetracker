<?php 

define('DS', DIRECTORY_SEPARATOR);
define('ROOT', dirname(__FILE__));

$url = $_GET['url'];
//echo $url;

require_once (ROOT . DS . 'app' . DS . 'bootstrap.php');