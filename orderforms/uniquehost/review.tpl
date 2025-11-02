{include file="../../templates/uniquehost/header.tpl"}
<link rel="stylesheet" href="{$BASE_PATH}/orderforms/uniquehost/style.css?v={$WEB_ROOT|md5}">
<div class="order-container">
    <div class="progress">{$LANG.orderFormStepReview}</div>
    <div class="order-header">
        <h1>{$LANG.orderFormReview}</h1>
        <p>Confirm your configuration, choose billing preferences, and finalize your order.</p>
    </div>
    <div class="summary-card">
        <h2>{$LANG.ordersummary}</h2>
        <ul class="summary-list">
            {foreach from=$products item=product}
                <li>
                    <strong>{$product.productinfo.name}</strong><br>
                    <span>{$product.pricingtext}</span>
                </li>
            {/foreach}
        </ul>
        <div class="summary-total">
            <span>{$LANG.ordersubtotal}</span>
            <strong>{$subtotal}</strong>
        </div>
        {if $taxrate}
            <div class="summary-total">
                <span>{$taxname}</span>
                <strong>{$tax}</strong>
            </div>
        {/if}
        <div class="summary-total">
            <span>{$LANG.totaldueToday}</span>
            <strong>{$total}</strong>
        </div>
    </div>
    <form method="post" action="cart.php?a=checkout" class="form-grid" style="margin-top:3rem;">
        {if !$loggedin}
            <div>
                <label>{$LANG.contactinfo}</label>
                {include file="$template/includes/register-fields.tpl"}
            </div>
        {/if}
        <div>
            <label>{$LANG.paymentmethod}</label>
            <select name="paymentmethod">
                {foreach from=$gateways item=gateway}
                    <option value="{$gateway.sysname}" {if $gateway.sysname eq $selectedgateway}selected{/if}>{$gateway.name}</option>
                {/foreach}
            </select>
        </div>
        {if $customfields}
            {foreach from=$customfields item=field}
                <div>
                    <label for="customfield{$field.id}">{$field.name}</label>
                    {$field.input}
                </div>
            {/foreach}
        {/if}
        <div>
            <label class="checkbox">
                <input type="checkbox" name="accepttos" value="1" required> {$LANG.ordertos}
            </label>
        </div>
        <button type="submit" class="btn btn-primary" style="justify-self:flex-start;">{$LANG.completeorder}</button>
    </form>
</div>
{include file="../../templates/uniquehost/footer.tpl"}
