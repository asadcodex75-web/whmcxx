<nav class="main-nav">
  <a href="{$WEB_ROOT}/index.php" class="brand">{$companyname|default:'NovaHost'|escape}</a>
  <ul id="primary-nav">
    <li{if $filename eq 'index' || !$filename} class="active"{/if}><a href="{$WEB_ROOT}/index.php">{$LANG.home|default:'Home'}</a></li>
    <li{if $filename eq 'shared-hosting'} class="active"{/if}><a href="{$WEB_ROOT}/shared-hosting.php">Shared Hosting</a></li>
    <li{if $filename eq 'vps-hosting'} class="active"{/if}><a href="{$WEB_ROOT}/vps-hosting.php">Cloud VPS</a></li>
    <li{if $filename eq 'dedicated-server'} class="active"{/if}><a href="{$WEB_ROOT}/dedicated-server.php">Dedicated</a></li>
    <li{if $filename eq 'store'} class="active"{/if}><a href="{$WEB_ROOT}/store.php">Store</a></li>
    <li{if $inShoppingCart} class="active"{/if}><a href="{$WEB_ROOT}/cart.php">Order</a></li>
    <li class="cta"><a href="{$WEB_ROOT}/clientarea.php">Client Area</a></li>
  </ul>
</nav>
