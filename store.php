<?php

use WHMCS\ClientArea;

define('CLIENTAREA', true);
require __DIR__ . '/init.php';

$ca = new ClientArea();
$ca->setPageTitle('Template Store');
$ca->setTemplate('store');
$ca->addToBreadCrumb('index.php', 'Home');
$ca->addToBreadCrumb('store.php', 'Store');
$ca->assign('bodyclass', 'page-store');
$ca->assign('pagetitle', 'Template Store');
$ca->initPage();

$ca->output();
