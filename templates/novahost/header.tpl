<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="{$charset|default:'utf-8'}" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>{if isset($pagetitle)}{$pagetitle|escape} | {$companyname|escape}{else}{$companyname|escape}{/if}</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="{$WEB_ROOT}/templates/{$template}/assets/css/novahost.css?v=1"
    />
  </head>
  <body class="{$bodyclass|default:'page-default'}">
    {if isset($skipto)}
      <a class="skip-to" href="#{$skipto|escape}">{$LANG.skipto|default:'Skip to content'}</a>
    {/if}
