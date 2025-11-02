{include file="../../whmcxx/header.tpl"}
<section class="order">
    <div class="container">
        <header class="section-header">
            <span class="eyebrow">Order form</span>
            <h1>Build your perfect stack</h1>
            <p>Select a category below to explore hosting, cloud VPS, or dedicated server configurations.</p>
        </header>
        <div class="order-tabs">
            <button class="order-tab active" data-target="hosting">Shared Hosting</button>
            <button class="order-tab" data-target="vps">Managed Cloud VPS</button>
            <button class="order-tab" data-target="dedicated">Dedicated Servers</button>
        </div>
        <div class="order-panels">
            <div class="order-panel active" id="panel-hosting">
                {foreach from=$products key=i item=product}
                    {if $product.gid eq 1}
                        <article class="order-card">
                            <header>
                                <h3>{$product.name}</h3>
                                <span class="price">{$product.pricing.minprice.cycleText}</span>
                            </header>
                            <p>{$product.tagline|default:$product.description|strip_tags|truncate:140}</p>
                            <ul>
                                {foreach from=$product.features item=feature}
                                    <li>{$feature}</li>
                                {/foreach}
                            </ul>
                            <a href="cart.php?a=add&pid={$product.pid}" class="btn btn-primary">Select</a>
                        </article>
                    {/if}
                {/foreach}
            </div>
            <div class="order-panel" id="panel-vps">
                {foreach from=$products key=i item=product}
                    {if $product.gid eq 2}
                        <article class="order-card">
                            <header>
                                <h3>{$product.name}</h3>
                                <span class="price">{$product.pricing.minprice.cycleText}</span>
                            </header>
                            <p>{$product.tagline|default:$product.description|strip_tags|truncate:140}</p>
                            <ul>
                                {foreach from=$product.features item=feature}
                                    <li>{$feature}</li>
                                {/foreach}
                            </ul>
                            <a href="cart.php?a=add&pid={$product.pid}" class="btn btn-primary">Select</a>
                        </article>
                    {/if}
                {/foreach}
            </div>
            <div class="order-panel" id="panel-dedicated">
                {foreach from=$products key=i item=product}
                    {if $product.gid eq 3}
                        <article class="order-card">
                            <header>
                                <h3>{$product.name}</h3>
                                <span class="price">{$product.pricing.minprice.cycleText}</span>
                            </header>
                            <p>{$product.tagline|default:$product.description|strip_tags|truncate:140}</p>
                            <ul>
                                {foreach from=$product.features item=feature}
                                    <li>{$feature}</li>
                                {/foreach}
                            </ul>
                            <a href="cart.php?a=add&pid={$product.pid}" class="btn btn-primary">Select</a>
                        </article>
                    {/if}
                {/foreach}
            </div>
        </div>
    </div>
</section>
{include file="../../whmcxx/footer.tpl"}
