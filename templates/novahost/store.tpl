{assign var="filename" value="store"}
{include file="header.tpl" bodyclass="page-store" pagetitle="NovaHost Store | WHMCS Template Catalog" skipto="main-content"}
<header class="hero hero-store">
  <div class="container hero-content">
    {include file="includes/navigation.tpl"}
    <div class="badge">Template Marketplace</div>
    <div class="split">
      <div>
        <h1>Shop the complete NovaHost template collection</h1>
        <p>
          Combine product-specific landing pages, upsell-ready store layouts, and a
          polished checkout to deliver a unified WHMCS experience.
        </p>
        <div class="hero-actions">
          <a class="button primary" href="{$WEB_ROOT}/cart.php">Preview Cart Journey</a>
          <a class="button secondary" href="#catalog">View Catalog</a>
        </div>
      </div>
      <div class="hero-card">
        <h3>Catalog highlights</h3>
        <ul>
          <li>Plan cards optimised for conversions</li>
          <li>Upsell-ready addon layouts</li>
          <li>Reusable badges, tabs, and CTAs</li>
          <li>Support for product bundles &amp; promos</li>
        </ul>
      </div>
    </div>
  </div>
</header>

<main id="main-content">
  <section class="section" id="catalog">
    <div class="container">
      <div class="tabs">
        <a href="#shared" class="active">Shared Hosting</a>
        <a href="#vps">Cloud VPS</a>
        <a href="#dedicated">Dedicated</a>
        <a href="#addons">Add-ons</a>
      </div>
      <div id="shared" class="cards-grid">
        <article class="card">
          <div class="tag">Best Seller</div>
          <h3>Launch Pad</h3>
          <p class="price">$4.99<span>/mo</span></p>
          <ul>
            <li>Modern hero + pricing showcase</li>
            <li>Feature comparison blocks</li>
            <li>Optimised for starter plans</li>
            <li>Cross-sell sections included</li>
          </ul>
          <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=101">Configure Launch Pad</a>
        </article>
        <article class="card">
          <div class="tag">Agency Ready</div>
          <h3>Studio Scale</h3>
          <p class="price">$9.99<span>/mo</span></p>
          <ul>
            <li>Portfolio-friendly hosting layout</li>
            <li>Testimonials + proof modules</li>
            <li>Integrated upgrade callouts</li>
            <li>Multi-language ready</li>
          </ul>
          <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=102">Configure Studio Scale</a>
        </article>
        <article class="card">
          <div class="tag">Growth</div>
          <h3>Pro Elastic</h3>
          <p class="price">$14.99<span>/mo</span></p>
          <ul>
            <li>Advanced feature checklists</li>
            <li>Plan comparison table</li>
            <li>Pre-styled FAQ accordion</li>
            <li>WHMCS order steps styled</li>
          </ul>
          <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=103">Configure Pro Elastic</a>
        </article>
      </div>
    </div>
  </section>

  <section class="section" id="vps">
    <div class="container">
      <div class="section-header">
        <h2>Managed Cloud VPS templates</h2>
        <p>
          Present scalable compute plans with performance stats, region selectors, and
          WHMCS-friendly plan pickers.
        </p>
      </div>
      <div class="store-grid">
        <article class="store-card">
          <header>
            <h3>Edge Compute</h3>
            <span class="label">NVMe Nodes</span>
          </header>
          <p>
            Spotlight compute tiers with animated metrics, uptime badges, and usage
            recommendations for SaaS workloads.
          </p>
          <ul>
            <li>Server spec grid &amp; toggles</li>
            <li>Bandwidth + snapshot callouts</li>
            <li>One-click order buttons</li>
          </ul>
          <div class="actions">
            <a class="button secondary" href="{$WEB_ROOT}/vps-hosting.php">View Demo</a>
            <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=111">Start Config</a>
          </div>
        </article>
        <article class="store-card">
          <header>
            <h3>Dev Launchpad</h3>
            <span class="label">Team favourite</span>
          </header>
          <p>
            A developer-first layout featuring feature tabs, marketplace integrations,
            and team management callouts.
          </p>
          <ul>
            <li>Feature tabs for dev stacks</li>
            <li>Usage scenario highlights</li>
            <li>Slack &amp; API integration slots</li>
          </ul>
          <div class="actions">
            <a class="button secondary" href="{$WEB_ROOT}/vps-hosting.php">View Demo</a>
            <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=112">Start Config</a>
          </div>
        </article>
        <article class="store-card">
          <header>
            <h3>Global Fleet</h3>
            <span class="label">Multi-region</span>
          </header>
          <p>
            Highlight geographic reach with region cards, latency charts, and customer
            proof modules.
          </p>
          <ul>
            <li>Region picker + map background</li>
            <li>Latency &amp; SLA comparison rows</li>
            <li>Client stories + logos</li>
          </ul>
          <div class="actions">
            <a class="button secondary" href="{$WEB_ROOT}/vps-hosting.php">View Demo</a>
            <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=113">Start Config</a>
          </div>
        </article>
      </div>
    </div>
  </section>

  <section class="section" id="dedicated">
    <div class="container">
      <div class="section-header">
        <h2>Dedicated server experiences</h2>
        <p>
          Showcase enterprise hardware with technical spec sheets, compliance badges,
          and managed services upsells.
        </p>
      </div>
      <div class="table-wrapper">
        <table class="table">
          <thead>
            <tr>
              <th>Template</th>
              <th>Focus</th>
              <th>Highlights</th>
              <th>Starting</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Quantum Core</td>
              <td>High frequency workloads</td>
              <td>Spec badges, compliance strip, managed service CTA</td>
              <td>$145/mo</td>
            </tr>
            <tr>
              <td>Atlas Control</td>
              <td>Enterprise hybrid cloud</td>
              <td>Data residency callouts, service overlays, SLA timers</td>
              <td>$210/mo</td>
            </tr>
            <tr>
              <td>Neon Forge</td>
              <td>GPU + AI deployments</td>
              <td>GPU matrix, workload highlights, addon carousel</td>
              <td>$395/mo</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </section>

  <section class="section" id="addons">
    <div class="container">
      <div class="section-header">
        <h2>Add-ons &amp; Enhancements</h2>
        <p>Bundle ready-made upsells into your WHMCS order flow.</p>
      </div>
      <div class="addons-grid">
        <article class="addon">
          <h3>NovaShield WAF</h3>
          <p>Global edge filtering, managed rulesets, and 1-click incident reports.</p>
          <span class="price">$19<span>/mo</span></span>
          <a class="button secondary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=201">Add to Cart</a>
        </article>
        <article class="addon">
          <h3>Pulse Analytics</h3>
          <p>Service health dashboards, SLA exports, and account manager summaries.</p>
          <span class="price">$29<span>/mo</span></span>
          <a class="button secondary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=202">Add to Cart</a>
        </article>
        <article class="addon">
          <h3>Atlas Backup</h3>
          <p>Policy-based backups with immutability, cross-region replication, and alerts.</p>
          <span class="price">$39<span>/mo</span></span>
          <a class="button secondary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=203">Add to Cart</a>
        </article>
        <article class="addon">
          <h3>Launch Concierge</h3>
          <p>White-glove onboarding, migration audits, and campaign-ready assets.</p>
          <span class="price">$499<span>/one-time</span></span>
          <a class="button secondary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=204">Add to Cart</a>
        </article>
      </div>
    </div>
  </section>
</main>
{include file="footer.tpl"}
