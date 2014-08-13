{* Success *}
{option:updateSettingsSuccess}
	<div class="message success"><p>{$msgUpdateSettingsIsSuccess}</p></div>
{/option:updateSettingsSuccess}

{* Error *}
{option:updateSettingsHasFormError}
	<div class="message error"><p>{$errFormError}</p></div>
{/option:updateSettingsHasFormError}

<section id="settingsForm" class="mod">
	<div class="inner">
		<div class="bd">
			{form:updateSettings}
			<h2>{$lblYourData|ucfirst}</h2>
				<fieldset>

					<p{option:txtNameError} class="errorArea"{/option:txtNameError}>
						<label for="name">{$lblName|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtName}{$txtNameError}
					</p>
					<p{option:txtEmailError} class="errorArea"{/option:txtEmailError}>
						<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtEmail}{$txtEmailError}
					</p>
					<p{option:txtPhoneError} class="errorArea"{/option:txtPhoneError}>
						<label for="phone">{$lblPhone|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtPhone}{$txtPhoneError}
					</p>
					<p{option:txtUsernameError} class="errorArea"{/option:txtUsernameError}>
						<label for="username">{$lblUsername|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtUsername}{$txtUsernameError}
					</p>
					<p class="infoMessage">{$msgFillPasswordToSave}</p>
					<p{option:txtPasswordError} class="errorArea"{/option:txtPasswordError}>
						<label for="password">{$lblPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtPassword}{$txtPasswordError}
					</p>
					<p{option:txtPasswordRepeatError} class="errorArea"{/option:txtPasswordRepeatError}>
						<label for="passwordRepeat">{$lblRepeatPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtPasswordRepeat}{$txtPasswordRepeatError}
					</p>
				</fieldset>
				<p>
					<input class="inputSubmit" type="submit" value="{$lblSave|ucfirst}" />
				</p>
			{/form:updateSettings}
		</div>
	</div>
</section>