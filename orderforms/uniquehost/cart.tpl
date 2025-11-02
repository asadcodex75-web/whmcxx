{include file="../../templates/uniquehost/header.tpl"}
<link rel="stylesheet" href="{$BASE_PATH}/orderforms/uniquehost/style.css?v={$WEB_ROOT|md5}">
<div class="order-container">
    <div class="order-header">
        <span class="tag">{$LANG.orderForm}
        </span>
        <h1>Build your infrastructure.</h1>
        <p>Select a category below to compare plans with transparent pricing and smart defaults.</p>
    </div>
    <nav class="category-nav">
        {foreach from=$categories item=category}
            <a href="{$category.url}" class="{if $cat eq $category.id}active{/if}">{$category.name}</a>
        {/foreach}
    </nav>
    {if $errormessage}
        <div class="notice">{$errormessage}</div>
    {/if}
    {if $showcatdescriptions && $catdescription}
        <div class="notice">{$catdescription}</div>
    {/if}
    <div class="product-grid">
        {foreach from=$products item=product}
            <article class="product-card">
                <header>
                    <h3>{$product.name}</h3>
                    <p>{$product.tagline|default:$product.description|strip_tags}</p>
                </header>
                {if $product.features}
                    <div class="product-meta">
                        {foreach from=$product.features item=feature}
                            <span>{$feature}</span>
                        {/foreach}
                    </div>
                {/if}
                <div class="product-price">
                    <span>{$product.pricing.prefix}</span>
                    <span>{$product.pricing.minprice}</span>
                    <span class="term">{$product.pricing.term}</span>
                </div>
                <a href="{$product.configureUrl}" class="btn btn-primary">{$LANG.ordernowbutton}</a>
            </article>
        {foreachelse}
            <article class="product-card">
                <header>
                    <h3>Attach products</h3>
                    <p>Assign WHMCS products to this group to populate the order form.</p>
                </header>
                <div class="product-meta">
                    <span>Flexible billing cycles</span>
                    <span>Showcase highlights</span>
                    <span>Upsell add-ons</span>
                </div>
                <div class="product-price">
                    <span>$</span>
                    <span>0.00</span>
                    <span class="term">/mo</span>
                </div>
                <a href="{$WEB_ROOT}/admin/configproducts.php" class="btn btn-ghost">Configure group</a>
            </article>
        {/foreach}
    </div>
</div>
{include file="../../templates/uniquehost/footer.tpl"}
