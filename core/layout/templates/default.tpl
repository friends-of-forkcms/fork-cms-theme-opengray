{include:core/layout/templates/head.tpl}
<body class="{$LANGUAGE}" id="subPage" itemscope itemtype="http://schema.org/WebPage">
	<div id="container">
		{include:core/layout/templates/header.tpl}
		<div id="main" class="clearfix">
			{include:core/layout/templates/breadcrumb.tpl}
            <div class="defaultContent clearfix">
			<h1>{$page.title}</h1>
			{iteration:positionMain}
				{option:positionMain.blockIsHTML}
					{* block is text *}
					{$positionMain.blockContent}
				{/option:positionMain.blockIsHTML}
				{option:!positionMain.blockIsHTML}
					{* block is a widget/module *}
					{$positionMain.blockContent}
				{/option:!positionMain.blockIsHTML}
			{/iteration:positionMain}
			</div>
		</div>
	{include:core/layout/templates/footer.tpl}
	</div>
	{* General Javascript *}
	{iteration:jsFiles}
		<script src="{$jsFiles.file}"></script>
	{/iteration:jsFiles}
	{* Theme specific Javascript *}
	<script src="{$THEME_URL}/core/js/opengray.js"></script>
	{* Site wide HTML *} 
	{$siteHTMLFooter}
</body>
</html>