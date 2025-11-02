{include file="header.tpl"}
<section class="page-hero">
    <div class="container">
        <h1>Choose the infrastructure that fits your ambitions.</h1>
        <p>From shared hosting to dedicated powerhouses, every plan is tuned for reliability, performance, and transparent pricing.</p>
    </div>
</section>
<section class="section" id="shared">
    <div class="container">
        <div class="section-header compact">
            <span class="eyebrow">Shared Hosting</span>
            <h2>Launch faster with managed hosting</h2>
        </div>
        <div class="plan-grid">
            {foreach from=$products.shared item=product}
                <article class="plan-card">
                    <header>
                        <h3>{$product.name}</h3>
                        <p>{$product.tagline}</p>
                    </header>
                    {if $product.features}
                        <ul class="feature-list">
                            {foreach from=$product.features item=feature}
                                <li>{$feature}</li>
                            {/foreach}
                        </ul>
                    {/if}
                    <div class="plan-price">
                        <span class="currency">{$product.pricing.prefix}</span>
                        <span class="amount">{$product.pricing.amount}</span>
                        <span class="term">{$product.pricing.term}</span>
                    </div>
                    <a href="{$product.cartLink}" class="btn btn-primary">Deploy now</a>
                </article>
            {foreachelse}
                {include file="includes/plan-placeholder.tpl" title="shared"}
            {/foreach}
        </div>
    </div>
</section>
<section class="section muted" id="vps">
    <div class="container">
        <div class="section-header compact">
            <span class="eyebrow">Managed VPS</span>
            <h2>Scale-ready virtual machines</h2>
        </div>
        <div class="plan-grid three">
            {foreach from=$products.vps item=product}
                <article class="plan-card vps">
                    <header>
                        <h3>{$product.name}</h3>
                        <p>{$product.cpu} vCPU • {$product.memory} RAM • {$product.storage} NVMe</p>
                    </header>
                    <ul class="feature-list">
                        {if $product.features}
                            {foreach from=$product.features item=feature}
                                <li>{$feature}</li>
                            {/foreach}
                        {else}
                            <li>Root access &amp; API controls</li>
                            <li>High-availability storage</li>
                            <li>Automated snapshots</li>
                        {/if}
                    </ul>
                    <div class="plan-price">
                        <span class="currency">{$product.pricing.prefix}</span>
                        <span class="amount">{$product.pricing.amount}</span>
                        <span class="term">{$product.pricing.term}</span>
                    </div>
                    <a href="{$product.cartLink}" class="btn btn-ghost">Configure VPS</a>
                </article>
            {foreachelse}
                {include file="includes/plan-placeholder.tpl" title="vps"}
            {/foreach}
        </div>
    </div>
</section>
<section class="section" id="dedicated">
    <div class="container">
        <div class="section-header compact">
            <span class="eyebrow">Dedicated Servers</span>
            <h2>Custom bare-metal engineered for scale</h2>
        </div>
        <div class="table-wrapper">
            <table class="server-table">
                <thead>
                    <tr>
                        <th>Series</th>
                        <th>Processor</th>
                        <th>Memory</th>
                        <th>Storage</th>
                        <th>Traffic</th>
                        <th>Price</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$products.dedicated item=product}
                        <tr>
                            <td>{$product.name}</td>
                            <td>{$product.cpu}</td>
                            <td>{$product.memory}</td>
                            <td>{$product.storage}</td>
                            <td>{$product.bandwidth}</td>
                            <td>{$product.pricing.prefix}{$product.pricing.amount} {$product.pricing.term}</td>
                            <td><a href="{$product.cartLink}" class="btn btn-primary btn-sm">Order</a></td>
                        </tr>
                    {foreachelse}
                        <tr class="empty">
                            <td colspan="7">Assign dedicated products in WHMCS to populate this table automatically.</td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
    </div>
</section>
{include file="footer.tpl"}
