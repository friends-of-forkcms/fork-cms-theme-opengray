{option:forgotPasswordSuccess}<div class="message success"><p>{$msgForgotPasswordIsSuccess}</p></div>{/option:forgotPasswordSuccess}
{option:forgotPasswordHasError}<div class="message error"><p>{$errFormError}</p></div>{/option:forgotPasswordHasError}

{option:!forgotPasswordHideForm}
	<section id="forgotPasswordForm" class="mod">
		<div class="newsletterBlock">
			{form:forgotPassword}
				<fieldset>
					<p{option:txtEmailError} class="errorArea"{/option:txtEmailError}>
						<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtEmail}
						<input class="inputSubmit" type="submit" value="{$lblSend|ucfirst}" />
						{$txtEmailError}
					</p>
				</fieldset>
			{/form:forgotPassword}
		</div>
	</section>
{/option:!forgotPasswordHideForm}