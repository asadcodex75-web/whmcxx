<?php

define('CLIENTAREA', true);

require __DIR__ . '/init.php';

$clientAreaClass = class_exists('\\WHMCS\\ClientArea') ? '\\WHMCS\\ClientArea' : (class_exists('ClientArea') ? 'ClientArea' : null);

if ($clientAreaClass === null) {
    exit('ClientArea bootstrap failed.');
}

$ca = new $clientAreaClass();

if (method_exists($ca, 'setPageTitle')) {
    $ca->setPageTitle('Template Store');
}

if (method_exists($ca, 'setTemplate')) {
    $ca->setTemplate('store');
} elseif (method_exists($ca, 'assign')) {
    $ca->assign('templatefile', 'store');
}

if (method_exists($ca, 'addToBreadCrumb')) {
    $ca->addToBreadCrumb('index.php', 'Home');
    $ca->addToBreadCrumb('store.php', 'Store');
}

if (method_exists($ca, 'assign')) {
    $ca->assign('bodyclass', 'page-store');
    $ca->assign('pagetitle', 'Template Store');
    $ca->assign('sharedPlanPids', [
        'starter' => getenv('NOVAHOST_SHARED_LAUNCH_PID') ?: null,
        'business' => getenv('NOVAHOST_SHARED_GROWTH_PID') ?: null,
        'agency' => getenv('NOVAHOST_SHARED_SCALE_PID') ?: null,
    ]);
    $ca->assign('sharedGroupGid', getenv('NOVAHOST_SHARED_GROUP_GID') ?: null);
    $ca->assign('vpsPlanPids', [
        'build' => getenv('NOVAHOST_VPS_BUILD_PID') ?: null,
        'grow' => getenv('NOVAHOST_VPS_GROW_PID') ?: null,
        'scale' => getenv('NOVAHOST_VPS_SCALE_PID') ?: null,
    ]);
    $ca->assign('vpsGroupGid', getenv('NOVAHOST_VPS_GROUP_GID') ?: null);
    $ca->assign('dedicatedPlanPids', [
        'essential' => getenv('NOVAHOST_DEDICATED_ESSENTIAL_PID') ?: null,
        'professional' => getenv('NOVAHOST_DEDICATED_PRO_PID') ?: null,
        'enterprise' => getenv('NOVAHOST_DEDICATED_ENTERPRISE_PID') ?: null,
    ]);
    $ca->assign('dedicatedGroupGid', getenv('NOVAHOST_DEDICATED_GROUP_GID') ?: null);
    $ca->assign('addonPids', [
        'ssl' => getenv('NOVAHOST_ADDON_SSL_PID') ?: null,
        'backups' => getenv('NOVAHOST_ADDON_BACKUPS_PID') ?: null,
        'security' => getenv('NOVAHOST_ADDON_SECURITY_PID') ?: null,
        'email' => getenv('NOVAHOST_ADDON_EMAIL_PID') ?: null,
    ]);
}

if (method_exists($ca, 'initPage')) {
    $ca->initPage();
}

if (method_exists($ca, 'output')) {
    $ca->output();
}
