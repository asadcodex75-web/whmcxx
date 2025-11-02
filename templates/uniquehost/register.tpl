{include file="header.tpl"}
<section class="auth">
    <div class="container auth-grid">
        <div class="auth-copy">
            <h1>Create your UniqueHost account.</h1>
            <p>Spin up services instantly, collaborate with your team, and manage infrastructure from a refined dashboard.</p>
            <div class="stat-bar">
                <div>
                    <strong>18k+</strong>
                    <span>active customers</span>
                </div>
                <div>
                    <strong>42</strong>
                    <span>global POP locations</span>
                </div>
                <div>
                    <strong>4.9/5</strong>
                    <span>support satisfaction</span>
                </div>
            </div>
        </div>
        <div class="auth-card">
            <h2>Let’s get you started</h2>
            {if $errormessage}
                <div class="alert alert-danger">{$errormessage}</div>
            {/if}
            <form method="post" action="register.php" class="form">
                {include file="$template/includes/register-fields.tpl"}
                <div class="form-field">
                    <label class="checkbox">
                        <input type="checkbox" name="marketingoptin"> Keep me in the loop with product updates and offers.
                    </label>
                </div>
                <button type="submit" class="btn btn-primary btn-block">{$LANG.ordersummarysubmit}</button>
            </form>
            <p class="auth-switch">Already have an account? <a href="clientarea.php">Sign in</a></p>
        </div>
    </div>
</section>
{include file="footer.tpl"}
