{*
	variables that are available:
	- {$widgetBlogCategories}:
*}

{option:widgetBlogCategories}
<div class="navBlock">
	<h3>{$lblCategories|ucfirst}</h3>
	<ul>
		{iteration:widgetBlogCategories}
			<li>
				<a href="{$widgetBlogCategories.url}">
					{$widgetBlogCategories.label}
				</a>
			</li>
		{/iteration:widgetBlogCategories}
	</ul>
</div>
{/option:widgetBlogCategories}