<?php

define('CLIENTAREA', true);

require __DIR__ . '/init.php';

$clientAreaClass = class_exists('\\WHMCS\\ClientArea') ? '\\WHMCS\\ClientArea' : (class_exists('ClientArea') ? 'ClientArea' : null);

if ($clientAreaClass === null) {
    exit('ClientArea bootstrap failed.');
}

$ca = new $clientAreaClass();

if (method_exists($ca, 'setPageTitle')) {
    $ca->setPageTitle('Managed VPS Hosting');
}

if (method_exists($ca, 'setTemplate')) {
    $ca->setTemplate('vps-hosting');
} elseif (method_exists($ca, 'assign')) {
    $ca->assign('templatefile', 'vps-hosting');
}

if (method_exists($ca, 'addToBreadCrumb')) {
    $ca->addToBreadCrumb('index.php', 'Home');
    $ca->addToBreadCrumb('vps-hosting.php', 'VPS Hosting');
}

if (method_exists($ca, 'assign')) {
    $ca->assign('bodyclass', 'page-vps');
    $ca->assign('pagetitle', 'VPS Hosting');
    $ca->assign('vpsPlanPids', [
        'build' => getenv('NOVAHOST_VPS_BUILD_PID') ?: null,
        'grow' => getenv('NOVAHOST_VPS_GROW_PID') ?: null,
        'scale' => getenv('NOVAHOST_VPS_SCALE_PID') ?: null,
    ]);
    $ca->assign('vpsGroupGid', getenv('NOVAHOST_VPS_GROUP_GID') ?: null);
}

if (method_exists($ca, 'initPage')) {
    $ca->initPage();
}

if (method_exists($ca, 'output')) {
    $ca->output();
}
