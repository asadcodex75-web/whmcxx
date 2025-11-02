{include file="$template/includes/header.tpl" pagetitle="Create Account"}
<section class="auth auth--register">
    <div class="container auth__grid">
        <div class="auth__intro">
            <span class="label">Create Account</span>
            <h1>Activate your modern hosting experience.</h1>
            <p>Sign up in moments, then deploy to any region with automated security and collaborative tooling.</p>
            <ul class="auth-benefits">
                <li>Instant access to the unified control center.</li>
                <li>Transparent billing with real-time usage alerts.</li>
                <li>Launch-ready templates for popular frameworks.</li>
            </ul>
        </div>
        <div class="auth__form">
            {if $registrationDisabled}
                <div class="alert alert--warning">{$LANG.registerCreateAccount}
                    <strong>{$LANG.registerDisableddescription}</strong>
                </div>
            {else}
                <form method="post" action="register.php" class="card">
                    <input type="hidden" name="token" value="{$token}">
                    <h2 class="card__title">Sign up</h2>
                    {foreach $customfields as $customfield}
                        <label class="form-label" for="customfield{$customfield.id}">{$customfield.name}{if $customfield.required}<span>*</span>{/if}</label>
                        {$customfield.input}
                    {/foreach}
                    <label class="form-label" for="firstName">{$LANG.clientareafirstname}</label>
                    <input id="firstName" class="form-control" type="text" name="firstname" value="{$firstname}" required>
                    <label class="form-label" for="lastName">{$LANG.clientarealastname}</label>
                    <input id="lastName" class="form-control" type="text" name="lastname" value="{$lastname}" required>
                    <label class="form-label" for="email">{$LANG.clientareaemail}</label>
                    <input id="email" class="form-control" type="email" name="email" value="{$email}" required>
                    <label class="form-label" for="password">{$LANG.clientareapassword}</label>
                    <input id="password" class="form-control" type="password" name="password" autocomplete="new-password" required>
                    <label class="form-label" for="confirmPassword">{$LANG.clientareaconfirmpassword}</label>
                    <input id="confirmPassword" class="form-control" type="password" name="password2" autocomplete="new-password" required>
                    <label class="form-label" for="phone">{$LANG.clientareaphonenumber}</label>
                    <input id="phone" class="form-control" type="tel" name="phonenumber" value="{$phonenumber}" required>
                    <label class="form-label" for="address1">{$LANG.clientareaaddress1}</label>
                    <input id="address1" class="form-control" type="text" name="address1" value="{$address1}" required>
                    <label class="form-label" for="city">{$LANG.clientareacity}</label>
                    <input id="city" class="form-control" type="text" name="city" value="{$city}" required>
                    <label class="form-label" for="country">{$LANG.clientareacountry}</label>
                    {$countriesdropdown}
                    <label class="checkbox">
                        <input type="checkbox" name="marketingoptin" {if $marketingoptin}checked{/if}>
                        <span>{$LANG.marketingoptin}</span>
                    </label>
                    <div class="form-actions">
                        <label class="checkbox">
                            <input type="checkbox" name="accepttos" required>
                            <span>I agree to the <a href="{$WEB_ROOT}/tos.php" target="_blank">Terms of Service</a>.</span>
                        </label>
                    </div>
                    <button class="button button--full" type="submit">{$LANG.clientregistertitle}</button>
                </form>
                <p class="auth__footer">Have an account? <a href="{$WEB_ROOT}/login.php">Sign in</a>.</p>
            {/if}
        </div>
    </div>
</section>
{include file="$template/includes/footer.tpl"}
