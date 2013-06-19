{*
	variables that are available:
	- {$widgetBlogArchive}:
*}

{cache:{$LANGUAGE}_blogWidgetArchiveCache}
	{option:widgetBlogArchive}
	<div class="navBlockGray">
		<h3>{$lblArchive|ucfirst}</h3>
		<ul>
			{iteration:widgetBlogArchive}
				<li>
					<strong>
						{option:widgetBlogArchive.url}<a href="{$widgetBlogArchive.url}">{/option:widgetBlogArchive.url}
						{$widgetBlogArchive.label}
						{option:widgetBlogArchive.url}{* ({$widgetBlogArchive.total}) *}{/option:widgetBlogArchive.url}
						{option:widgetBlogArchive.url}</a>{/option:widgetBlogArchive.url}
					</strong>
				</li>
			{/iteration:widgetBlogArchive}
		</ul>
	</div>
	{/option:widgetBlogArchive}
{/cache:{$LANGUAGE}_blogWidgetArchiveCache}
