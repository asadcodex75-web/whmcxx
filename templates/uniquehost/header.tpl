{* UniqueHost Header *}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{if isset($pagetitle) && $pagetitle ne ""}{$pagetitle|escape}{else}{$companyname|escape} - Hosting Solutions{/if}</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{$BASE_PATH}/templates/uniquehost/css/style.css?v={$WEB_ROOT|md5}">
    {foreach from=$headoutput item=output}{$output}{/foreach}
</head>
<body class="{if $loggedin}logged-in{else}guest{/if}">
    <div class="site-wrapper">
        <header class="site-header">
            <div class="container">
                <div class="brand">
                    <a href="{$WEB_ROOT}/index.php" class="logo">
                        <span class="logo-icon">UH</span>
                        <span class="logo-text">UniqueHost</span>
                    </a>
                </div>
                <nav class="nav">
                    <ul>
                        <li><a href="{$WEB_ROOT}/index.php" class="{if $templatefile eq "homepage"}active{/if}">Home</a></li>
                        <li><a href="{$WEB_ROOT}/index.php?page=products" class="{if $templatefile eq "products"}active{/if}">Hosting</a></li>
                        <li><a href="{$WEB_ROOT}/index.php?page=products#vps">VPS</a></li>
                        <li><a href="{$WEB_ROOT}/index.php?page=products#dedicated">Dedicated</a></li>
                        <li><a href="{$WEB_ROOT}/clientarea.php">Client Area</a></li>
                    </ul>
                </nav>
                <div class="nav-actions">
                    {if $loggedin}
                        <a href="{$WEB_ROOT}/logout.php" class="btn btn-ghost">Logout</a>
                        <a href="{$WEB_ROOT}/clientarea.php" class="btn btn-primary">Dashboard</a>
                    {else}
                        <a href="{$WEB_ROOT}/clientarea.php" class="btn btn-ghost">Login</a>
                        <a href="{$WEB_ROOT}/register.php" class="btn btn-primary">Register</a>
                    {/if}
                </div>
                <button class="nav-toggle" aria-label="Toggle navigation">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
            </div>
        </header>
        <main class="site-main">
