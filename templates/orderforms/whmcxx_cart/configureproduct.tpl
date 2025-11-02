{include file="orderforms/whmcxx_cart/header.tpl"}
<section class="order-grid">
    <div class="order-grid__catalog">
        <header class="order-section__header">
            <span class="order-label">Configure</span>
            <h1>Tailor your environment.</h1>
            <p>Fine tune resources, add-ons, and automation. Changes update pricing instantly so you always know what you pay.</p>
        </header>
        <form method="post" action="cart.php" class="config-form">
            <input type="hidden" name="a" value="confproduct">
            <input type="hidden" name="i" value="{$i}">
            {foreach from=$configurableoptions item=option}
                <fieldset class="config-block">
                    <legend>{$option.optionname}</legend>
                    {if $option.optiontype eq 3 || $option.optiontype eq 4}
                        <div class="config-grid">
                            {foreach from=$option.options item=choice}
                                <label class="config-choice">
                                    <input type="radio" name="configoption[{$option.id}]" value="{$choice.id}" {if $choice.selected}checked{/if}>
                                    <span class="config-choice__title">{$choice.name}</span>
                                    <span class="config-choice__price">{$choice.recurring}</span>
                                </label>
                            {/foreach}
                        </div>
                    {elseif $option.optiontype eq 1}
                        <select class="form-control" name="configoption[{$option.id}]">
                            {foreach from=$option.options item=choice}
                                <option value="{$choice.id}" {if $choice.selected}selected{/if}>{$choice.name} - {$choice.recurring}</option>
                            {/foreach}
                        </select>
                    {elseif $option.optiontype eq 2}
                        <div class="config-grid">
                            {foreach from=$option.options item=choice}
                                <label class="config-choice config-choice--checkbox">
                                    <input type="checkbox" name="configoption[{$option.id}][{$choice.id}]" value="1" {if $choice.selected}checked{/if}>
                                    <span class="config-choice__title">{$choice.name}</span>
                                    <span class="config-choice__price">{$choice.recurring}</span>
                                </label>
                            {/foreach}
                        </div>
                    {/if}
                    {if $option.description}
                        <p class="config-description">{$option.description}</p>
                    {/if}
                </fieldset>
            {/foreach}
            {if $addons}
                <fieldset class="config-block">
                    <legend>Add-ons</legend>
                    <div class="config-grid">
                        {foreach from=$addons item=addon}
                            <label class="config-choice config-choice--checkbox">
                                <input type="checkbox" name="addons[{$addon.id}]" value="1" {if $addon.checked}checked{/if}>
                                <span class="config-choice__title">{$addon.name}</span>
                                <span class="config-choice__price">{$addon.pricingtext}</span>
                            </label>
                        {/foreach}
                    </div>
                </fieldset>
            {/if}
            {if $customfields}
                <fieldset class="config-block">
                    <legend>Project Details</legend>
                    {foreach from=$customfields item=customfield}
                        <label class="form-label" for="customfield{$customfield.id}">{$customfield.name}{if $customfield.required}*{/if}</label>
                        {$customfield.input}
                    {/foreach}
                </fieldset>
            {/if}
            <div class="config-actions">
                <a class="button button--ghost" href="cart.php?gid={$gid}">Back</a>
                <button class="button" type="submit" name="updateconfproduct">Continue</button>
            </div>
        </form>
    </div>
    <aside class="order-grid__summary">
        {include file="orderforms/whmcxx_cart/summary.tpl"}
    </aside>
</section>
{include file="orderforms/whmcxx_cart/footer.tpl"}
