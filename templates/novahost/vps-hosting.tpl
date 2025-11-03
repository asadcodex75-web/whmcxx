{assign var="activeNav" value="vps-hosting"}
{include file="header.tpl" bodyclass="page-vps" pagetitle="NovaHost | Managed VPS Hosting" skipto="main-content"}
{assign var="buildPid" value=$vpsPlanPids.build|default:null}
{assign var="growPid" value=$vpsPlanPids.grow|default:null}
{assign var="scalePid" value=$vpsPlanPids.scale|default:null}
<main id="main-content" class="main-content">
  <section class="hero hero-sub">
    <div class="container">
      <div class="hero-grid">
        <div>
          <div class="badge">Managed Cloud VPS</div>
          <h1>Scale instantly with optimised cloud VPS plans</h1>
          <p>
            Offer elastic resources, blazing performance, and predictable billing
            through a WHMCS experience that feels enterprise-ready out of the box.
          </p>
          <div class="hero-actions">
            <a
              class="button primary"
              href="{if $buildPid}{$WEB_ROOT}/cart.php?a=add&amp;pid={$buildPid}{elseif $vpsGroupGid}{$WEB_ROOT}/cart.php?a=view&amp;gid={$vpsGroupGid}{else}{$WEB_ROOT}/cart.php?a=view{/if}"
            >
              Configure a VPS
            </a>
            <a class="button secondary" href="{$WEB_ROOT}/dedicated-server.php">View Dedicated Servers</a>
          </div>
        </div>
        <div class="hero-card">
          <h3>Powered by NovaHost</h3>
          <ul>
            <li>Instant provisioning from WHMCS</li>
            <li>Usage tables and comparison blocks included</li>
            <li>Clear upgrade and add-on callouts</li>
            <li>Global palette with blue accent highlights</li>
          </ul>
        </div>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>Featured VPS Plans</h2>
        <p>
          Give power users confidence with transparent specifications and prominent
          CTAs that lead directly into the WHMCS order flow.
        </p>
      </div>
      <div class="cards-grid">
        <article class="card">
          <h3>Build</h3>
          <p class="price">$29<span>/mo</span></p>
          <ul>
            <li>2 vCPU Cores</li>
            <li>4 GB RAM</li>
            <li>80 GB NVMe Storage</li>
            <li>3 TB Transfer</li>
          </ul>
          <a
            class="button primary"
            href="{if $buildPid}{$WEB_ROOT}/cart.php?a=add&amp;pid={$buildPid}{elseif $vpsGroupGid}{$WEB_ROOT}/cart.php?a=view&amp;gid={$vpsGroupGid}{else}{$WEB_ROOT}/cart.php?a=view{/if}"
          >
            Deploy Build
          </a>
        </article>
        <article class="card">
          <h3>Grow</h3>
          <p class="price">$49<span>/mo</span></p>
          <ul>
            <li>4 vCPU Cores</li>
            <li>8 GB RAM</li>
            <li>160 GB NVMe Storage</li>
            <li>5 TB Transfer</li>
          </ul>
          <a
            class="button primary"
            href="{if $growPid}{$WEB_ROOT}/cart.php?a=add&amp;pid={$growPid}{elseif $vpsGroupGid}{$WEB_ROOT}/cart.php?a=view&amp;gid={$vpsGroupGid}{else}{$WEB_ROOT}/cart.php?a=view{/if}"
          >
            Deploy Grow
          </a>
        </article>
        <article class="card">
          <h3>Scale</h3>
          <p class="price">$79<span>/mo</span></p>
          <ul>
            <li>6 vCPU Cores</li>
            <li>16 GB RAM</li>
            <li>320 GB NVMe Storage</li>
            <li>8 TB Transfer</li>
          </ul>
          <a
            class="button primary"
            href="{if $scalePid}{$WEB_ROOT}/cart.php?a=add&amp;pid={$scalePid}{elseif $vpsGroupGid}{$WEB_ROOT}/cart.php?a=view&amp;gid={$vpsGroupGid}{else}{$WEB_ROOT}/cart.php?a=view{/if}"
          >
            Deploy Scale
          </a>
        </article>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="section-header">
        <h2>Platform highlights</h2>
      </div>
      <div class="feature-pairs">
        <div class="feature-pair">
          <h3>Managed orchestration</h3>
          <p>
            Present a clear story around automated scaling, backups, and
            monitoring with flexible content blocks ready for hook-driven stats.
          </p>
        </div>
        <div class="feature-pair">
          <h3>Developer friendly</h3>
          <p>
            Showcase API access, staging snapshots, and CI/CD tooling with icon
            highlights that adapt easily.
          </p>
        </div>
        <div class="feature-pair">
          <h3>Global network</h3>
          <p>
            Promote your data centre footprint with comparison tables and map
            callouts designed to blend seamlessly with the colour palette.
          </p>
        </div>
        <div class="feature-pair">
          <h3>Reliable support</h3>
          <p>
            Reinforce trust by pairing testimonial quotes with support response
            stats and contact prompts.
          </p>
        </div>
      </div>
    </div>
  </section>
</main>
{include file="footer.tpl"}
