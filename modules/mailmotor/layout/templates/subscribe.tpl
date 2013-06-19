<section id="subscribeIndex">
	<div class="newsletterBlock">
		{option:subscribeIsSuccess}<div class="message success"><p>{$msgSubscribeSuccess}</p></div>{/option:subscribeIsSuccess}
		{option:!subscribeHideForm}
			{form:subscribe}
				<p{option:txtEmailError} class="errorArea"{/option:txtEmailError}>
					<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					{$txtEmail}
					<input id="send" class="inputSubmit" type="submit" name="send" value="{$lblSend|ucfirst}" />
					{$txtEmailError}
				</p>
			{/form:subscribe}
		{/option:!subscribeHideForm}
	</div>
</section>