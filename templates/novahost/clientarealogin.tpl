{assign var="activeNav" value="clientarea"}
{include file="header.tpl" bodyclass="page-auth" pagetitle="{$LANG.clientlogin|default:'Client Login'}" skipto="main-content"}
<main id="main-content" class="main-content">
  <section class="hero hero-auth">
    <div class="container">
      <div class="hero-grid">
        <div>
          <div class="badge">Secure Client Area</div>
          <h1>{if $pagetitle}{$pagetitle}{else}Access your services{/if}</h1>
          <p>
            Sign in to manage hosting, domains, and invoices or create an account to
            unlock a streamlined onboarding experience.
          </p>
        </div>
        <div class="hero-card">
          <h3>Need an account?</h3>
          <p>Register in minutes and start provisioning instantly.</p>
          <a class="button tertiary" href="register.php">{$LANG.clientregistertitle|default:'Create Account'}</a>
        </div>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container auth-container single">
      <section class="auth-card">
        <h2>{$LANG.clientlogin|default:'Existing Clients'}</h2>
        {if $incorrect}
          <div class="alert alert-error">{$LANG.loginincorrect|default:'The email address or password you entered is incorrect.'}</div>
        {/if}
        {if $twofaenforced}
          <div class="alert alert-warning">{$LANG.twofaenforcedmessage}</div>
        {/if}
        {if $errormessage}
          <div class="alert alert-error">{$errormessage}</div>
        {/if}
        <form method="post" action="dologin.php" class="auth-form">
          <input type="hidden" name="token" value="{$token}" />
          <div class="field-group">
            <label for="inputEmail">{$LANG.clientareaemail|default:'Email Address'}</label>
            <input
              type="email"
              name="username"
              id="inputEmail"
              value="{$username}"
              placeholder="you@example.com"
              required
            />
          </div>
          <div class="field-group">
            <label for="inputPassword">{$LANG.clientareapassword|default:'Password'}</label>
            <input
              type="password"
              name="password"
              id="inputPassword"
              placeholder="••••••••"
              required
            />
          </div>
          {if $captchaForm}
            <div class="field-group captcha-group">
              {$captchaForm}
            </div>
          {/if}
          <div class="form-actions">
            <a class="link" href="pwreset.php">{$LANG.forgotpw|default:'Forgot password?'}</a>
            <button class="button primary" type="submit">{$LANG.loginbutton|default:'Login Securely'}</button>
          </div>
        </form>
      </section>
    </div>
  </section>
</main>
{include file="footer.tpl"}
