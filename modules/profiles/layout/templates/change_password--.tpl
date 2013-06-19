{* Success *}
{option:updatePasswordSuccess}
	<div class="message success"><p>{$msgUpdatePasswordIsSuccess}</p></div>
{/option:updatePasswordSuccess}

{* Error *}
{option:updatePasswordHasFormError}
	<div class="message error"><p>{$errFormError}</p></div>
{/option:updatePasswordHasFormError}

<section id="updatePasswordForm" class="mod">
	<div class="inner">
		<div class="bd">
			<h2>{$lblYourPassword|ucfirst}</h2>
			{form:updatePassword}
				<fieldset>
					<p{option:txtOldPasswordError} class="errorArea"{/option:txtOldPasswordError}>
						<label for="oldPassword">{$lblOldPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtOldPassword}{$txtOldPasswordError}
					</p>
					<p{option:txtNewPasswordError} class="errorArea"{/option:txtNewPasswordError}>
						<label for="newPassword">{$lblNewPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtNewPassword}{$txtNewPasswordError}
					</p>
					<p{option:txtPasswordRepeatError} class="errorArea"{/option:txtPasswordRepeatError}>
						<label for="passwordRepeat">{$lblRepeatPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtPasswordRepeat}{$txtPasswordRepeatError}
					</p>
					<p>
						<input class="inputSubmit" type="submit" value="{$lblSave|ucfirst}" />
					</p>
				</fieldset>
			{/form:updatePassword}
		</div>
	</div>
</section>