<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>{if isset($pagetitle)}{$pagetitle} - {/if}{$companyname}</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Urbanist:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/assets/css/style.css">
        {if isset($headoutput)}{$headoutput}{/if}
    </head>
    <body class="theme-whmcxx">
        <header class="site-header">
            <div class="container">
                <div class="brand">
                    <a class="brand__link" href="{$WEB_ROOT}/index.php">
                        <span class="brand__symbol">&#10024;</span>
                        <span class="brand__name">{$companyname|default:'WHMCXX Hosting'}</span>
                    </a>
                </div>
                <nav class="nav" aria-label="Primary">
                    <button class="nav__toggle" aria-expanded="false" aria-controls="primary-menu">
                        <span class="nav__bar"></span>
                        <span class="nav__bar"></span>
                        <span class="nav__bar"></span>
                        <span class="sr-only">Toggle navigation</span>
                    </button>
                    <ul id="primary-menu" class="nav__menu">
                        <li><a href="{$WEB_ROOT}/index.php">Home</a></li>
                        <li><a href="{$WEB_ROOT}/shared-hosting.php">Shared Hosting</a></li>
                        <li><a href="{$WEB_ROOT}/vps-hosting.php">VPS Hosting</a></li>
                        <li><a href="{$WEB_ROOT}/dedicated-servers.php">Dedicated Servers</a></li>
                        <li><a href="{$WEB_ROOT}/clientarea.php">Client Area</a></li>
                        <li><a class="button button--sm" href="{$WEB_ROOT}/cart.php?a=confproduct">Order Now</a></li>
                    </ul>
                </nav>
                <div class="auth-links">
                    {if $loggedin}
                        <a class="auth-link" href="{$WEB_ROOT}/clientarea.php">Dashboard</a>
                        <a class="auth-link" href="{$WEB_ROOT}/logout.php">Logout</a>
                    {else}
                        <a class="auth-link" href="{$WEB_ROOT}/login.php">Login</a>
                        <a class="button button--ghost" href="{$WEB_ROOT}/register.php">Register</a>
                    {/if}
                </div>
            </div>
        </header>
        <main class="site-main">
