{assign var="filename" value="clientregister"}
{include file="header.tpl" bodyclass="page-auth" pagetitle="{$LANG.clientregistertitle|default:'Register'}" skipto="main-content"}
<header class="hero hero-auth">
  <div class="container hero-content">
    {include file="includes/navigation.tpl"}
    <div class="badge">Create Your Account</div>
    <div class="hero-content">
      <h1>{$LANG.clientregistertitle|default:'Create a NovaHost Account'}</h1>
      <p>
        Complete the form below to start managing your services, invoices, and support
        tickets inside the NovaHost client area.
      </p>
    </div>
  </div>
</header>

<main id="main-content" class="section">
  <div class="container auth-container single">
    {if $errormessage}
      <div class="alert alert-error">{$errormessage}</div>
    {/if}
    {if $registrationDisabled}
      <div class="alert alert-warning">{$registrationDisabledMessage}</div>
    {else}
      <form method="post" action="register.php" class="order-form" id="frmRegister">
        <input type="hidden" name="token" value="{$token}" />
        <div class="split">
          <div class="field-group">
            <label for="firstname">{$LANG.clientareafirstname|default:'First Name'}</label>
            <input
              type="text"
              name="firstname"
              id="firstname"
              value="{$smarty.request.firstname}"
              required
            />
          </div>
          <div class="field-group">
            <label for="lastname">{$LANG.clientarealastname|default:'Last Name'}</label>
            <input
              type="text"
              name="lastname"
              id="lastname"
              value="{$smarty.request.lastname}"
              required
            />
          </div>
        </div>
        <div class="field-group">
          <label for="companyname">{$LANG.clientareacompanyname|default:'Company Name'} <span class="optional">{$LANG.optional|default:'(Optional)'}</span></label>
          <input
            type="text"
            name="companyname"
            id="companyname"
            value="{$smarty.request.companyname}"
          />
        </div>
        <div class="field-group">
          <label for="email">{$LANG.clientareaemail|default:'Email Address'}</label>
          <input
            type="email"
            name="email"
            id="email"
            value="{$smarty.request.email}"
            required
          />
        </div>
        <div class="split">
          <div class="field-group">
            <label for="phonenumber">{$LANG.clientareaphonenumber|default:'Phone Number'}</label>
            <input
              type="tel"
              name="phonenumber"
              id="phonenumber"
              value="{$smarty.request.phonenumber}"
              required
            />
          </div>
          <div class="field-group">
            <label for="country">{$LANG.clientareacountry|default:'Country'}</label>
            {if $clientcountrydropdown}
              {$clientcountrydropdown}
            {else}
              <select name="country" id="country" required>
                <option value="">{$LANG.clientareaselectcountry|default:'Select country'}</option>
                {foreach from=$countries item=country}
                  <option value="{$country.code}"{if $smarty.request.country == $country.code} selected{/if}>{$country.name}</option>
                {/foreach}
              </select>
            {/if}
          </div>
        </div>
        <div class="split">
          <div class="field-group">
            <label for="address1">{$LANG.clientareaaddress1|default:'Address Line 1'}</label>
            <input
              type="text"
              name="address1"
              id="address1"
              value="{$smarty.request.address1}"
              required
            />
          </div>
          <div class="field-group">
            <label for="address2">{$LANG.clientareaaddress2|default:'Address Line 2'} <span class="optional">{$LANG.optional|default:'(Optional)'}</span></label>
            <input
              type="text"
              name="address2"
              id="address2"
              value="{$smarty.request.address2}"
            />
          </div>
        </div>
        <div class="split">
          <div class="field-group">
            <label for="city">{$LANG.clientareacity|default:'City'}</label>
            <input
              type="text"
              name="city"
              id="city"
              value="{$smarty.request.city}"
              required
            />
          </div>
          <div class="field-group">
            <label for="state">{$LANG.clientareastate|default:'State / Region'}</label>
            <input
              type="text"
              name="state"
              id="state"
              value="{$smarty.request.state}"
              required
            />
          </div>
          <div class="field-group">
            <label for="postcode">{$LANG.clientareapostcode|default:'Postcode'}</label>
            <input
              type="text"
              name="postcode"
              id="postcode"
              value="{$smarty.request.postcode}"
              required
            />
          </div>
        </div>
        {if $customfields}
          <div class="section-header">
            <h2>{$LANG.orderadditionalrequiredinfo|default:'Additional Information'}</h2>
          </div>
          <div class="custom-fields">
            {foreach from=$customfields item=field}
              <div class="field-group">
                <label for="customfield{$field.id}">
                  {$field.name}
                  {if $field.required}<span class="required">*</span>{/if}
                </label>
                {$field.input}
                {if $field.description}<p class="field-hint">{$field.description}</p>{/if}
              </div>
            {/foreach}
          </div>
        {/if}
        {if $securityquestions}
          <div class="section-header">
            <h2>{$LANG.clientareasecurityquestion|default:'Security Question'}</h2>
          </div>
          <div class="field-group">
            <label for="securityqans">{$LANG.clientareasecurityquestion|default:'Security Question'}</label>
            <select name="securityqid" id="securityqid">
              {foreach from=$securityquestions item=question}
                <option value="{$question.id}"{if $smarty.request.securityqid == $question.id} selected{/if}>{$question.question}</option>
              {/foreach}
            </select>
          </div>
          <div class="field-group">
            <label for="securityqans">{$LANG.clientareasecurityanswer|default:'Security Answer'}</label>
            <input type="text" name="securityqans" id="securityqans" value="{$smarty.request.securityqans}" />
          </div>
        {/if}
        <div class="split">
          <div class="field-group">
            <label for="password">{$LANG.clientareapassword|default:'Password'}</label>
            <input type="password" name="password" id="password" required />
          </div>
          <div class="field-group">
            <label for="password2">{$LANG.clientareaconfirmpassword|default:'Confirm Password'}</label>
            <input type="password" name="password2" id="password2" required />
          </div>
        </div>
        {if $captchaForm}
          <div class="field-group captcha-group">
            {$captchaForm}
          </div>
        {/if}
        {if $accepttos}
          <div class="field-group checkbox">
            <label>
              <input type="checkbox" name="accepttos" value="1"{if $smarty.request.accepttos} checked{/if} required />
              {$LANG.ordertosagree|default:'I have read and agree to the terms of service.'}
              {if $tosurl}
                <a href="{$tosurl}" target="_blank" rel="noopener">{$LANG.ordertos|default:'Terms of Service'}</a>
              {/if}
            </label>
          </div>
        {/if}
        {if $marketingEmailOptIn}
          <div class="field-group checkbox">
            <label>
              <input type="checkbox" name="marketingoptin" value="1"{if $smarty.request.marketingoptin} checked{/if} />
              {$marketingEmailOptIn}
            </label>
          </div>
        {/if}
        <button class="button primary" type="submit">{$LANG.registerbutton|default:'Create Account'}</button>
      </form>
    {/if}
  </div>
</main>
{include file="footer.tpl"}
