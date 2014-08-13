{*
	variables that are available:
	- {$archive}: contains an array with some dates
	- {$items}: contains an array with all items, each element contains data about the items
*}
<h1>{$lblArchive|ucfirst}</h1>
{option:!items}
	<section id="blogArchive">
			<div class="content">
				<p>{$msgBlogNoItems}</p>
			</div>
	</section>
{/option:!items}
{option:items}
	<section id="blogArchive">
		<div class="content">
			<table class="dataGrid" width="100%">
				<thead>
					<tr>
						<th class="date">{$lblDate|ucfirst}</th>
						<th class="title">{$lblTitle|ucfirst}</th>
						<th class="comments">{$lblComments|ucfirst}</th>
					</tr>
				</thead>
				<tbody>
					{iteration:items}
						<tr>
							<td class="date">{$items.publish_on|date:{$dateFormatShort}:{$LANGUAGE}}</td>
							<td class="title"><a href="{$items.full_url}" title="{$items.title}">{$items.title}</a></td>
							<td class="comments">
								{option:!items.comments}<a href="{$items.full_url}#{$actComment}">{$msgBlogNoComments|ucfirst}</a>{/option:!items.comments}
								{option:items.comments}
									{option:items.comments_multiple}<a href="{$items.full_url}#{$actComments}">{$msgBlogNumberOfComments|sprintf:{$items.comments_count}}</a>{/option:items.comments_multiple}
									{option:!items.comments_multiple}<a href="{$items.full_url}#{$actComments}">{$msgBlogOneComment}</a>{/option:!items.comments_multiple}
								{/option:items.comments}
							</td>
						</tr>
					{/iteration:items}
				</tbody>
			</table>
		</div>   
	</section>
	{include:Core/Layout/Templates/Pagination.tpl}
{/option:items}
