{assign var="activeNav" value="cart"}
{assign var="inShoppingCart" value=true}
{include file="header.tpl" bodyclass="page-order" pagetitle="{$pagetitle|default:$LANG.orderform|default:'Order'}" skipto="order-content"}
<main id="order-content" class="main-content order-wrapper">
  <section class="hero hero-sub order-hero">
    <div class="container">
      <div class="hero-grid">
        <div>
          <div class="badge">{$LANG.orderFormTitle|default:'Streamlined Order Flow'}</div>
          <h1>{if $displayTitle}{$displayTitle}{else}{$LANG.orderFormHeading|default:'Configure your service'}{/if}</h1>
          <p>
            {$LANG.orderFormTagline|default:'Guide customers through product selection, configuration, and checkout with a cohesive NovaHost experience.'}
          </p>
        </div>
        <div class="hero-card">
          <h3>Need assistance?</h3>
          <p>Our team is ready to help with plan selection and migrations.</p>
          <a class="button tertiary" href="{$WEB_ROOT}/contact.php">Contact Support</a>
        </div>
      </div>
    </div>
  </section>

  <div class="container">
    {include file="orderforms/{$carttpl}/common.tpl"}
  </div>
</main>
{include file="footer.tpl"}
