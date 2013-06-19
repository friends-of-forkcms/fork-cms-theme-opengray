{option:resendActivationSuccess}<div class="message success"><p>{$msgResendActivationIsSuccess}</p></div>{/option:resendActivationSuccess}
{option:resendActivationHasError}<div class="message error"><p>{$errFormError}</p></div>{/option:resendActivationHasError}

{option:!resendActivationHideForm}
	<section id="resendActivationForm">
		<div class="newsletterBlock">
			{form:resendActivation}
				<fieldset>
					<p {option:txtEmailError} class="errorArea"{/option:txtEmailError}>
						<label for="email">{$lblEmail|ucfirst} <abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtEmail}
						<input class="inputSubmit" type="submit" value="{$lblSend|ucfirst}" />
						{$txtEmailError}
					</p>
				</fieldset>
			{/form:resendActivation}
			</div>
	</section>
{/option:!resendActivationHideForm}