{assign var="filename" value="vps-hosting"}
{include file="header.tpl" bodyclass="page-vps" pagetitle="NovaHost | Managed Cloud VPS" skipto="main-content"}
<header class="hero hero-product">
  <div class="container hero-content">
    {include file="includes/navigation.tpl"}
    <div class="badge">Managed Cloud Infrastructure</div>
    <div class="split">
      <div>
        <h1>Elastic Cloud VPS on a Premium Network</h1>
        <p>
          Combine raw power with intuitive management. Each NovaHost VPS template
          includes detailed plan comparators and instant provisioning states that map
          perfectly to WHMCS product groups.
        </p>
        <div class="hero-actions">
          <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;gid=2">Configure VPS</a>
          <a class="button secondary" href="{$WEB_ROOT}/dedicated-server.php">Need Bare Metal?</a>
        </div>
      </div>
      <div class="hero-card">
        <h3>Included With Every VPS</h3>
        <ul>
          <li>NVMe storage arrays &amp; DDR5 RAM</li>
          <li>Global Anycast network blend</li>
          <li>Proactive monitoring dashboard</li>
          <li>Snapshots &amp; 1-click restores</li>
        </ul>
      </div>
    </div>
  </div>
</header>

<main id="main-content">
  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>Managed VPS Plans</h2>
        <p>
          Drop these responsive cards directly inside your WHMCS pricing table or use
          them standalone as a landing page hero. Subtle gradients highlight your
          most popular plan.
        </p>
      </div>
      <div class="cards-grid">
        <article class="card">
          <h3>VPS Core</h3>
          <p class="price">$29<span>/mo</span></p>
          <ul>
            <li>2 vCPU Cores</li>
            <li>4 GB DDR5 RAM</li>
            <li>80 GB NVMe</li>
            <li>3 TB Transfer</li>
          </ul>
          <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=10">Order VPS Core</a>
        </article>
        <article class="card popular">
          <div class="pill">Popular</div>
          <h3>VPS Momentum</h3>
          <p class="price">$54<span>/mo</span></p>
          <ul>
            <li>4 vCPU Cores</li>
            <li>8 GB DDR5 RAM</li>
            <li>160 GB NVMe</li>
            <li>5 TB Transfer</li>
          </ul>
          <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=11">Order Momentum</a>
        </article>
        <article class="card">
          <h3>VPS Zenith</h3>
          <p class="price">$92<span>/mo</span></p>
          <ul>
            <li>8 vCPU Cores</li>
            <li>16 GB DDR5 RAM</li>
            <li>320 GB NVMe</li>
            <li>10 TB Transfer</li>
          </ul>
          <a class="button primary" href="{$WEB_ROOT}/cart.php?a=add&amp;pid=12">Order Zenith</a>
        </article>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>Compare Resources Instantly</h2>
        <p>
          The responsive comparison table slots into the WHMCS order-summary area,
          making it easy for users to pick the right VPS tier without friction.
        </p>
      </div>
      <table class="table">
        <thead>
          <tr>
            <th>Plan</th>
            <th>CPU</th>
            <th>RAM</th>
            <th>Storage</th>
            <th>Transfer</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Core</td>
            <td>2 vCPU</td>
            <td>4 GB</td>
            <td>80 GB NVMe</td>
            <td>3 TB</td>
          </tr>
          <tr>
            <td>Momentum</td>
            <td>4 vCPU</td>
            <td>8 GB</td>
            <td>160 GB NVMe</td>
            <td>5 TB</td>
          </tr>
          <tr>
            <td>Zenith</td>
            <td>8 vCPU</td>
            <td>16 GB</td>
            <td>320 GB NVMe</td>
            <td>10 TB</td>
          </tr>
        </tbody>
      </table>
    </div>
  </section>
</main>
{include file="footer.tpl"}
