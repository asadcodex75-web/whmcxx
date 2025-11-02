{include file="$template/includes/header.tpl" pagetitle="Dedicated Servers"}
<section class="page-hero">
    <div class="container page-hero__content">
        <div>
            <span class="label">Dedicated Servers</span>
            <h1>Bare metal, fully automated, globally available.</h1>
            <p>Compliance-ready hardware with redundant power, out-of-band management, and optional GPU acceleration.</p>
            <a class="button" href="{$WEB_ROOT}/cart.php?gid=3">Configure hardware</a>
        </div>
        <div class="page-hero__badge">
            <p>Provisioning time</p>
            <strong>&lt; 45 min</strong>
            <span>Average rack-ready deployment</span>
        </div>
    </div>
</section>
<section class="section">
    <div class="container dedicated-grid">
        {foreach from=$dediplans item=server}
            <article class="server-card">
                <header>
                    <h2>{$server.name}</h2>
                    <span class="pill">{$server.category}</span>
                </header>
                <ul class="spec-list">
                    <li><strong>CPU:</strong> {$server.cpu}</li>
                    <li><strong>Memory:</strong> {$server.memory}</li>
                    <li><strong>Storage:</strong> {$server.storage}</li>
                    <li><strong>Bandwidth:</strong> {$server.bandwidth}</li>
                    <li><strong>Location:</strong> {$server.location}</li>
                </ul>
                <div class="server-card__cta">
                    <span class="price__value">{$server.price}</span>
                    <span class="price__cycle">{$server.billingcycle}</span>
                    <a class="button" href="{$WEB_ROOT}/cart.php?a=add&pid={$server.pid}">Deploy</a>
                </div>
            </article>
        {foreachelse}
            <article class="server-card">
                <header>
                    <h2>Edge E-595</h2>
                    <span class="pill">Edge Compute</span>
                </header>
                <ul class="spec-list">
                    <li><strong>CPU:</strong> AMD EPYC 7543P (32 cores)</li>
                    <li><strong>Memory:</strong> 256 GB DDR4 ECC</li>
                    <li><strong>Storage:</strong> 2x 1.92 TB NVMe (RAID 1)</li>
                    <li><strong>Bandwidth:</strong> 20 TB on 10 Gbps uplink</li>
                    <li><strong>Location:</strong> Amsterdam or Dallas</li>
                </ul>
                <div class="server-card__cta">
                    <span class="price__value">$329</span>
                    <span class="price__cycle">per month</span>
                    <a class="button" href="{$WEB_ROOT}/cart.php?a=add&pid=10">Deploy</a>
                </div>
            </article>
            <article class="server-card">
                <header>
                    <h2>AI Render X4</h2>
                    <span class="pill pill--dark">GPU Optimized</span>
                </header>
                <ul class="spec-list">
                    <li><strong>CPU:</strong> Intel Xeon Gold 6348 (28 cores)</li>
                    <li><strong>Memory:</strong> 512 GB DDR4 ECC</li>
                    <li><strong>Storage:</strong> 2x 3.84 TB NVMe + 4x 4 TB SSD</li>
                    <li><strong>Bandwidth:</strong> 30 TB on 20 Gbps uplink</li>
                    <li><strong>Location:</strong> Frankfurt or Singapore</li>
                </ul>
                <div class="server-card__cta">
                    <span class="price__value">$649</span>
                    <span class="price__cycle">per month</span>
                    <a class="button" href="{$WEB_ROOT}/cart.php?a=add&pid=11">Deploy</a>
                </div>
            </article>
        {/foreach}
    </div>
</section>
<section class="section section--accent">
    <div class="container feature-rows">
        <div class="feature-row">
            <div>
                <h3>Global 40 Tbps network</h3>
                <p>Tier 1 carriers with Anycast routing, private backbone, and proactive DDoS mitigation keep latency low everywhere.</p>
            </div>
            <div class="feature-row__media">
                <span class="pill">13 regions</span>
                <p>New deployments across 5 continents.</p>
            </div>
        </div>
        <div class="feature-row">
            <div>
                <h3>Compliance & security</h3>
                <p>ISO 27001, SOC 2 Type II, HIPAA and GDPR ready with hardware encryption and managed firewalls.</p>
            </div>
            <div class="feature-row__media">
                <span class="pill pill--dark">24/7</span>
                <p>Dedicated compliance success engineers.</p>
            </div>
        </div>
    </div>
</section>
{include file="$template/includes/footer.tpl"}
