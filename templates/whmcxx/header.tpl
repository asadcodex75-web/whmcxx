<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{if isset($pagetitle)}{$pagetitle} - {/if}WHMCXX Hosting</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{$WEB_ROOT}/templates/whmcxx/css/custom.css">
    {foreach from=$headoutput item=ho}{$ho}{/foreach}
</head>
<body class="theme-light">
    <header class="site-header">
        <div class="container nav-container">
            <a href="{$WEB_ROOT}/index.php" class="brand">
                <span class="brand-icon">⚡</span>
                <span class="brand-text">WHMCXX</span>
            </a>
            <nav class="main-nav">
                <a href="{$WEB_ROOT}/index.php#hosting" class="nav-link">Shared Hosting</a>
                <a href="{$WEB_ROOT}/index.php#vps" class="nav-link">Cloud VPS</a>
                <a href="{$WEB_ROOT}/index.php#dedicated" class="nav-link">Dedicated Servers</a>
                <a href="{$WEB_ROOT}/index.php#features" class="nav-link">Features</a>
                <a href="{$WEB_ROOT}/index.php#support" class="nav-link">Support</a>
            </nav>
            <div class="nav-actions">
                <a href="{$WEB_ROOT}/clientarea.php" class="btn btn-text">Client Area</a>
                <a href="{$WEB_ROOT}/cart.php" class="btn btn-primary">Order Now</a>
            </div>
            <button class="nav-toggle" aria-label="Open navigation" onclick="toggleNav()">
                <span></span>
                <span></span>
                <span></span>
            </button>
        </div>
    </header>
    <main class="site-main">
