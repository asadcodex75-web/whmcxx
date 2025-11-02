{assign var="filename" value="index"}
{include file="header.tpl" bodyclass="page-home" pagetitle="NovaHost | Next-Gen WHMCS Hosting Template" skipto="main-content"}
<header class="hero hero-home">
  <div class="container hero-content">
    {include file="includes/navigation.tpl"}
    <div class="badge">NovaHost Template Suite</div>
    <div class="split">
      <div>
        <h1>Launch a luminous WHMCS experience in minutes</h1>
        <p>
          NovaHost delivers an immersive dark interface with neon highlights,
          conversion-ready pricing layouts, and flexible blocks for every step of
          the WHMCS journey—from discovery to checkout.
        </p>
        <div class="hero-actions">
          <a class="button primary" href="{$WEB_ROOT}/store.php">Browse Template Store</a>
          <a class="button secondary" href="{$WEB_ROOT}/cart.php">Preview Order Flow</a>
        </div>
      </div>
      <div class="hero-card">
        <h3>Everything you need</h3>
        <ul>
          <li>Responsive layouts tailored for WHMCS 8+</li>
          <li>Integrated order form and client area styling</li>
          <li>Granular product pages for Hosting, VPS, and Dedicated</li>
          <li>Consistent navigation, footer, and conversion cues</li>
        </ul>
      </div>
    </div>
  </div>
</header>

<main id="main-content">
  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>A cohesive system across every touchpoint</h2>
        <p>
          Pair the futuristic NovaHost aesthetic with structured content blocks
          that plug straight into WHMCS. Assemble full journeys with landing pages,
          store listings, and checkout without hacking together mismatched themes.
        </p>
      </div>
      <div class="cards-grid">
        <article class="card">
          <h3>Purpose-built Pages</h3>
          <p>
            Dedicated layouts for shared hosting, VPS, and dedicated servers keep
            messaging laser-focused while promoting upgrades and add-ons.
          </p>
          <a class="button secondary" href="{$WEB_ROOT}/shared-hosting.php">See Hosting Layout</a>
        </article>
        <article class="card">
          <h3>Order Flow Included</h3>
          <p>
            Streamlined forms, comparison tables, and plan selectors give customers a
            seamless path to purchase inside WHMCS.
          </p>
          <a class="button secondary" href="{$WEB_ROOT}/cart.php">Tour the Order Form</a>
        </article>
        <article class="card">
          <h3>Auth &amp; Client Experience</h3>
          <p>
            Login and register templates match the aesthetic and keep your client
            area cohesive from first visit to long-term retention.
          </p>
          <a class="button secondary" href="{$WEB_ROOT}/clientarea.php">Preview Client Area</a>
        </article>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="metrics">
        <div class="metric">
          <span class="metric-value">6</span>
          <span class="metric-label">Curated page templates</span>
        </div>
        <div class="metric">
          <span class="metric-value">3x</span>
          <span class="metric-label">Faster setup vs. building bespoke</span>
        </div>
        <div class="metric">
          <span class="metric-value">100%</span>
          <span class="metric-label">Responsive &amp; accessible</span>
        </div>
        <div class="metric">
          <span class="metric-value">∞</span>
          <span class="metric-label">Brand customization possibilities</span>
        </div>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>Designed for modern hosting brands</h2>
        <p>
          Showcase your product story with structured content sections that combine
          compelling copy, proof points, and technical specs without sacrificing
          aesthetics.
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
          <h3>Optimised for Conversions</h3>
          <p>
            Strategic CTAs and product highlights guide users from awareness to
            purchase without losing momentum.
          </p>
        </div>
        <div class="feature">
          <h3>Performance Minded</h3>
          <p>
            Lightweight, semantic markup ensures the template feels fast and ready
            for integration with WHMCS hooks.
          </p>
        </div>
        <div class="feature">
          <h3>Simple Customisation</h3>
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
            “The NovaHost template suite cut our rebrand timeline in half. Every
            page—from landing to checkout—felt cohesive out of the box.”
          </p>
          <div class="meta">
            <span class="name">Taylor R.</span>
            <span class="role">Growth Lead, HyperNode</span>
          </div>
        </article>
        <article class="testimonial">
          <p>
            “We’ve never had a WHMCS site convert this well. The product grids and
            order flow guide users through complex choices effortlessly.”
          </p>
          <div class="meta">
            <span class="name">Arjun M.</span>
            <span class="role">Founder, FluxForge</span>
          </div>
        </article>
        <article class="testimonial">
          <p>
            “The attention to detail is incredible. It made our client area feel as
            premium as our actual infrastructure.”
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
