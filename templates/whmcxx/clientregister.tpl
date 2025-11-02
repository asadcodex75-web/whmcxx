{include file="header.tpl"}
<section class="auth">
    <div class="container auth-grid">
        <div class="auth-card">
            <h1>Create your WHMCXX account</h1>
            <p>Spin up infrastructure in seconds. No setup fees, cancel any time.</p>
            {if $errormessage}
                <div class="alert alert-danger">{$errormessage}</div>
            {/if}
            <form method="post" action="register.php" class="auth-form">
                <input type="hidden" name="token" value="{$csrfToken}">
                <div class="form-row two-cols">
                    <label>
                        <span>First name</span>
                        <input type="text" name="firstname" value="{$clientfirstname}" required>
                    </label>
                    <label>
                        <span>Last name</span>
                        <input type="text" name="lastname" value="{$clientlastname}" required>
                    </label>
                </div>
                <label>
                    <span>Email address</span>
                    <input type="email" name="email" value="{$clientemail}" required>
                </label>
                <label>
                    <span>Company name <small>(optional)</small></span>
                    <input type="text" name="companyname" value="{$clientcompanyname}">
                </label>
                <div class="form-row two-cols">
                    <label>
                        <span>Password</span>
                        <input type="password" name="password" id="inputNewPassword1" required>
                    </label>
                    <label>
                        <span>Confirm password</span>
                        <input type="password" name="password2" id="inputNewPassword2" required>
                    </label>
                </div>
                <label class="checkbox">
                    <input type="checkbox" name="accepttos" required>
                    <span>I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a>.</span>
                </label>
                {if $captcha}
                    <div class="captcha-container">{$captcha}</div>
                {/if}
                <button type="submit" class="btn btn-primary btn-block">Create account</button>
            </form>
            <p class="auth-switch">Already a customer? <a href="clientarea.php">Log in</a></p>
        </div>
        <aside class="auth-aside">
            <h2>Your launch checklist</h2>
            <ul>
                <li>Free white-glove migration for first 30 days</li>
                <li>Usage analytics and billing forecasts</li>
                <li>Launch concierge & architecture review</li>
            </ul>
            <div class="auth-quote">
                <blockquote>
                    “WHMCXX helped us cut infrastructure costs by 42% while improving reliability across 3 continents.”
                </blockquote>
                <cite>— Maya Chen, CTO at CloudStitch</cite>
            </div>
        </aside>
    </div>
</section>
{include file="footer.tpl"}
