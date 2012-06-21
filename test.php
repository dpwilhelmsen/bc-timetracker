<?php

/**
 * Basecamp API Wrapper for PHP 5.3+ 
 *
 * LICENSE
 *
 * This source file is subject to the MIT license that is bundled
 * with this package in the file LICENSE.txt
 *
 * @category   Sirprize
 * @package    Basecamp
 * @subpackage Try
 * @copyright  Copyright (c) 2010, Christian Hoegl, Switzerland (http://sirprize.me)
 * @license    MIT License
 */

define('BASECAMP_EXAMPLE_PROJECT_ID', 'xxxxxx');
define('BASECAMP_EXAMPLE_PROJECT_TARGET_ID', 'xxxxxx'); // to demonstrate project copying
define('BASECAMP_EXAMPLE_USER_ID', 'xxxxxx');
define('BASECAMP_EXAMPLE_MILESTONE_ID', 'xxxxxx');
define('BASECAMP_EXAMPLE_TODOLIST_ID', 'xxxxxx');
define('BASECAMP_EXAMPLE_TODOLIST_TEMPLATE_ID', 'xxxxxx');
define('BASECAMP_EXAMPLE_TODOLISTITEM_ID', 'xxxxxx');
define('BASECAMP_EXAMPLE_COMMENT_ID', 'xxxxxx');
define('BASECAMP_EXAMPLE_TIMEENTRY_ID', 'xxxxxx');

$config = array(
	'baseUri' => 'https://xxx.basecamphq.com',
	'username' => 'user',
	'password' => 'pass'
);

$base = dirname(__FILE__);

require_once $base.'/vendor/doctrine2-common/lib/Doctrine/Common/ClassLoader.php';
$loader = new \Doctrine\Common\ClassLoader('Zend', realpath($base.'/vendor/zend-framework/library'));
$loader->setNamespaceSeparator('_');
$loader->register();


$loader = new \Doctrine\Common\ClassLoader('Doctrine\Common', realpath($base.'/vendor/doctrine2-common/lib'));
$loader->register();

$loader = new \Doctrine\Common\ClassLoader('Sirprize', realpath($base.'/lib'));
$loader->register();


set_include_path(
	implode(
		PATH_SEPARATOR,
		array(
    		realpath($base.'/vendor/zend-framework/library'),
		)
	)
);

date_default_timezone_set('UTC');


$logWriter = new Zend_Log_Writer_Stream($base.'/_logs/'.gmdate('Ymd').'.log');
$log = new Zend_Log($logWriter);


$service = new \Sirprize\Basecamp\Service($config);
$projects = $service->getProjectsInstance()->startAll();
//var_dump($projects);
foreach($projects as $project)
{
	print $project->getName().' - '.$project->getId()."\n";
}
?>
