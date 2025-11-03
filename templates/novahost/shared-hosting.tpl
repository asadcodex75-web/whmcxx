{assign var="activeNav" value="shared-hosting"}
{include file="header.tpl" bodyclass="page-shared" pagetitle="NovaHost | Premium Shared Hosting" skipto="main-content"}
<main id="main-content" class="main-content">
  <section class="hero hero-sub">
    <div class="container">
      <div class="hero-grid">
        <div>
          <div class="badge">Crafted for WHMCS</div>
          <h1>Lightning-Fast Shared Hosting for Growing Projects</h1>
          <p>
            Deliver effortless onboarding with a clean, professional template that
            mirrors the reliability of your infrastructure. NovaHost keeps copy,
            pricing, and CTAs organised so visitors can choose confidently.
          </p>
          <div class="hero-actions">
            <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=1">Launch Order Wizard</a>
            <a class="button secondary" href="{$WEB_ROOT}/vps-hosting.php">Explore Cloud VPS</a>
          </div>
        </div>
        <div class="hero-card">
          <h3>Why NovaHost?</h3>
          <ul>
            <li>Purpose-built for WHMCS 8+</li>
            <li>Order form blocks styled to match</li>
            <li>Responsive &amp; accessible layouts</li>
            <li>Easy colour and typography tweaks</li>
          </ul>
        </div>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>Shared Hosting Plans</h2>
        <p>
          Built for agencies, freelancers, and digital brands who expect reliable
          provisioning through WHMCS. Built-in cross sell banners and feature
          cards keep customers exploring.
        </p>
      </div>
      <div class="pricing-grid">
        <article class="plan">
          <h3>Launch</h3>
          <p class="price">$4.99<span>/mo</span></p>
          <ul>
            <li>10 GB NVMe Storage</li>
            <li>Unlimited Bandwidth</li>
            <li>cPanel + Softaculous</li>
            <li>Free SSL Certificates</li>
          </ul>
          <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=1">Order Launch</a>
        </article>
        <article class="plan popular">
          <div class="tag">Most Popular</div>
          <h3>Growth</h3>
          <p class="price">$9.99<span>/mo</span></p>
          <ul>
            <li>50 GB NVMe Storage</li>
            <li>Unlimited Emails &amp; DBs</li>
            <li>Edge Caching Layer</li>
            <li>Daily Backups</li>
          </ul>
          <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=2">Order Growth</a>
        </article>
        <article class="plan">
          <h3>Scale</h3>
          <p class="price">$19.99<span>/mo</span></p>
          <ul>
            <li>150 GB NVMe Storage</li>
            <li>Priority 24/7 Support</li>
            <li>Staging Environments</li>
            <li>Global CDN Included</li>
          </ul>
          <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=3">Order Scale</a>
        </article>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>Why teams choose NovaHost</h2>
      </div>
      <div class="features">
        <div class="feature">
          <h3>Seamless WHMCS Hooks</h3>
          <p>
            Inject custom upsell banners, service badges, and marketing callouts
            directly into the WHMCS cart templates with clean, well-documented
            markup.
          </p>
        </div>
        <div class="feature">
          <h3>Conversion Optimised</h3>
          <p>
            Strategically placed CTA buttons and card layouts guide your visitors
            through the order process with minimal friction.
          </p>
        </div>
        <div class="feature">
          <h3>Beautifully Clear</h3>
          <p>
            Crisp whites with blue accents keep the interface bright and readable
            on any device or lighting condition.
          </p>
        </div>
        <div class="feature">
          <h3>Easy Theming</h3>
          <p>
            Centralised CSS variables mean you can swap palettes and typography in
            seconds to match your brand.
          </p>
        </div>
      </div>
    </div>
  </section>
</main>
{include file="footer.tpl"}
