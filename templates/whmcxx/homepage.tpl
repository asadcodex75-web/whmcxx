{include file="$template/includes/header.tpl" pagetitle="Welcome"}
<section class="hero">
    <div class="container hero__content">
        <div class="hero__intro">
            <span class="label">Modern Web Infrastructure</span>
            <h1>Scale without compromise.</h1>
            <p>Deploy websites, apps, and services on lightning-fast hardware with observability, security, and automation built-in.</p>
            <div class="hero__actions">
                <a class="button" href="{$WEB_ROOT}/cart.php?a=confproduct">Start Building</a>
                <a class="button button--ghost" href="{$WEB_ROOT}/clientarea.php">Explore Dashboard</a>
            </div>
            <dl class="metrics">
                <div>
                    <dt>2.5x</dt>
                    <dd>Faster average load time than commodity hosting.</dd>
                </div>
                <div>
                    <dt>15+</dt>
                    <dd>Global regions powered by renewable energy.</dd>
                </div>
                <div>
                    <dt>24/7</dt>
                    <dd>Expert support engineers ready to help.</dd>
                </div>
            </dl>
        </div>
        <div class="hero__mockup">
            <div class="mockup-card">
                <h3>Live Server Health</h3>
                <ul>
                    <li><span>CPU</span><span class="trend trend--positive">36%</span></li>
                    <li><span>Memory</span><span class="trend trend--neutral">58%</span></li>
                    <li><span>Network</span><span class="trend trend--positive">2.4Gbps</span></li>
                    <li><span>Latency</span><span class="trend trend--positive">18ms</span></li>
                </ul>
                <button class="button button--ghost">Open Command Center</button>
            </div>
        </div>
    </div>
</section>
<section class="panel panel--primary">
    <div class="container panel__grid">
        <article class="panel-card">
            <h2>Shared Hosting</h2>
            <p>Fully managed, auto-scaled, and secured shared hosting ready for CMS, ecommerce, and marketing sites.</p>
            <a class="link-arrow" href="{$WEB_ROOT}/shared-hosting.php">Discover plans</a>
        </article>
        <article class="panel-card">
            <h2>Cloud VPS</h2>
            <p>SSD-backed KVM virtualization with Kubernetes-ready networking and image snapshots.</p>
            <a class="link-arrow" href="{$WEB_ROOT}/vps-hosting.php">See configurations</a>
        </article>
        <article class="panel-card">
            <h2>Dedicated Servers</h2>
            <p>Bare-metal servers engineered for compliance, gaming, and SaaS workloads with instant provisioning.</p>
            <a class="link-arrow" href="{$WEB_ROOT}/dedicated-servers.php">Compare hardware</a>
        </article>
    </div>
</section>
<section class="section">
    <div class="container">
        <div class="section-heading">
            <span class="label">Built for teams</span>
            <h2>Streamline deployments & billing in one portal.</h2>
            <p>Integrated service monitoring, user access control, and consolidated invoicing keep your projects on track.</p>
        </div>
        <div class="features-grid">
            <article class="feature">
                <h3>Observability graph</h3>
                <p>Real-time CPU, memory, IO, and response metrics with anomaly detection and smart alerts.</p>
            </article>
            <article class="feature">
                <h3>Automated hardening</h3>
                <p>OS patching, malware scanning, and WAF policies applied automatically across environments.</p>
            </article>
            <article class="feature">
                <h3>Collaboration-ready</h3>
                <p>Invite teammates, manage roles, and approve deployments with change-tracking audit trails.</p>
            </article>
            <article class="feature">
                <h3>Predictable billing</h3>
                <p>Transparent monthly invoices, prepaid credits, and usage alerts that align with your budget.</p>
            </article>
        </div>
    </div>
</section>
<section class="section section--accent">
    <div class="container cta">
        <div>
            <h2>Ready to launch something remarkable?</h2>
            <p>Deploy in minutes, migrate for free, and unlock premium tooling crafted for developers.</p>
        </div>
        <a class="button button--light" href="{$WEB_ROOT}/cart.php?a=confproduct">Launch now</a>
    </div>
</section>
{include file="$template/includes/footer.tpl"}
