{assign var="filename" value="cart"}
{assign var="inShoppingCart" value=true}
{include file="header.tpl" bodyclass="page-order" pagetitle="{$pagetitle|default:$LANG.orderform|default:'Order'}" skipto="order-content"}
<header class="hero hero-order">
  <div class="container hero-content">
    {include file="includes/navigation.tpl"}
    <div class="badge">{$LANG.orderFormTitle|default:'Streamlined Order Flow'}</div>
    <div class="hero-content">
      <h1>{if $displayTitle}{$displayTitle}{else}{$LANG.orderFormHeading|default:'Configure your service'}{/if}</h1>
      <p>{$LANG.orderFormTagline|default:'Guide customers through product selection, configuration, and checkout with a cohesive NovaHost experience.'}</p>
    </div>
  </div>
</header>

<main id="order-content" class="section order-wrapper">
  <div class="container">
    {include file="orderforms/{$carttpl}/common.tpl"}
  </div>
</main>
{include file="footer.tpl"}
