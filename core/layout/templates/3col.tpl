{include:core/layout/templates/head.tpl}
<body class="{$LANGUAGE}" id="subPage" itemscope itemtype="http://schema.org/WebPage">
	<div id="container">
		{include:core/layout/templates/header.tpl}
		<div id="main" class="clearfix">
			{include:core/layout/templates/breadcrumb.tpl}
			<div id="columns">
				<div id="columnLeft">
					{iteration:positionLeft}
						{option:positionLeft.blockIsHTML}
							{* block is text *}
							{$positionLeft.blockContent}
						{/option:positionLeft.blockIsHTML}
						{option:!positionLeft.blockIsHTML}
							{* block is a widget/module *}
							{$positionLeft.blockContent}
						{/option:!positionLeft.blockIsHTML}
					{/iteration:positionLeft}
				</div>
				<div id="columnSubPage">
					<div class="content">
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
				<div id="columnRight">
					{iteration:positionRight}
						{option:positionRight.blockIsHTML}
							{* block is text *}
							{$positionRight.blockContent}
						{/option:positionRight.blockIsHTML}
						{option:!positionRight.blockIsHTML}
							{* block is a widget/module *}
							{$positionRight.blockContent}
						{/option:!positionRight.blockIsHTML}
					{/iteration:positionRight}
				</div>
			</div>
		</div>
		{include:core/layout/templates/bottomblock.tpl}
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