{assign var="activeNav" value="dedicated-server"}
{include file="header.tpl" bodyclass="page-dedicated" pagetitle="NovaHost | Dedicated Servers" skipto="main-content"}
<main id="main-content" class="main-content">
  <section class="hero hero-sub">
    <div class="container">
      <div class="hero-grid">
        <div>
          <div class="badge">Bare Metal Performance</div>
          <h1>Power demanding workloads with dedicated servers</h1>
          <p>
            Present enterprise-ready hardware, compliance badges, and service-level
            guarantees inside a refined layout that builds trust from the first
            scroll.
          </p>
          <div class="hero-actions">
            <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=7">Request a Server</a>
            <a class="button secondary" href="{$WEB_ROOT}/store.php">View All Templates</a>
          </div>
        </div>
        <div class="hero-card">
          <h3>Enterprise Specs</h3>
          <ul>
            <li>Intel &amp; AMD options with up to 128 GB RAM</li>
            <li>NVMe storage arrays &amp; hardware RAID</li>
            <li>Redundant networking with 99.99% uptime</li>
            <li>24/7 NOC and managed support</li>
          </ul>
        </div>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>Compare dedicated plans</h2>
        <p>
          Use the responsive comparison table to showcase specs and highlight
          recommended options without overwhelming prospects.
        </p>
      </div>
      <div class="table-wrapper">
        <table class="comparison-table">
          <thead>
            <tr>
              <th>Plan</th>
              <th>CPU</th>
              <th>Memory</th>
              <th>Storage</th>
              <th>Bandwidth</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Essential</td>
              <td>Ryzen 5 5600X</td>
              <td>32 GB DDR4</td>
              <td>2 × 960 GB NVMe</td>
              <td>20 TB</td>
              <td><a class="button tertiary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=7">Order</a></td>
            </tr>
            <tr class="highlight">
              <td>Professional</td>
              <td>Intel Xeon Silver</td>
              <td>64 GB DDR4</td>
              <td>4 × 1.92 TB NVMe</td>
              <td>30 TB</td>
              <td><a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=8">Order</a></td>
            </tr>
            <tr>
              <td>Enterprise</td>
              <td>Dual AMD EPYC</td>
              <td>128 GB DDR4</td>
              <td>8 × 1.92 TB NVMe</td>
              <td>40 TB</td>
              <td><a class="button tertiary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=9">Order</a></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>Trusted by serious workloads</h2>
      </div>
      <div class="feature-pairs">
        <div class="feature-pair">
          <h3>Security first</h3>
          <p>
            Highlight compliance frameworks, DDoS mitigation, and private network
            isolation using ready-to-style list blocks.
          </p>
        </div>
        <div class="feature-pair">
          <h3>Managed onboarding</h3>
          <p>
            Outline migration assistance, rack-and-stack services, and on-demand
            consultations with calm, confident visuals.
          </p>
        </div>
        <div class="feature-pair">
          <h3>Global reach</h3>
          <p>
            Promote regional availability with map callouts and data centre stats
            that align perfectly with the colour palette.
          </p>
        </div>
        <div class="feature-pair">
          <h3>Reliable billing</h3>
          <p>
            Reinforce trust with transparent pricing tables and WHMCS invoicing
            that inherits the same refined styling.
          </p>
        </div>
      </div>
    </div>
  </section>
</main>
{include file="footer.tpl"}
