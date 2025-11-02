{include file="orderforms/whmcxx_cart/header.tpl"}
<section class="order-grid">
    <div class="order-grid__catalog">
        <header class="order-section__header">
            <span class="order-label">Products</span>
            <h1>Select the perfect launchpad.</h1>
            <p>Every plan includes edge caching, proactive security, and instant scaling. Choose a category to explore curated configurations.</p>
        </header>
        <div class="category-tabs">
            {foreach from=$productgroups item=group}
                <a class="category-tab{if $gid eq $group.gid} category-tab--active{/if}" href="cart.php?gid={$group.gid}">
                    <span>{$group.name}</span>
                    <small>{$group.tagline|default:'Flexible resources for modern workloads.'}</small>
                </a>
            {/foreach}
        </div>
        <div class="product-cards">
            {foreach from=$products item=product}
                <article class="product-card">
                    {if $product.isFeatured}
                        <span class="product-card__badge">Popular</span>
                    {/if}
                    <h2>{$product.name}</h2>
                    <p>{$product.tagLine|default:$product.description}</p>
                    <div class="product-card__meta">
                        <span class="product-card__price">{$product.pricing.minprice.price}</span>
                        <span class="product-card__cycle">{$product.pricing.minprice.cycleText}</span>
                    </div>
                    <ul class="product-card__features">
                        {foreach from=$product.features item=feature}
                            <li>{$feature}</li>
                        {foreachelse}
                            {foreach from=$product.featuresdesc item=desc}
                                <li>{$desc}</li>
                            {/foreach}
                        {/foreach}
                    </ul>
                    <a class="button button--full" href="cart.php?a=add&{$product.permalink}">Launch</a>
                </article>
            {foreachelse}
                <p class="order-empty">No products available in this group.</p>
            {/foreach}
        </div>
    </div>
    <aside class="order-grid__summary">
        {include file="orderforms/whmcxx_cart/summary.tpl"}
    </aside>
</section>
{include file="orderforms/whmcxx_cart/footer.tpl"}
