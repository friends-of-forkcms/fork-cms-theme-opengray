{option:!page1}
<div id="breadcrumb">
	<ul>
		{iteration:breadcrumb}
			{option:breadcrumb.url}{option:!breadcrumb.last}<li class="arrow"><a href="{$breadcrumb.url}" title="{$breadcrumb.title}">{$breadcrumb.title}</a></li>{/option:!breadcrumb.last}{/option:breadcrumb.url}
			{option:breadcrumb.last}<li><span>{$breadcrumb.title}</span></li>{/option:breadcrumb.last}
		{/iteration:breadcrumb}
	</ul>
</div>
{/option:!page1}