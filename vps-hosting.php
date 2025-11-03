<?php

use WHMCS\ClientArea;

define('CLIENTAREA', true);
require __DIR__ . '/init.php';

$ca = new ClientArea();
$ca->setPageTitle('Cloud VPS');
$ca->setTemplate('vps-hosting');
$ca->addToBreadCrumb('index.php', 'Home');
$ca->addToBreadCrumb('vps-hosting.php', 'Cloud VPS');
$ca->assign('bodyclass', 'page-vps');
$ca->assign('pagetitle', 'Cloud VPS');
$ca->initPage();

$ca->output();
