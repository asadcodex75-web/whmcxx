<?php

define('CLIENTAREA', true);

require __DIR__ . '/init.php';

$clientAreaClass = class_exists('\\WHMCS\\ClientArea') ? '\\WHMCS\\ClientArea' : (class_exists('ClientArea') ? 'ClientArea' : null);

if ($clientAreaClass === null) {
    exit('ClientArea bootstrap failed.');
}

$ca = new $clientAreaClass();

if (method_exists($ca, 'setPageTitle')) {
    $ca->setPageTitle('Dedicated Servers');
}

if (method_exists($ca, 'setTemplate')) {
    $ca->setTemplate('dedicated-server');
} elseif (method_exists($ca, 'assign')) {
    $ca->assign('templatefile', 'dedicated-server');
}

if (method_exists($ca, 'addToBreadCrumb')) {
    $ca->addToBreadCrumb('index.php', 'Home');
    $ca->addToBreadCrumb('dedicated-server.php', 'Dedicated Servers');
}

if (method_exists($ca, 'assign')) {
    $ca->assign('bodyclass', 'page-dedicated');
    $ca->assign('pagetitle', 'Dedicated Servers');
    $ca->assign('dedicatedPlanPids', [
        'request' => getenv('NOVAHOST_DEDICATED_REQUEST_PID') ?: null,
        'essential' => getenv('NOVAHOST_DEDICATED_ESSENTIAL_PID') ?: null,
        'professional' => getenv('NOVAHOST_DEDICATED_PRO_PID') ?: null,
        'enterprise' => getenv('NOVAHOST_DEDICATED_ENTERPRISE_PID') ?: null,
    ]);
    $ca->assign('dedicatedGroupGid', getenv('NOVAHOST_DEDICATED_GROUP_GID') ?: null);
}

if (method_exists($ca, 'initPage')) {
    $ca->initPage();
}

if (method_exists($ca, 'output')) {
    $ca->output();
}
