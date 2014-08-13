<section id="unsubscribeIndex">
	<div class="newsletterBlock">
			{option:unsubscribeHasFormError}<div class="message error"><p>{$errFormError}</p></div>{/option:unsubscribeHasFormError}
			{option:unsubscribeHasError}<div class="message error"><p>{$errUnsubscribeFailed}</p></div>{/option:unsubscribeHasError}
			{option:unsubscribeIsSuccess}<div class="message success"><p>{$msgUnsubscribeSuccess}</p></div>{/option:unsubscribeIsSuccess}
			{option:!unsubscribeHideForm}
				{form:unsubscribe}
					<p{option:txtEmailError} class="errorArea"{/option:txtEmailError}>
						<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						<span class="bigInput">{$txtEmail}</span>
						<input id="send" class="inputSubmit" type="submit" name="send" value="{$lblSend|ucfirst}" />
						{$txtEmailError}
					</p>
				{/form:unsubscribe}
			{/option:!unsubscribeHideForm}
	</div>
</section>