{include file="../../templates/uniquehost/header.tpl"}
<link rel="stylesheet" href="{$BASE_PATH}/orderforms/uniquehost/style.css?v={$WEB_ROOT|md5}">
<div class="order-container">
    <div class="progress">{$LANG.orderFormStepConfiguration}</div>
    <div class="order-header">
        <h1>{$productinfo.name}</h1>
        <p>{$productinfo.description|strip_tags}</p>
    </div>
    <form method="post" action="cart.php?a=confproduct&i={$i}" id="configureproductform" class="form-grid">
        {if $productinfo.allowqty}
            <div>
                <label for="inputQuantity">{$LANG.orderFormQuantity}</label>
                <input type="number" id="inputQuantity" name="qty" value="{$productinfo.qty}" min="1">
            </div>
        {/if}
        {foreach from=$configurableoptions item=option}
            <div>
                <label>{$option.optionname}</label>
                <div class="option-group">
                    {foreach from=$option.suboptions item=suboption}
                        <label class="checkbox">
                            <input type="radio" name="configoption[{$option.id}]" value="{$suboption.id}" {if $suboption.selected}checked{/if}>
                            <span>{$suboption.optionname}</span>
                            <span class="price">{$suboption.recurring}</span>
                        </label>
                    {/foreach}
                </div>
            </div>
        {/foreach}
        {if $customfields}
            {foreach from=$customfields item=field}
                <div>
                    <label for="customfield{$field.id}">{$field.name}</label>
                    {$field.input}
                    {if $field.description}
                        <small>{$field.description}</small>
                    {/if}
                </div>
            {/foreach}
        {/if}
        {if $addons}
            <div>
                <label>{$LANG.orderaddons}</label>
                <div class="option-group">
                    {foreach from=$addons item=addon}
                        <label class="checkbox">
                            <input type="checkbox" name="addons[{$addon.id}]" value="1" {if $addon.selected}checked{/if}>
                            <span>{$addon.name}</span>
                            <span class="price">{$addon.recurring}</span>
                        </label>
                    {/foreach}
                </div>
            </div>
        {/if}
    </form>
    <div class="summary-card" style="margin-top:3rem;">
        <h2>{$LANG.ordersummary}</h2>
        <ul class="summary-list">
            <li>{$productinfo.name} — {$productinfo.pricingtext}</li>
            {foreach from=$configurableoptions item=option}
                {foreach from=$option.suboptions item=suboption}
                    {if $suboption.selected}
                        <li>{$option.optionname}: {$suboption.optionname}</li>
                    {/if}
                {/foreach}
            {/foreach}
            {foreach from=$addons item=addon}
                {if $addon.selected}
                    <li>{$addon.name} — {$addon.recurring}</li>
                {/if}
            {/foreach}
        </ul>
        <div class="summary-total">
            <span>{$LANG.totaldueToday}</span>
            <strong>{$totalToday}</strong>
        </div>
        <div class="summary-actions" style="display:flex;gap:0.75rem;flex-wrap:wrap;">
            <a href="cart.php?a=confproduct&i={$i}&previous=1" class="btn btn-ghost">{$LANG.orderFormBack}</a>
            <button type="submit" form="configureproductform" class="btn btn-primary">{$LANG.continue}</button>
        </div>
    </div>
</div>
{include file="../../templates/uniquehost/footer.tpl"}
