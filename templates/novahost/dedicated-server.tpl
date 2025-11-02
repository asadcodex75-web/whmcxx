{assign var="filename" value="dedicated-server"}
{include file="header.tpl" bodyclass="page-dedicated" pagetitle="NovaHost | Dedicated Servers" skipto="main-content"}
<header class="hero hero-product">
  <div class="container hero-content">
    {include file="includes/navigation.tpl"}
    <div class="badge">Bare Metal. Maximum Control.</div>
    <div class="split">
      <div>
        <h1>Dedicated Servers Tuned for Mission Critical Workloads</h1>
        <p>
          Showcase high-impact specs and deliver transparent pricing tables that map
          straight into your WHMCS configurable options.
        </p>
        <div class="hero-actions">
          <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;gid=3">Build Your Server</a>
          <a class="button secondary" href="{$WEB_ROOT}/shared-hosting.php">Need Shared?</a>
        </div>
      </div>
      <div class="hero-card">
        <h3>Featured Data Centers</h3>
        <ul>
          <li>Dallas, TX – Tier IV facility</li>
          <li>Frankfurt, DE – ISO 27001 certified</li>
          <li>Singapore, SG – Ultra-low latency</li>
          <li>London, UK – Carbon neutral campus</li>
        </ul>
      </div>
    </div>
  </div>
</header>

<main id="main-content">
  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>Dedicated Server Catalog</h2>
        <p>
          Each server card includes optional highlights and CTA states optimised for
          the WHMCS "Configure Product" step. Swap imagery for icons or plan badges as
          needed.
        </p>
      </div>
      <div class="cards-grid">
        <article class="card">
          <h3>Fusion R5</h3>
          <p class="price">$145<span>/mo</span></p>
          <ul>
            <li>AMD Ryzen™ 9 7950X</li>
            <li>64 GB DDR5 ECC RAM</li>
            <li>2 × 1 TB NVMe Gen4</li>
            <li>10 TB Premium Bandwidth</li>
          </ul>
          <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=20">Configure Fusion</a>
        </article>
        <article class="card">
          <h3>Titan XE</h3>
          <p class="price">$210<span>/mo</span></p>
          <ul>
            <li>Intel Xeon® Silver 4410Y</li>
            <li>128 GB DDR5 ECC RAM</li>
            <li>2 × 1.92 TB NVMe + 4 × 4 TB HDD</li>
            <li>20 TB Premium Bandwidth</li>
          </ul>
          <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=21">Configure Titan</a>
        </article>
        <article class="card">
          <h3>Quantum DL</h3>
          <p class="price">$395<span>/mo</span></p>
          <ul>
            <li>Dual Intel Xeon® Gold 5416S</li>
            <li>256 GB DDR5 ECC RAM</li>
            <li>4 × 3.84 TB NVMe</li>
            <li>40 TB Premium Bandwidth</li>
          </ul>
          <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=22">Configure Quantum</a>
        </article>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>Included Premium Features</h2>
      </div>
      <div class="features">
        <div class="feature">
          <h3>Hybrid DDoS Shield</h3>
          <p>
            Layer 3/4 always-on scrubbing backed by on-demand Layer 7 filtering keeps
            production workloads online.
          </p>
        </div>
        <div class="feature">
          <h3>Remote Management</h3>
          <p>
            IPMI, KVM-over-IP, and full power controls included without additional
            licensing fees.
          </p>
        </div>
        <div class="feature">
          <h3>24/7 NOC Support</h3>
          <p>
            Dedicated Slack, phone, and ticket queues ensure your team reaches us the
            moment you need assistance.
          </p>
        </div>
        <div class="feature">
          <h3>Flexible Upgrades</h3>
          <p>
            Hot swap drives, burst bandwidth pools, and GPU add-ons are pre-configured
            within the template.
          </p>
        </div>
      </div>
    </div>
  </section>
</main>
{include file="footer.tpl"}
