{assign var="lang" value=$LANG}
<div class="order-products">
  <header class="order-products-header">
    <h2>{$productGroup.name|default:$lang.orderFormTitle|default:'Choose Your Plan'|escape}</h2>
    {if $productGroup.tagline}
      <p>{$productGroup.tagline|escape:'htmlall'}</p>
    {elseif $productGroup.description}
      <p>{$productGroup.description|strip_tags|escape:'htmlall'}</p>
    {/if}
  </header>
  <div class="order-products-grid">
    {foreach $products as $product}
      <article class="order-product-card{if $product.isFeatured} featured{/if}">
        <header class="order-product-card-header">
          <h3>{$product.name|escape}</h3>
          {if $product.tagLine}
            <p class="order-product-tagline">{$product.tagLine|escape:'htmlall'}</p>
          {elseif $product.featuresdesc}
            <p class="order-product-tagline">{$product.featuresdesc|escape:'htmlall'}</p>
          {/if}
        </header>
        {if $product.features}
          <ul class="order-product-features">
            {foreach $product.features as $feature}
              <li>{$feature|strip_tags|escape:'htmlall'}</li>
            {/foreach}
          </ul>
        {elseif $product.description}
          <p class="order-product-description">{$product.description|strip_tags|escape:'htmlall'}</p>
        {/if}
        <div class="order-product-footer">
          <div class="order-product-price">
            {assign var="minPrice" value=$product.pricing.minprice}
            {if $product.pricing.type eq 'free'}
              <span class="price">{$lang.orderFormFree|default:'Free'}</span>
            {elseif $product.pricing.type eq 'onetime' && $minPrice}
              <span class="price">{$product.pricing.prefix|default:''}{$minPrice.price|escape}{$product.pricing.suffix|default:''}</span>
              <span class="cycle">{$lang.orderpaymenttermonetime|default:'One Time'}</span>
            {elseif $minPrice}
              <span class="price">{$product.pricing.prefix|default:''}{$minPrice.price|escape}{$product.pricing.suffix|default:''}</span>
              <span class="cycle">{$minPrice.cycletext|default:$minPrice.cyclefriendlyname|escape}</span>
            {else}
              <span class="price">{$lang.orderFormContactUs|default:'Contact us'}</span>
            {/if}
          </div>
          <div class="order-product-action">
            {if $product.pid}
              <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid={$product.pid}">
                {$lang.ordernowbutton|default:'Order Now'}
              </a>
            {else}
              <a class="button primary" href="{$WEB_ROOT}/cart.php?a=view">
                {$lang.orderFormChooseProduct|default:'Choose Product'}
              </a>
            {/if}
          </div>
        </div>
      </article>
    {/foreach}
  </div>
</div>
