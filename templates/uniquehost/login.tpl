{include file="header.tpl"}
<section class="auth">
    <div class="container auth-grid">
        <div class="auth-copy">
            <h1>Welcome back.</h1>
            <p>Access your services, invoices, and tickets through the sleek UniqueHost client hub.</p>
            <ul class="auth-perks">
                <li>Track resource usage in real time</li>
                <li>Launch new services in minutes</li>
                <li>Chat directly with our support engineers</li>
            </ul>
        </div>
        <div class="auth-card">
            <h2>Sign in to your account</h2>
            {if $incorrect}
                <div class="alert alert-danger">{$LANG.loginincorrect}</div>
            {/if}
            <form method="post" action="dologin.php" class="form">
                <div class="form-field">
                    <label for="inputEmail">{$LANG.enteremail}</label>
                    <input type="email" name="username" id="inputEmail" value="{$username}" placeholder="name@company.com" required>
                </div>
                <div class="form-field">
                    <label for="inputPassword">{$LANG.clientareapassword}</label>
                    <input type="password" name="password" id="inputPassword" placeholder="••••••••" required>
                </div>
                <div class="form-options">
                    <label class="checkbox">
                        <input type="checkbox" name="rememberme"> {$LANG.loginrememberme}
                    </label>
                    <a href="pwreset.php">{$LANG.forgotpw}</a>
                </div>
                <button type="submit" class="btn btn-primary btn-block">{$LANG.loginbutton}</button>
            </form>
            <p class="auth-switch">{$LANG.loginnoaccount} <a href="register.php">{$LANG.register}</a></p>
        </div>
    </div>
</section>
{include file="footer.tpl"}
