<?php
/** Check if environment is development and display errors **/

function setReporting() {
	if (DEVELOPMENT_ENVIRONMENT == true) {
		error_reporting(E_ALL);
		ini_set('display_errors','On');
	} else {
		error_reporting(E_ALL);
		ini_set('display_errors','Off');
		ini_set('log_errors', 'On');
		ini_set('error_log', ROOT.DS.'tmp'.DS.'logs'.DS.'error.log');
	}
}
/** Secondary Call Function **/

function performAction($controller,$action,$queryString = null,$render = 0) {

	$controllerName = ucfirst($controller).'Controller';
	$dispatch = new $controllerName($controller,$action);
	$dispatch->render = $render;
	return call_user_func_array(array($dispatch,$action),$queryString);
}

/** Routing **/

function routeURL($url) {
	global $routing;

	foreach ( $routing as $pattern => $result ) {
		if ( preg_match( $pattern, $url ) ) {
			return preg_replace( $pattern, $result, $url );
		}
	}

	return ($url);
}

/** Main Call Function **/

function callHook() {
	global $url;
	global $default;

	$queryString = array();

	if (!isset($url)) {
		$controller = $default['controller'];
		$action = $default['action'];
	} else {
		$url = routeURL($url);
		$urlArray = array();
		$urlArray = explode("/",$url);
		$controller = $urlArray[0];
		array_shift($urlArray);
		if (isset($urlArray[0])) {
			$action = $urlArray[0];
			array_shift($urlArray);
		} else {
			$action = 'index'; // Default Action
		}
		$queryString = $urlArray;
	}

	$controllerName = ucfirst($controller).'Controller';

	$dispatch = new $controllerName($controller,$action);

	if ((int)method_exists($controllerName, $action)) {
		call_user_func_array(array($dispatch,"beforeAction"),$queryString);
		call_user_func_array(array($dispatch,$action),$queryString);
		call_user_func_array(array($dispatch,"afterAction"),$queryString);
	} else {
		/* Error Generation Code Here */
	}
}
function __autoload($className) {
	if (strstr ($className, 'Sirprize')){
		require_once (ROOT . DS . 'lib'. DS . $className .'.php');
	} else if (strstr ($className, 'Zend')) {
		$className = str_replace('_', DS, $className);
		require_once (ROOT . DS . 'vendor'. DS .'zend-framework'. DS .'library'. DS . $className .'.php');
	} else if (file_exists(ROOT . DS . 'libr' . DS . strtolower($className) . '.class.php')) {
		require_once(ROOT . DS . 'lib' . DS . strtolower($className) . '.class.php');
	} else if (file_exists(ROOT . DS . 'app' . DS . 'controllers' . DS . strtolower($className) . '.php')) {
		require_once(ROOT . DS . 'app' . DS . 'controllers' . DS . strtolower($className) . '.php');
	} else if (file_exists(ROOT . DS . 'app' . DS . 'models' . DS . strtolower($className) . '.php')) {
		require_once(ROOT . DS . 'app' . DS . 'models' . DS . strtolower($className) . '.php');
	} else {
		echo $className;
	}
}

define('APPLICATION_PATH', ROOT);

// Build array of 3 different paths
$paths = array(
		APPLICATION_PATH,
		APPLICATION_PATH . '\app',
		APPLICATION_PATH . '\vendor\zend-framework\library',
		get_include_path()
);


/*
 Result of array above...
Array
(
		[0] => E:\Web Server\xampp\htdocs\test
		[1] => E:\Web Server\xampp\htdocs\test\com
		[2] => .;C:\php5\pear
)
*/

// Set include path from array above
// http://us3.php.net/manual/en/function.set-include-path.php
set_include_path(implode(PATH_SEPARATOR, $paths));

$logWriter = new Zend_Log_Writer_Stream($base.'/_logs/'.gmdate('Ymd').'.log');
$log = new Zend_Log($logWriter);

setReporting();
callHook();