<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="{$charset|default:'utf-8'}" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>{if isset($pagetitle)}{$pagetitle|escape} | {$companyname|escape}{else}{$companyname|escape}{/if}</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="{$WEB_ROOT}/templates/{$template}/assets/css/novahost.css?v=2"
    />
    {$headoutput}
  </head>
  <body class="{$bodyclass|default:'page-default'}">
    {$headeroutput}
    {if isset($skipto)}
      <a class="skip-to" href="#{$skipto|escape}">{$LANG.skipto|default:'Skip to content'}</a>
    {/if}
    <div class="site-shell">
      <header class="site-header">
        <div class="container">
          {include file="includes/navigation.tpl"}
        </div>
      </header>
