<div class="summary">
    <header class="summary__header">
        <span class="order-label">Summary</span>
        <h2>Your order snapshot</h2>
        <p>Pricing updates as you configure options. Taxes calculated at checkout.</p>
    </header>
    <div class="summary__body">
        <ul class="summary__list">
            {foreach $cartitems as $item}
                <li>
                    <div>
                        <h3>{$item.productinfo.name}</h3>
                        {if $item.billingcycle}<span class="summary__cycle">{$item.billingcycletext}</span>{/if}
                    </div>
                    <span>{$item.recurring}</span>
                </li>
            {foreachelse}
                <li class="summary__empty">No services selected yet.</li>
            {/foreach}
        </ul>
        <dl class="summary__totals">
            <div>
                <dt>Subtotal</dt>
                <dd>{$subtotal}</dd>
            </div>
            {if $promotioncode}
                <div>
                    <dt>Promo ({$promotioncode})</dt>
                    <dd>-{$discount}</dd>
                </div>
            {/if}
            {if $taxes}
                {foreach $taxes as $tax}
                    <div>
                        <dt>{$tax.name}</dt>
                        <dd>{$tax.amount}</dd>
                    </div>
                {/foreach}
            {/if}
            <div class="summary__grand">
                <dt>Total Due Today</dt>
                <dd>{$total}</dd>
            </div>
        </dl>
    </div>
    <footer class="summary__footer">
        <p>Need help? <a href="{$WEB_ROOT}/submitticket.php">Chat with an engineer</a>.</p>
    </footer>
</div>
