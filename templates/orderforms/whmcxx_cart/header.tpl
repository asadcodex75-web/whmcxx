<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>{$pagetitle} - {$companyname}</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@400;500;600;700&display=swap" rel="stylesheet">
        <link href="{$WEB_ROOT}/templates/orderforms/whmcxx_cart/style.css" rel="stylesheet">
        {$headoutput}
    </head>
    <body class="order order--nebula">
        <header class="order-header">
            <div class="order-header__inner">
                <a class="order-brand" href="{$WEB_ROOT}/index.php">
                    <span class="order-brand__symbol">&#10024;</span>
                    <span class="order-brand__name">{$companyname|default:'WHMCXX Hosting'}</span>
                </a>
                <nav class="order-nav">
                    <a href="{$WEB_ROOT}/shared-hosting.php">Shared</a>
                    <a href="{$WEB_ROOT}/vps-hosting.php">VPS</a>
                    <a href="{$WEB_ROOT}/dedicated-servers.php">Servers</a>
                    <a href="{$WEB_ROOT}/clientarea.php">Client Area</a>
                </nav>
                <div class="order-steps">
                    <span class="order-step{if $step eq 'cart'} order-step--active{/if}">Select</span>
                    <span class="order-step{if $step eq 'configure'} order-step--active{/if}">Configure</span>
                    <span class="order-step{if $step eq 'checkout'} order-step--active{/if}">Checkout</span>
                </div>
            </div>
        </header>
        <main class="order-main">
