{include file="$template/includes/header.tpl" pagetitle="Cloud VPS"}
<section class="page-hero">
    <div class="container page-hero__content">
        <div>
            <span class="label">Cloud VPS</span>
            <h1>Elastic compute with premium networking.</h1>
            <p>Spin up dedicated resources on demand. Our KVM VPS platform ships with NVMe disks, DDoS mitigation, and private networking.</p>
            <a class="button" href="{$WEB_ROOT}/cart.php?gid=2">Build your VPS</a>
        </div>
        <div class="page-hero__badge">
            <p>Network Throughput</p>
            <strong>10 Gbps</strong>
            <span>Dedicated fiber-backed uplinks</span>
        </div>
    </div>
</section>
<section class="section">
    <div class="container">
        <div class="comparison-table">
            <div class="comparison-table__head">
                <span>Plan</span>
                <span>vCPU</span>
                <span>RAM</span>
                <span>Storage</span>
                <span>Transfer</span>
                <span></span>
            </div>
            {foreach from=$vpsplans item=plan}
                <div class="comparison-table__row">
                    <span>{$plan.name}</span>
                    <span>{$plan.vcpu}</span>
                    <span>{$plan.ram}</span>
                    <span>{$plan.storage}</span>
                    <span>{$plan.transfer}</span>
                    <span><a class="button button--sm" href="{$WEB_ROOT}/cart.php?a=add&pid={$plan.pid}">Deploy</a></span>
                </div>
            {foreachelse}
                <div class="comparison-table__row">
                    <span>Growth</span>
                    <span>4</span>
                    <span>8 GB</span>
                    <span>160 GB NVMe</span>
                    <span>5 TB</span>
                    <span><a class="button button--sm" href="{$WEB_ROOT}/cart.php?a=add&pid=4">Deploy</a></span>
                </div>
                <div class="comparison-table__row">
                    <span>Scale</span>
                    <span>8</span>
                    <span>16 GB</span>
                    <span>320 GB NVMe</span>
                    <span>10 TB</span>
                    <span><a class="button button--sm" href="{$WEB_ROOT}/cart.php?a=add&pid=5">Deploy</a></span>
                </div>
                <div class="comparison-table__row">
                    <span>Enterprise</span>
                    <span>16</span>
                    <span>32 GB</span>
                    <span>640 GB NVMe</span>
                    <span>15 TB</span>
                    <span><a class="button button--sm" href="{$WEB_ROOT}/cart.php?a=add&pid=6">Deploy</a></span>
                </div>
            {/foreach}
        </div>
    </div>
</section>
<section class="section section--accent">
    <div class="container feature-rows">
        <div class="feature-row">
            <div>
                <h3>Snapshots & cloning</h3>
                <p>Roll back instantly or deploy pre-hardened images across regions with global private networking.</p>
            </div>
            <div class="feature-row__media">
                <span class="pill">5 sec</span>
                <p>Average snapshot creation time.</p>
            </div>
        </div>
        <div class="feature-row">
            <div>
                <h3>Observability toolkit</h3>
                <p>Integrated metrics, log streaming, and incident automation reduce MTTR and keep teams confident.</p>
            </div>
            <div class="feature-row__media">
                <span class="pill pill--dark">AI assisted</span>
                <p>Intelligent remediation and scaling suggestions.</p>
            </div>
        </div>
    </div>
</section>
{include file="$template/includes/footer.tpl"}
