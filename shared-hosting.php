<?php

define('CLIENTAREA', true);

require __DIR__ . '/init.php';

$clientAreaClass = class_exists('\\WHMCS\\ClientArea') ? '\\WHMCS\\ClientArea' : (class_exists('ClientArea') ? 'ClientArea' : null);

if ($clientAreaClass === null) {
    exit('ClientArea bootstrap failed.');
}

$ca = new $clientAreaClass();

if (method_exists($ca, 'setPageTitle')) {
    $ca->setPageTitle('Shared Hosting');
}

if (method_exists($ca, 'setTemplate')) {
    $ca->setTemplate('shared-hosting');
} elseif (method_exists($ca, 'assign')) {
    $ca->assign('templatefile', 'shared-hosting');
}

if (method_exists($ca, 'addToBreadCrumb')) {
    $ca->addToBreadCrumb('index.php', 'Home');
    $ca->addToBreadCrumb('shared-hosting.php', 'Shared Hosting');
}

if (method_exists($ca, 'assign')) {
    $ca->assign('bodyclass', 'page-shared');
    $ca->assign('pagetitle', 'Shared Hosting');
    $ca->assign('sharedPlanPids', [
        'launch' => getenv('NOVAHOST_SHARED_LAUNCH_PID') ?: null,
        'growth' => getenv('NOVAHOST_SHARED_GROWTH_PID') ?: null,
        'scale' => getenv('NOVAHOST_SHARED_SCALE_PID') ?: null,
    ]);
    $ca->assign('sharedGroupGid', getenv('NOVAHOST_SHARED_GROUP_GID') ?: null);
}

if (method_exists($ca, 'initPage')) {
    $ca->initPage();
}

if (method_exists($ca, 'output')) {
    $ca->output();
}
