{include file="$template/includes/header.tpl" pagetitle="Shared Hosting"}
<section class="page-hero">
    <div class="container page-hero__content">
        <div>
            <span class="label">Shared Hosting</span>
            <h1>Managed hosting crafted for growing brands.</h1>
            <p>Get instant staging environments, performance caching, and daily backups. Our shared platform is tuned for WordPress, Magento, and more.</p>
            <a class="button" href="{$WEB_ROOT}/cart.php?a=add&pid=1">Choose your plan</a>
        </div>
        <div class="page-hero__badge">
            <p>Average TTFB</p>
            <strong>180ms</strong>
            <span>Measured across 15 regions</span>
        </div>
    </div>
</section>
<section class="section">
    <div class="container pricing-grid">
        {foreach from=$sharedplans item=plan}
            <article class="plan-card {if $plan.is_featured}plan-card--featured{/if}">
                <span class="plan-card__label">{if $plan.is_featured}Most Popular{else}Starter{foreachelse}Plan{/if}</span>
                <h2>{$plan.name}</h2>
                <p>{$plan.tagline}</p>
                <div class="price">
                    <span class="price__value">{$plan.price}</span>
                    <span class="price__cycle">{$plan.billingcycle}</span>
                </div>
                <ul class="plan-features">
                    {foreach from=$plan.features item=feature}
                        <li>{$feature}</li>
                    {/foreach}
                </ul>
                <a class="button" href="{$WEB_ROOT}/cart.php?a=add&pid={$plan.pid}">Launch</a>
            </article>
        {foreachelse}
            <article class="plan-card plan-card--featured">
                <span class="plan-card__label">Recommended</span>
                <h2>Launch</h2>
                <p>Perfect for new brands and agencies needing managed performance.</p>
                <div class="price">
                    <span class="price__value">$9.99</span>
                    <span class="price__cycle">per month</span>
                </div>
                <ul class="plan-features">
                    <li>40 GB NVMe storage</li>
                    <li>Unmetered bandwidth</li>
                    <li>Free migrations</li>
                    <li>Daily offsite backups</li>
                </ul>
                <a class="button" href="{$WEB_ROOT}/cart.php?a=add&pid=1">Launch</a>
            </article>
        {/foreach}
    </div>
</section>
<section class="section section--accent">
    <div class="container feature-rows">
        <div class="feature-row">
            <div>
                <h3>Smart caching layers</h3>
                <p>Layered Redis, Brotli compression, and edge caching deliver a consistently fast experience even during traffic surges.</p>
            </div>
            <div class="feature-row__media">
                <span class="pill">+320% faster</span>
                <p>Performance uplift when switching from generic shared hosting.</p>
            </div>
        </div>
        <div class="feature-row">
            <div>
                <h3>Collaborative workflows</h3>
                <p>Push changes from staging to production, invite developers, and track deployments with audit trails.</p>
            </div>
            <div class="feature-row__media">
                <span class="pill pill--dark">Unlimited</span>
                <p>User seats with SSO and granular permissions.</p>
            </div>
        </div>
    </div>
</section>
{include file="$template/includes/footer.tpl"}
