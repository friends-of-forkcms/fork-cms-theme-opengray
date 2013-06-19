{option:isLoggedIn}
<ul id="profile">
	<li id="signIn"><a href="{$profile.url.dashboard}">{$profile.display_name}</a>
		<ul>
			<li><a href="{$var|geturlforblock:'profiles':'settings'}" title="{$lblSettings|ucfirst}">{$lblSettings|ucfirst}</a></li>
			<li><a href="{$var|geturlforblock:'profiles':'change_password'}" title="{$lblPassword|ucfirst}">{$lblPassword|ucfirst}</a></li>
			<li><a href="{$var|geturlforblock:'profiles':'logout'}">{$lblLogout|ucfirst}</a></li>
		</ul>
	</li>
</ul>
{/option:isLoggedIn}
{option:!isLoggedIn}
<ul id="profile">
	<li id="signIn"><a id="signInLink" href="{$var|geturlforblock:'profiles':'login'}">{$lblLogin|ucfirst}</a></li>
</ul>
{/option:!isLoggedIn}
