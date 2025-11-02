{assign var="filename" value="shared-hosting"}
{include file="header.tpl" bodyclass="page-shared" pagetitle="NovaHost | Premium Web Hosting" skipto="main-content"}
<header class="hero hero-product">
  <div class="container hero-content">
    {include file="includes/navigation.tpl"}
    <div class="badge">Crafted for WHMCS</div>
    <div class="split">
      <div>
        <h1>Lightning-Fast Web Hosting for Ambitious Projects</h1>
        <p>
          Deliver seamless experiences for your clients with a template that feels
          bespoke. The NovaHost theme pairs a polished UI with conversion-focused
          sections optimised for WHMCS order flows.
        </p>
        <div class="hero-actions">
          <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=1">Launch Order Wizard</a>
          <a class="button secondary" href="{$WEB_ROOT}/vps-hosting.php">Explore Cloud VPS</a>
        </div>
      </div>
      <div class="hero-card">
        <h3>Why NovaHost?</h3>
        <ul>
          <li>Ultra-optimised for WHMCS 8+</li>
          <li>Built-in order form blocks</li>
          <li>Responsive &amp; accessible UI</li>
          <li>Custom accent palette &amp; gradients</li>
        </ul>
      </div>
    </div>
  </div>
</header>

<main id="main-content">
  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>Shared Hosting Plans</h2>
        <p>
          Perfect for agencies, freelancers, and digital brands needing effortless
          provisioning through WHMCS. Built-in cross sell banners and feature cards
          keep your clients exploring.
        </p>
      </div>
      <div class="cards-grid">
        <article class="card">
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
        <article class="card">
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
        <article class="card">
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
          <h3>Dark-Mode Native</h3>
          <p>
            Designed with eye-comforting gradients and neon accents that feel at
            home in modern dashboards.
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
