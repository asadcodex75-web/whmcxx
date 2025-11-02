{assign var="filename" value="clientarealogin"}
{include file="header.tpl" bodyclass="page-auth" pagetitle="{$LANG.clientlogin|default:'Client Login'}" skipto="main-content"}
<header class="hero hero-auth">
  <div class="container hero-content">
    {include file="includes/navigation.tpl"}
    <div class="badge">Secure Client Area</div>
    <div class="hero-content">
      <h1>{if $pagetitle}{$pagetitle}{else}Login or Create Your NovaHost Account{/if}</h1>
      <p>
        The dual-panel layout keeps sign-in simple while highlighting the benefits of
        registering for a NovaHost account.
      </p>
    </div>
  </div>
</header>

<main id="main-content" class="section">
  <div class="container auth-container">
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
      <form method="post" action="dologin.php" class="order-form">
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
        <a class="button secondary" href="pwreset.php">{$LANG.forgotpw|default:'Forgot password?'}</a>
        <button class="button primary" type="submit">{$LANG.loginbutton|default:'Login Securely'}</button>
      </form>
    </section>
    <section class="auth-card">
      <h2>{$LANG.registertitle|default:'New to NovaHost?'}</h2>
      <p>
        {$LANG.registerintro|default:'Create an account to manage services, invoices, and support tickets in a beautifully styled WHMCS client area.'}
      </p>
      <a class="button primary" href="register.php">{$LANG.clientregistertitle|default:'Create Account'}</a>
    </section>
  </div>
</main>
{include file="footer.tpl"}
