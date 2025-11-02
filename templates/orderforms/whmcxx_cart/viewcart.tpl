{include file="orderforms/whmcxx_cart/header.tpl"}
<section class="order-grid">
    <div class="order-grid__catalog">
        <header class="order-section__header">
            <span class="order-label">Review</span>
            <h1>Almost there — confirm your build.</h1>
            <p>Review your configuration, apply promo codes, and get ready to checkout securely with our trusted payment partners.</p>
        </header>
        {if $errormessage}
            <div class="order-alert order-alert--error">{$errormessage}</div>
        {/if}
        <div class="cart-items">
            {foreach $products as $product}
                <article class="cart-item">
                    <div class="cart-item__content">
                        <h2>{$product.productinfo.name}</h2>
                        <p>{$product.productinfo.description}</p>
                        {if $product.configoptions}
                            <ul class="cart-item__options">
                                {foreach $product.configoptions as $option}
                                    <li><strong>{$option.name}:</strong> {$option.value}</li>
                                {/foreach}
                            </ul>
                        {/if}
                        {if $product.addons}
                            <ul class="cart-item__options">
                                {foreach $product.addons as $addon}
                                    <li><strong>Add-on:</strong> {$addon.name}</li>
                                {/foreach}
                            </ul>
                        {/if}
                    </div>
                    <div class="cart-item__meta">
                        <span class="cart-item__price">{$product.pricingtext}</span>
                        <a class="button button--ghost button--sm" href="cart.php?a=remove&r={$product.cartindex}">Remove</a>
                    </div>
                </article>
            {foreachelse}
                <p class="order-empty">Your cart is empty. <a href="cart.php">Browse products</a>.</p>
            {/foreach}
        </div>
        <form method="post" action="cart.php?a=view" class="promo-form">
            <label class="form-label" for="promocode">Promo code</label>
            <div class="promo-form__controls">
                <input id="promocode" class="form-control" type="text" name="promocode" value="{$promocode}">
                <button class="button" type="submit">Apply</button>
            </div>
        </form>
        <div class="cart-actions">
            <a class="button button--ghost" href="cart.php">Add more services</a>
            <a class="button" href="cart.php?a=checkout">Secure Checkout</a>
        </div>
    </div>
    <aside class="order-grid__summary">
        {include file="orderforms/whmcxx_cart/summary.tpl"}
    </aside>
</section>
{include file="orderforms/whmcxx_cart/footer.tpl"}
