{foreach from=$customfields item=customfield}
    <div class="form-field">
        <label for="customfield{$customfield.id}">{$customfield.name}</label>
        {$customfield.input}
        {if $customfield.description}
            <small>{$customfield.description}</small>
        {/if}
    </div>
{/foreach}
{foreach from=$registerfields item=field}
    <div class="form-field">
        <label for="input{$field.name}">{$field.lang}</label>
        {$field.input}
    </div>
{/foreach}
