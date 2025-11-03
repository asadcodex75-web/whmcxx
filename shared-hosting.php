<?php

use WHMCS\ClientArea;

define('CLIENTAREA', true);
require __DIR__ . '/init.php';

$ca = new ClientArea();
$ca->setPageTitle('Shared Hosting');
$ca->setTemplate('shared-hosting');
$ca->addToBreadCrumb('index.php', 'Home');
$ca->addToBreadCrumb('shared-hosting.php', 'Shared Hosting');
$ca->assign('bodyclass', 'page-shared');
$ca->assign('pagetitle', 'Shared Hosting');
$ca->initPage();

$ca->output();
