{option:isLoggedIn}
<ul id="profile">
	<li id="signIn"><a href="{$profile.url.dashboard}">{$profile.display_name}</a>
		<ul>
			<li><a href="{$var|geturlforblock:'Profiles':'Settings'}" title="{$lblSettings|ucfirst}">{$lblSettings|ucfirst}</a></li>
			<li><a href="{$var|geturlforblock:'Profiles':'ChangePassword'}" title="{$lblPassword|ucfirst}">{$lblPassword|ucfirst}</a></li>
			<li><a href="{$var|geturlforblock:'Profiles':'Logout'}">{$lblLogout|ucfirst}</a></li>
		</ul>
	</li>
</ul>
{/option:isLoggedIn}
{option:!isLoggedIn}
<ul id="profile">
	<li id="signIn"><a id="signInLink" href="{$var|geturlforblock:'Profiles':'Login'}">{$lblLogin|ucfirst}</a></li>
</ul>
{/option:!isLoggedIn}
