{include file="$template/includes/header.tpl" pagetitle="Client Login"}
<section class="auth">
    <div class="container auth__grid">
        <div class="auth__intro">
            <span class="label">Welcome back</span>
            <h1>Access your control center.</h1>
            <p>Manage services, monitor usage, and get support from a single, beautiful interface designed for speed.</p>
            <ul class="auth-benefits">
                <li>Track service health and usage analytics.</li>
                <li>Open and manage support conversations.</li>
                <li>View invoices, quotes, and payment history.</li>
            </ul>
        </div>
        <div class="auth__form">
            {if $incorrect}
                <div class="alert alert--error">{$LANG.loginincorrect}</div>
            {/if}
            <form method="post" action="dologin.php" class="card">
                <input type="hidden" name="token" value="{$token}">
                <h2 class="card__title">Sign in</h2>
                <label class="form-label" for="inputEmail">{$LANG.clientareaemail}</label>
                <input id="inputEmail" class="form-control" type="email" name="username" value="{$username}" required>
                <label class="form-label" for="inputPassword">{$LANG.clientareapassword}</label>
                <input id="inputPassword" class="form-control" type="password" name="password" autocomplete="current-password" required>
                <div class="form-actions">
                    <label class="checkbox">
                        <input type="checkbox" name="rememberme" {if $rememberme}checked{/if}>
                        <span>{$LANG.loginrememberme}</span>
                    </label>
                    <a class="link" href="pwreset.php">{$LANG.forgotpw}</a>
                </div>
                <button class="button button--full" type="submit">{$LANG.loginbutton}</button>
                {if $ssoAvailable}
                    <div class="sso-divider"><span>{$LANG.or}</span></div>
                    <a class="button button--ghost button--full" href="{$ssoRedirectUrl}">{$LANG.loginwith} {$ssobrandlabel}</a>
                {/if}
            </form>
            <p class="auth__footer">New here? <a href="{$WEB_ROOT}/register.php">Create an account</a>.</p>
        </div>
    </div>
</section>
{include file="$template/includes/footer.tpl"}
