{include file="header.tpl"}
<section class="auth">
    <div class="container auth-grid">
        <div class="auth-card">
            <h1>Welcome back</h1>
            <p>Log in to manage your services, check invoices, and request support.</p>
            {if $incorrect}
                <div class="alert alert-danger">{lang key="loginincorrect"}</div>
            {/if}
            <form method="post" action="dologin.php" class="auth-form">
                <input type="hidden" name="token" value="{$csrfToken}">
                <label>
                    <span>Email address</span>
                    <input type="email" name="username" value="{$username}" required autofocus>
                </label>
                <label>
                    <span>Password</span>
                    <input type="password" name="password" required>
                </label>
                <div class="form-row">
                    <label class="checkbox">
                        <input type="checkbox" name="rememberme" {if $rememberme}checked{/if}>
                        <span>Keep me signed in</span>
                    </label>
                    <a class="link" href="pwreset.php">Forgot password?</a>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Log in</button>
            </form>
            <p class="auth-switch">New here? <a href="register.php">Create an account</a></p>
        </div>
        <aside class="auth-aside">
            <h2>Why customers love WHMCXX</h2>
            <ul>
                <li>Proactive monitoring with 15 minute response time</li>
                <li>Human support engineers available 24/7</li>
                <li>Transparent usage analytics and forecasting</li>
            </ul>
            <div class="auth-stats">
                <div>
                    <strong>+12K</strong>
                    <span>Active customers</span>
                </div>
                <div>
                    <strong>4.9/5</strong>
                    <span>Average satisfaction</span>
                </div>
                <div>
                    <strong>35</strong>
                    <span>Global data centers</span>
                </div>
            </div>
        </aside>
    </div>
</section>
{include file="footer.tpl"}
