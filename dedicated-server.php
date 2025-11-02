<?php

use WHMCS\ClientArea;

define('CLIENTAREA', true);
require __DIR__ . '/init.php';

$ca = new ClientArea();
$ca->setPageTitle('Dedicated Servers');
$ca->setTemplate('dedicated-server');
$ca->addToBreadCrumb('index.php', 'Home');
$ca->addToBreadCrumb('dedicated-server.php', 'Dedicated Servers');
$ca->assign('bodyclass', 'page-dedicated');
$ca->assign('pagetitle', 'Dedicated Servers');
$ca->initPage();

$ca->output();
