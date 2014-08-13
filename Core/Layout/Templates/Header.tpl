<header role="banner" id="header">
	{* Logo *}
	<div id="logo">
		<h1><a href="/" title="{$siteTitle}">{$siteTitle}</a></h1>
	</div>
	{* Navigation *}
	<nav id="navigation" class="clearfix">
		<div id="mainNav">
		{$var|getnavigation:'page':1:1}
		</div>
		{iteration:positionLogin}
			{option:positionLogin.blockIsHTML}
				{* block is text *}
				{$positionLogin.blockContent}
			{/option:positionLogin.blockIsHTML}
			{option:!positionLogin.blockIsHTML}
				{* block is a widget/module *}
				{$positionLogin.blockContent}
			{/option:!positionLogin.blockIsHTML}
		{/iteration:positionLogin}
	</nav>
	<nav id="language">
			{include:Core/Layout/Templates/Languages.tpl}
	</nav>
	<div id="searchWidget">
        {iteration:positionTop}
        	{option:positionTop.blockIsHTML}
        		{* block is text *}
        		{$positionTop.blockContent}
        	{/option:positionTop.blockIsHTML}
        	{option:!positionTop.blockIsHTML}
        		{* block is a widget/module *}
        		{$positionTop.blockContent}
        	{/option:!positionTop.blockIsHTML}
        {/iteration:positionTop}
	</div>
	<div id="shortcut">
		{$var|getnavigation:'meta':0:1}
	</div>
	<div class="socialButtons">
		<ul>
			<li class="rss"><a href="{$var|geturlforblock:'blog':'rss'}" title="">Rss</a></li>
		</ul>
	</div>
</header>
