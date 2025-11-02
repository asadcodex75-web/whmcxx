{include file="header.tpl"}
<section class="hero">
    <div class="container hero-grid">
        <div class="hero-copy">
            <h1>Premium hosting infrastructure crafted for scaling ideas.</h1>
            <p>Deploy websites, apps, and services globally with resilient hosting, lightning-fast VPS, and custom dedicated servers.</p>
            <div class="hero-actions">
                <a href="{$WEB_ROOT}/cart.php" class="btn btn-primary">Launch your project</a>
                <a href="{$WEB_ROOT}/index.php?page=products" class="btn btn-ghost">Explore plans</a>
            </div>
            <div class="hero-meta">
                <span class="meta-pill">99.99% uptime SLA</span>
                <span class="meta-pill">24/7 expert support</span>
                <span class="meta-pill">Free migrations</span>
            </div>
        </div>
        <div class="hero-visual">
            <div class="glass-card">
                <span class="tag">Live server health</span>
                <div class="metric">
                    <span>Network latency</span>
                    <strong>7.4 ms</strong>
                </div>
                <div class="metric">
                    <span>Active containers</span>
                    <strong>248</strong>
                </div>
                <div class="metric">
                    <span>Auto backups</span>
                    <strong>Enabled</strong>
                </div>
            </div>
            <div class="orb orb-primary"></div>
            <div class="orb orb-accent"></div>
        </div>
    </div>
</section>
<section class="section" id="hosting">
    <div class="container">
        <div class="section-header">
            <span class="eyebrow">Shared Hosting</span>
            <h2>Secure hosting crafted for modern creators</h2>
            <p>Managed updates, rocket-fast caching, and intuitive control panels keep you building.</p>
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
                    <a href="{$product.cartLink}" class="btn btn-primary">Deploy {$product.name}</a>
                </article>
            {foreachelse}
                {include file="includes/plan-placeholder.tpl" title="shared"}
            {/foreach}
        </div>
    </div>
</section>
<section class="section split" id="vps">
    <div class="container split-grid">
        <div class="split-copy">
            <span class="eyebrow">Managed VPS</span>
            <h2>Dedicated resources, instant scaling.</h2>
            <p>NVMe storage, premium bandwidth, and proactive monitoring keep mission-critical workloads online.</p>
            <a href="{$WEB_ROOT}/index.php?page=products#vps" class="btn btn-primary">See VPS plans</a>
        </div>
        <div class="split-plans">
            {foreach from=$products.vps item=product}
                <article class="plan-mini">
                    <h3>{$product.name}</h3>
                    <div class="plan-meta">
                        {if $product.cpu}<span>{$product.cpu} vCPU</span>{/if}
                        {if $product.memory}<span>{$product.memory} RAM</span>{/if}
                        {if $product.storage}<span>{$product.storage} NVMe</span>{/if}
                    </div>
                    <div class="plan-price">
                        <span class="amount">{$product.pricing.amount}</span>
                        <span class="term">{$product.pricing.term}</span>
                    </div>
                    <a href="{$product.cartLink}" class="btn btn-ghost">Configure</a>
                </article>
            {foreachelse}
                {include file="includes/plan-placeholder.tpl" title="vps"}
            {/foreach}
        </div>
    </div>
</section>
<section class="section" id="dedicated">
    <div class="container">
        <div class="section-header">
            <span class="eyebrow">Dedicated Servers</span>
            <h2>Enterprise-grade power on your terms</h2>
            <p>Tailored bare-metal deployments with full root access, DDoS protection, and smart routing.</p>
        </div>
        <div class="table-wrapper">
            <table class="server-table">
                <thead>
                    <tr>
                        <th>Model</th>
                        <th>CPU</th>
                        <th>Memory</th>
                        <th>Storage</th>
                        <th>Bandwidth</th>
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
                            <td><a href="{$product.cartLink}" class="btn btn-primary btn-sm">Order now</a></td>
                        </tr>
                    {foreachelse}
                        <tr class="empty">
                            <td colspan="6">Your dedicated lineup will populate automatically once products are assigned.</td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
    </div>
</section>
<section class="section muted">
    <div class="container testimonials">
        <article class="testimonial">
            <p>“UniqueHost effortlessly migrated our entire agency portfolio in a weekend. Their proactive monitoring helped us sleep again.”</p>
            <span>— Alex, Creative Director @ Atlas Studio</span>
        </article>
        <article class="testimonial">
            <p>“The dedicated fleet is absurdly fast. We pushed millions of requests on launch day without a hiccup.”</p>
            <span>— Priya, CTO @ Apex Gaming</span>
        </article>
        <article class="testimonial">
            <p>“A support team that speaks developer. They optimized our stack and trimmed our monthly bill.”</p>
            <span>— Jordan, Founder @ DevGuild</span>
        </article>
    </div>
</section>
{include file="footer.tpl"}
