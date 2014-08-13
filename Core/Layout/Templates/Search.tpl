{include:Core/Layout/Templates/Head.tpl}
<body class="{$LANGUAGE}" id="subPage" itemscope itemtype="http://schema.org/WebPage">
	<div id="container">
		{include:Core/Layout/Templates/Header.tpl}

		<div id="main" class="clearfix">
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
		
	{include:Core/Layout/Templates/Footer.tpl}
	</div>
	{* General Javascript *}
	{iteration:jsFiles}
		<script src="{$jsFiles.file}"></script>
	{/iteration:jsFiles}
	{* Theme specific Javascript *}
	<script src="{$THEME_URL}/Core/Js/opengray.js"></script>
	{* Site wide HTML *}
	{$siteHTMLFooter}
</body>
</html>
