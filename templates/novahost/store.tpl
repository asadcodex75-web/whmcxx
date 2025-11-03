{assign var="activeNav" value="store"}
{include file="header.tpl" bodyclass="page-store" pagetitle="NovaHost | Template Store" skipto="main-content"}
{assign var="starterPid" value=$sharedPlanPids.starter|default:null}
{assign var="businessPid" value=$sharedPlanPids.business|default:null}
{assign var="agencyPid" value=$sharedPlanPids.agency|default:null}
{assign var="buildPid" value=$vpsPlanPids.build|default:null}
{assign var="growPid" value=$vpsPlanPids.grow|default:null}
{assign var="scalePid" value=$vpsPlanPids.scale|default:null}
{assign var="essentialPid" value=$dedicatedPlanPids.essential|default:null}
{assign var="professionalPid" value=$dedicatedPlanPids.professional|default:null}
{assign var="enterprisePid" value=$dedicatedPlanPids.enterprise|default:null}
{assign var="sslPid" value=$addonPids.ssl|default:null}
{assign var="backupsPid" value=$addonPids.backups|default:null}
{assign var="securityPid" value=$addonPids.security|default:null}
{assign var="emailPid" value=$addonPids.email|default:null}
<main id="main-content" class="main-content">
  <section class="hero hero-sub">
    <div class="container">
      <div class="hero-grid">
        <div>
          <div class="badge">Template Store</div>
          <h1>Merchandise your hosting stack with clarity</h1>
          <p>
            Present products, bundles, and add-ons with structured sections that
            look great on desktop and mobile. Every block flows directly into the
            WHMCS cart experience.
          </p>
          <div class="hero-actions">
            <a class="button primary" href="{$WEB_ROOT}/cart.php">Start Ordering</a>
            <a class="button secondary" href="{$WEB_ROOT}/shared-hosting.php">View Shared Hosting</a>
          </div>
        </div>
        <div class="hero-card">
          <h3>What’s inside</h3>
          <ul>
            <li>Tabbed product categories</li>
            <li>Comparison and pricing components</li>
            <li>Add-ons &amp; cross-sell grid layouts</li>
            <li>Designed for a white &amp; blue palette</li>
          </ul>
        </div>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>Hosting catalogue</h2>
        <p>
          Group plans by category and highlight key differentiators with tabs that
          adapt gracefully to smaller screens.
        </p>
      </div>
      <div class="tabs">
        <button class="tab active" type="button">Shared Hosting</button>
        <button class="tab" type="button">Managed VPS</button>
        <button class="tab" type="button">Dedicated Servers</button>
      </div>
      <div class="cards-grid">
        <article class="card">
          <h3>Starter</h3>
          <p class="price">$4.99<span>/mo</span></p>
          <p class="excerpt">Perfect for personal projects and blogs.</p>
          <a
            class="button tertiary"
            href="{if $starterPid}{$WEB_ROOT}/cart.php?a=add&amp;pid={$starterPid}{elseif $sharedGroupGid}{$WEB_ROOT}/cart.php?a=view&amp;gid={$sharedGroupGid}{else}{$WEB_ROOT}/cart.php?a=view{/if}"
          >
            Order Starter
          </a>
        </article>
        <article class="card">
          <h3>Business</h3>
          <p class="price">$9.99<span>/mo</span></p>
          <p class="excerpt">Includes advanced caching and premium support.</p>
          <a
            class="button tertiary"
            href="{if $businessPid}{$WEB_ROOT}/cart.php?a=add&amp;pid={$businessPid}{elseif $sharedGroupGid}{$WEB_ROOT}/cart.php?a=view&amp;gid={$sharedGroupGid}{else}{$WEB_ROOT}/cart.php?a=view{/if}"
          >
            Order Business
          </a>
        </article>
        <article class="card">
          <h3>Agency</h3>
          <p class="price">$14.99<span>/mo</span></p>
          <p class="excerpt">Unlimited sites, staging, and team access.</p>
          <a
            class="button tertiary"
            href="{if $agencyPid}{$WEB_ROOT}/cart.php?a=add&amp;pid={$agencyPid}{elseif $sharedGroupGid}{$WEB_ROOT}/cart.php?a=view&amp;gid={$sharedGroupGid}{else}{$WEB_ROOT}/cart.php?a=view{/if}"
          >
            Order Agency
          </a>
        </article>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>VPS showcase</h2>
        <p>
          Use wide highlight cards to call out managed features, performance, and
          instant provisioning.
        </p>
      </div>
      <div class="showcase-grid">
        <article class="showcase">
          <div>
            <h3>Managed NVMe VPS</h3>
            <p>NVMe storage, premium bandwidth, and proactive monitoring.</p>
          </div>
          <div class="showcase-cta">
            <span class="price">$49/mo</span>
            <a
              class="button primary"
              href="{if $buildPid}{$WEB_ROOT}/cart.php?a=add&amp;pid={$buildPid}{elseif $vpsGroupGid}{$WEB_ROOT}/cart.php?a=view&amp;gid={$vpsGroupGid}{else}{$WEB_ROOT}/cart.php?a=view{/if}"
            >
              Deploy Now
            </a>
          </div>
        </article>
        <article class="showcase">
          <div>
            <h3>High Memory VPS</h3>
            <p>Ideal for caching layers and databases that demand RAM.</p>
          </div>
          <div class="showcase-cta">
            <span class="price">$69/mo</span>
            <a
              class="button primary"
              href="{if $scalePid}{$WEB_ROOT}/cart.php?a=add&amp;pid={$scalePid}{elseif $vpsGroupGid}{$WEB_ROOT}/cart.php?a=view&amp;gid={$vpsGroupGid}{else}{$WEB_ROOT}/cart.php?a=view{/if}"
            >
              Deploy Now
            </a>
          </div>
        </article>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>Dedicated server comparison</h2>
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
              <td>Edge</td>
              <td>Ryzen 7</td>
              <td>64 GB</td>
              <td>2 × 1 TB NVMe</td>
              <td>25 TB</td>
              <td>
                <a
                  class="button tertiary"
                  href="{if $essentialPid}{$WEB_ROOT}/cart.php?a=add&amp;pid={$essentialPid}{elseif $dedicatedGroupGid}{$WEB_ROOT}/cart.php?a=view&amp;gid={$dedicatedGroupGid}{else}{$WEB_ROOT}/cart.php?a=view{/if}"
                >
                  Order
                </a>
              </td>
            </tr>
            <tr class="highlight">
              <td>Core</td>
              <td>Xeon Silver</td>
              <td>96 GB</td>
              <td>4 × 1.92 TB NVMe</td>
              <td>35 TB</td>
              <td>
                <a
                  class="button primary"
                  href="{if $professionalPid}{$WEB_ROOT}/cart.php?a=add&amp;pid={$professionalPid}{elseif $dedicatedGroupGid}{$WEB_ROOT}/cart.php?a=view&amp;gid={$dedicatedGroupGid}{else}{$WEB_ROOT}/cart.php?a=view{/if}"
                >
                  Order
                </a>
              </td>
            </tr>
            <tr>
              <td>Ultra</td>
              <td>Dual EPYC</td>
              <td>128 GB</td>
              <td>8 × 1.92 TB NVMe</td>
              <td>40 TB</td>
              <td>
                <a
                  class="button tertiary"
                  href="{if $enterprisePid}{$WEB_ROOT}/cart.php?a=add&amp;pid={$enterprisePid}{elseif $dedicatedGroupGid}{$WEB_ROOT}/cart.php?a=view&amp;gid={$dedicatedGroupGid}{else}{$WEB_ROOT}/cart.php?a=view{/if}"
                >
                  Order
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>Popular add-ons</h2>
        <p>Pair extras with any plan to increase average order value.</p>
      </div>
      <div class="addons-grid">
        <article class="addon">
          <h3>Advanced Backups</h3>
          <p>Hourly snapshots, geo-redundant storage, and one-click restores.</p>
          <a
            class="button tertiary"
            href="{if $sslPid}{$WEB_ROOT}/cart.php?a=add&amp;pid={$sslPid}{else}{$WEB_ROOT}/cart.php?a=view{/if}"
          >
            Add Now
          </a>
        </article>
        <article class="addon">
          <h3>Managed Security</h3>
          <p>WAF, malware removal, and automated patching handled by experts.</p>
          <a
            class="button tertiary"
            href="{if $backupsPid}{$WEB_ROOT}/cart.php?a=add&amp;pid={$backupsPid}{else}{$WEB_ROOT}/cart.php?a=view{/if}"
          >
            Add Now
          </a>
        </article>
        <article class="addon">
          <h3>Priority Support</h3>
          <p>Dedicated success manager and guaranteed 15-minute responses.</p>
          <a
            class="button tertiary"
            href="{if $securityPid}{$WEB_ROOT}/cart.php?a=add&amp;pid={$securityPid}{else}{$WEB_ROOT}/cart.php?a=view{/if}"
          >
            Add Now
          </a>
        </article>
        <article class="addon">
          <h3>Compliance Toolkit</h3>
          <p>Audit-ready reporting, logging, and retention workflows.</p>
          <a
            class="button tertiary"
            href="{if $emailPid}{$WEB_ROOT}/cart.php?a=add&amp;pid={$emailPid}{else}{$WEB_ROOT}/cart.php?a=view{/if}"
          >
            Add Now
          </a>
        </article>
      </div>
    </div>
  </section>
</main>
{include file="footer.tpl"}
