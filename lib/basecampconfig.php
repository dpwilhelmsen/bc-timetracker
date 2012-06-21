<?php
$config = array(
		'baseUri' => 'https://xxx.basecamphq.com',
		'username' => 'user',
		'password' => 'pass'
);

$base = dirname(dirname(__FILE__));
/*
require_once $base.'/vendor/doctrine2-common/lib/Doctrine/Common/ClassLoader.php';
$loader = new \Doctrine\Common\ClassLoader('Zend', realpath($base.'/vendor/zend-framework/library'));
$loader->setNamespaceSeparator('_');
$loader->register();


$loader = new \Doctrine\Common\ClassLoader('Doctrine\Common', realpath($base.'/vendor/doctrine2-common/lib'));
$loader->register();

$loader = new \Doctrine\Common\ClassLoader('Sirprize', realpath($base.'/lib'));
$loader->register();

$loader = new \Doctrine\Common\ClassLoader('app', realpath($base));
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
$log = new Zend_Log($logWriter);*/