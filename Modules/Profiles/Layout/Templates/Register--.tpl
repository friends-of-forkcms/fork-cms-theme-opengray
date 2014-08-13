{* Success *}
{option:registerIsSuccess}
	<div class="message success"><p>{$msgRegisterIsSuccess}</p></div>
{/option:registerIsSuccess}

{* Error *}
{option:registerHasFormError}
	<div class="message error"><p>{$errFormError}</p></div>
{/option:registerHasFormError}

{option:!registerHideForm}
	{form:register}
		<section id="registerForm" class="mod">
			<div class="inner clearfix">
				<div class="bd">
					<fieldset>
						<p{option:txtEmailError} class="errorArea"{/option:txtEmailError}>
							<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
							{$txtEmail}{$txtEmailError}
						</p>
						<p{option:txtUsernameError} class="errorArea"{/option:txtUsernameError}>
							<label for="username">{$lblUsername|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
							{$txtUsername}{$txtUsernameError}
						</p>
						<p{option:txtPasswordError} class="errorArea"{/option:txtPasswordError}>
							<label for="password">{$lblPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
							{$txtPassword}{$txtPasswordError}
						</p>
						<p{option:txtPasswordRepeatError} class="errorArea"{/option:txtPasswordRepeatError}>
							<label for="passwordRepeat">{$lblRepeatPassword|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
							{$txtPasswordRepeat}{$txtPasswordRepeatError}
						</p>
						<p>
							<input class="inputSubmit" type="submit" value="{$lblRegister|ucfirst}" />
						</p>
					</fieldset>
				</div>
			</div>
			<div class="registerRight clearfix">
				<h4>{$lblWhyRegister|ucfirst}</h4>
				<img src="{$VIRTUAL_DIRECTORY}/frontend/themes/graydon/core/layout/images/icon_house.png" /><p>{$msgWhyRegister|ucfirst}</p>
			</div>
		</section>

	{/form:register}
{/option:!registerHideForm}