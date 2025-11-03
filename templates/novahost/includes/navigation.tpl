{assign var="current" value=$activeNav|default:$filename|default:''}
<nav class="main-nav" aria-label="Primary">
  <a href="{$WEB_ROOT}/index.php" class="brand">
    <span class="brand-highlight">{$companyname|default:'NovaHost'|escape}</span>
  </a>
  <ul id="primary-nav">
    <li{if $current eq 'home' || $current eq 'index'} class="active"{/if}>
      <a href="{$WEB_ROOT}/index.php">{$LANG.home|default:'Home'}</a>
    </li>
    <li{if $current eq 'shared-hosting'} class="active"{/if}>
      <a href="{$WEB_ROOT}/shared-hosting.php">Shared Hosting</a>
    </li>
    <li{if $current eq 'vps-hosting'} class="active"{/if}>
      <a href="{$WEB_ROOT}/vps-hosting.php">Cloud VPS</a>
    </li>
    <li{if $current eq 'dedicated-server'} class="active"{/if}>
      <a href="{$WEB_ROOT}/dedicated-server.php">Dedicated</a>
    </li>
    <li{if $current eq 'store'} class="active"{/if}>
      <a href="{$WEB_ROOT}/store.php">Store</a>
    </li>
    <li{if $inShoppingCart || $current eq 'cart'} class="active"{/if}>
      <a href="{$WEB_ROOT}/cart.php">Order</a>
    </li>
    <li class="cta">
      <a href="{$WEB_ROOT}/clientarea.php">Client Area</a>
    </li>
  </ul>
</nav>
