{assign var="activeNav" value="home"}
{include file="header.tpl" bodyclass="page-home" pagetitle="NovaHost | Professional WHMCS Hosting Theme" skipto="main-content"}
<main id="main-content" class="main-content">
  <section class="hero hero-home">
    <div class="container">
      <div class="hero-grid">
        <div>
          <div class="badge">NovaHost Template Suite</div>
          <h1>Launch a polished hosting presence in minutes</h1>
          <p>
            NovaHost pairs a clean white canvas with confident blue highlights so
            your products, pricing, and support message stay front and centre.
            Every template is tuned for WHMCS to keep the experience fast and
            dependable.
          </p>
          <div class="hero-actions">
            <a class="button primary" href="{$WEB_ROOT}/store.php">Browse Template Store</a>
            <a class="button secondary" href="{$WEB_ROOT}/cart.php">Preview Order Flow</a>
          </div>
        </div>
        <div class="hero-card">
          <h3>Everything you need</h3>
          <ul>
            <li>Responsive layouts crafted for WHMCS 8+</li>
            <li>Integrated order form and client area styling</li>
            <li>Dedicated pages for Shared, VPS, and Dedicated plans</li>
            <li>Consistent navigation, footer, and conversion cues</li>
          </ul>
        </div>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>A cohesive system across every touchpoint</h2>
        <p>
          Combine ready-made landing, store, and checkout layouts to craft a
          complete WHMCS journey without mismatched styles or custom code bloat.
        </p>
      </div>
      <div class="cards-grid">
        <article class="card">
          <h3>Purpose-built Pages</h3>
          <p>
            Focus messaging with dedicated layouts for shared hosting, VPS, and
            dedicated servers while promoting upgrades and add-ons.
          </p>
          <a class="button tertiary" href="{$WEB_ROOT}/shared-hosting.php">See Hosting Layout</a>
        </article>
        <article class="card">
          <h3>Order Flow Included</h3>
          <p>
            Streamlined forms and plan selectors guide customers through WHMCS
            checkout with clarity.
          </p>
          <a class="button tertiary" href="{$WEB_ROOT}/cart.php">Tour the Order Form</a>
        </article>
        <article class="card">
          <h3>Auth &amp; Client Experience</h3>
          <p>
            Login and register templates mirror the storefront style so the
            experience stays cohesive end-to-end.
          </p>
          <a class="button tertiary" href="{$WEB_ROOT}/clientarea.php">Preview Client Area</a>
        </article>
      </div>
    </div>
  </section>

  <section class="section metrics-section">
    <div class="container">
      <div class="metrics">
        <div class="metric">
          <span class="metric-value">6</span>
          <span class="metric-label">Curated page templates</span>
        </div>
        <div class="metric">
          <span class="metric-value">3x</span>
          <span class="metric-label">Faster launch vs. building bespoke</span>
        </div>
        <div class="metric">
          <span class="metric-value">100%</span>
          <span class="metric-label">Responsive &amp; accessible</span>
        </div>
        <div class="metric">
          <span class="metric-value">24/7</span>
          <span class="metric-label">Ready for production workloads</span>
        </div>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>Designed for modern hosting brands</h2>
        <p>
          Showcase your product story with structured content sections that mix
          compelling copy, proof points, and technical specs while staying easy to
          customise.
        </p>
      </div>
      <div class="features">
        <div class="feature">
          <h3>Reusable UI Patterns</h3>
          <p>
            Cards, feature grids, pricing tables, testimonials, and tabs keep your
            content balanced and easy to remix for campaigns.
          </p>
        </div>
        <div class="feature">
          <h3>Conversion Optimised</h3>
          <p>
            Strategic CTAs and product highlights guide users from awareness to
            purchase without friction.
          </p>
        </div>
        <div class="feature">
          <h3>Performance Focused</h3>
          <p>
            Lightweight, semantic markup ensures the template loads quickly and
            plays nicely with WHMCS hooks.
          </p>
        </div>
        <div class="feature">
          <h3>Easy Theming</h3>
          <p>
            Swap colours, fonts, and accent gradients via CSS variables to align
            NovaHost with your brand identity.
          </p>
        </div>
      </div>
    </div>
  </section>

  <section class="section testimonials">
    <div class="container">
      <div class="section-header">
        <h2>Teams love launching with NovaHost</h2>
        <p>
          Purpose-built modules let you plug NovaHost into WHMCS without
          duct-taping together multiple themes.
        </p>
      </div>
      <div class="testimonials-grid">
        <article class="testimonial">
          <p>
            “We relaunched on NovaHost and the site finally looks as premium as
            our infrastructure. The rollout was painless.”
          </p>
          <div class="meta">
            <span class="name">Taylor R.</span>
            <span class="role">Growth Lead, HyperNode</span>
          </div>
        </article>
        <article class="testimonial">
          <p>
            “Clients make it from landing page to checkout faster than ever. The
            product grids and order flow just make sense.”
          </p>
          <div class="meta">
            <span class="name">Arjun M.</span>
            <span class="role">Founder, FluxForge</span>
          </div>
        </article>
        <article class="testimonial">
          <p>
            “The documentation and clean structure made customising the brand
            colours straightforward. Our support team loves it.”
          </p>
          <div class="meta">
            <span class="name">Elena P.</span>
            <span class="role">CX Director, OrbitScale</span>
          </div>
        </article>
      </div>
    </div>
  </section>
</main>
{include file="footer.tpl"}
