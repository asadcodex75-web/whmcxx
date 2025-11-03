{assign var="activeNav" value="clientarea"}
{include file="header.tpl" bodyclass="page-auth" pagetitle="{$LANG.clientregistertitle|default:'Register'}" skipto="main-content"}
<main id="main-content" class="main-content">
  <section class="hero hero-auth">
    <div class="container">
      <div class="hero-grid">
        <div>
          <div class="badge">Create Your Account</div>
          <h1>{$LANG.clientregistertitle|default:'Create a NovaHost Account'}</h1>
          <p>
            Complete the form below to start managing services, invoices, and
            support requests in a bright, trustworthy client area.
          </p>
        </div>
        <div class="hero-card">
          <h3>Already a customer?</h3>
          <p>Sign in to access your existing services and billing.</p>
          <a class="button tertiary" href="clientarea.php">{$LANG.clientlogin|default:'Login'}</a>
        </div>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container auth-container single">
      {if $errormessage}
        <div class="alert alert-error">{$errormessage}</div>
      {/if}
      {if $registrationDisabled}
        <div class="alert alert-warning">{$registrationDisabledMessage}</div>
      {else}
        <form method="post" action="register.php" class="auth-form" id="frmRegister">
          <input type="hidden" name="token" value="{$token}" />
          <div class="form-grid">
            <div class="field-group">
              <label for="firstname">{$LANG.clientareafirstname|default:'First Name'}</label>
              <input type="text" name="firstname" id="firstname" value="{$smarty.request.firstname}" required />
            </div>
            <div class="field-group">
              <label for="lastname">{$LANG.clientarealastname|default:'Last Name'}</label>
              <input type="text" name="lastname" id="lastname" value="{$smarty.request.lastname}" required />
            </div>
            <div class="field-group">
              <label for="email">{$LANG.clientareaemail|default:'Email Address'}</label>
              <input type="email" name="email" id="email" value="{$smarty.request.email}" required />
            </div>
            <div class="field-group">
              <label for="password">{$LANG.clientareapassword|default:'Password'}</label>
              <input type="password" name="password" id="password" required autocomplete="new-password" />
            </div>
            <div class="field-group">
              <label for="password2">{$LANG.clientareaconfirmpassword|default:'Confirm Password'}</label>
              <input type="password" name="password2" id="password2" required autocomplete="new-password" />
            </div>
            <div class="field-group">
              <label for="companyname">{$LANG.clientareacompanyname|default:'Company'}</label>
              <input type="text" name="companyname" id="companyname" value="{$smarty.request.companyname}" />
            </div>
            <div class="field-group">
              <label for="address1">{$LANG.clientareaaddress1|default:'Address Line 1'}</label>
              <input type="text" name="address1" id="address1" value="{$smarty.request.address1}" required />
            </div>
            <div class="field-group">
              <label for="address2">{$LANG.clientareaaddress2|default:'Address Line 2'} <span class="optional">{$LANG.orderformoptional|default:'Optional'}</span></label>
              <input type="text" name="address2" id="address2" value="{$smarty.request.address2}" />
            </div>
            <div class="field-group">
              <label for="city">{$LANG.clientareacity|default:'City'}</label>
              <input type="text" name="city" id="city" value="{$smarty.request.city}" required />
            </div>
            <div class="field-group">
              <label for="state">{$LANG.clientareastate|default:'State/Region'}</label>
              <input type="text" name="state" id="state" value="{$smarty.request.state}" required />
            </div>
            <div class="field-group">
              <label for="postcode">{$LANG.clientareapostcode|default:'Postcode'}</label>
              <input type="text" name="postcode" id="postcode" value="{$smarty.request.postcode}" required />
            </div>
            <div class="field-group">
              <label for="country">{$LANG.clientareacountry|default:'Country'}</label>
              {$countriesdropdown}
            </div>
            <div class="field-group">
              <label for="phonenumber">{$LANG.clientareaphonenumber|default:'Phone Number'}</label>
              <input type="tel" name="phonenumber" id="phonenumber" value="{$smarty.request.phonenumber}" required />
            </div>
          </div>

          {if $customfields}
            <div class="form-subsection">
              <h3>{$LANG.orderadditionalrequiredinfo|default:'Additional Information'}</h3>
              {foreach $customfields as $customfield}
                <div class="field-group">
                  <label for="customfield{$customfield.id}">
                    {$customfield.name}{if $customfield.required} <span class="required">*</span>{/if}
                  </label>
                  {$customfield.input}
                  {if $customfield.description}<p class="field-hint">{$customfield.description}</p>{/if}
                </div>
              {/foreach}
            </div>
          {/if}

          {if $securityquestions}
            <div class="form-subsection">
              <h3>{$LANG.clientareasecurityquestion|default:'Security Question'}</h3>
              <div class="field-group">
                <label for="securityqid">{$LANG.clientareasecurityquestion|default:'Security Question'}</label>
                <select name="securityqid" id="securityqid" class="selectpicker">
                  {foreach $securityquestions as $question}
                    <option value="{$question.id}"{if $question.id eq $smarty.request.securityqid} selected{/if}>
                      {$question.question}
                    </option>
                  {/foreach}
                </select>
              </div>
              <div class="field-group">
                <label for="securityqans">{$LANG.clientareasecurityanswer|default:'Security Answer'}</label>
                <input type="password" name="securityqans" id="securityqans" value="{$smarty.request.securityqans}" required />
              </div>
            </div>
          {/if}

          {if $taxenabled && !$loggedin}
            <div class="form-subsection">
              <h3>{$LANG.orderForm.taxes|default:'Tax Information'}</h3>
              <div class="field-group">
                <label for="tax_id">{$taxLabel|default:'Tax ID'}</label>
                <input type="text" name="tax_id" id="tax_id" value="{$smarty.request.tax_id}" />
              </div>
            </div>
          {/if}

          {if $captcharecaptchahtml}
            <div class="field-group captcha-group">
              {$captcharecaptchahtml}
            </div>
          {/if}

          <div class="field-group checkbox">
            <label>
              <input type="checkbox" name="marketingoptin" value="1"{if $smarty.request.marketingoptin} checked{/if} />
              {$LANG.orderformoptional|default:'Optional'} — {$LANG.clientareaemailoptin|default:'Receive product news and offers'}
            </label>
          </div>

          <div class="form-actions">
            <button class="button primary" type="submit">{$LANG.registerbutton|default:'Create Account'}</button>
          </div>
        </form>
      {/if}
    </div>
  </section>
</main>
{include file="footer.tpl"}
