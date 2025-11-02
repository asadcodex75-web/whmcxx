{include file="../../templates/uniquehost/header.tpl"}
<link rel="stylesheet" href="{$BASE_PATH}/orderforms/uniquehost/style.css?v={$WEB_ROOT|md5}">
<div class="order-container">
    <div class="progress">{$LANG.orderFormStepComplete}</div>
    <div class="order-header">
        <h1>Welcome to UniqueHost.</h1>
        <p>Your order is complete. We’re provisioning your services and will send credentials shortly.</p>
    </div>
    <div class="summary-card">
        <h2>{$LANG.orderconfirmation}</h2>
        <ul class="summary-list">
            <li><strong>{$LANG.ordernumber}:</strong> {$ordernumber}</li>
            <li><strong>{$LANG.invoicenum}:</strong> {$invoiceid}</li>
            <li><strong>{$LANG.orderdate}:</strong> {$date}</li>
        </ul>
        <div class="notice">
            {$LANG.orderreceived}
        </div>
        <div style="display:flex; gap:0.75rem; flex-wrap:wrap;">
            <a href="clientarea.php" class="btn btn-primary">{$LANG.clientareaproducts}</a>
            <a href="viewinvoice.php?id={$invoiceid}" class="btn btn-ghost">{$LANG.viewinvoice}</a>
        </div>
    </div>
</div>
{include file="../../templates/uniquehost/footer.tpl"}
