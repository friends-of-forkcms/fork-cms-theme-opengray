{*
	variables that are available:
	- {$items}: contains an array with all posts, each element contains data about the post
*}

{option:!items}
<p>{$lblNoItems|ucfirst}</p>
{/option:!items}
{option:items}
		{iteration:items}
			<article class="item">
				<div class="clearfix">
					{option:items.image}<div class="imageHolder"><a href="{$items.full_url}"><img src="{$FRONTEND_FILES_URL}/blog/images/source/{$items.image}" alt="{$items.title}" itemprop="image" /></a></div>{/option:items.image}
					{option:items.image}<div class="contentHolder">{/option:items.image}
						<h2><a href="{$items.full_url}" title="{$items.title}">{$items.title}</a></h2>
						<p class="articleMeta">{$lblOn} {$items.publish_on|date:{$dateFormatShort}:{$LANGUAGE}} {$lblIn} {$lblThe} {$lblCategory} <a href="{$items.category_full_url}" title="{$items.category_title}">{$items.category_title}</a> {$msgWrittenBy|ucfirst|sprintf:{$items.user_id|usersetting:'nickname'}}</p>
						{option:!items.introduction}<p>{$items.text|truncate:500}</p>{/option:!items.introduction}
						{option:items.introduction}<p>{$items.introduction|truncate:500}</p>{/option:items.introduction}
					{option:items.image}</div>{/option:items.image}
				</div>
				<footer class="clearfix">
					<p class="commentsCounter">
						{option:!items.comments}<a href="{$items.full_url}#{$actComment}">{$msgBlogNoComments|ucfirst}</a>{/option:!items.comments}
						{option:items.comments}
							{option:items.comments_multiple}<a href="{$items.full_url}#{$actComments}">{$msgBlogNumberOfComments|sprintf:{$items.comments_count}}</a>{/option:items.comments_multiple}
							{option:!items.comments_multiple}<a href="{$items.full_url}#{$actComments}">{$msgBlogOneComment}</a>{/option:!items.comments_multiple}
						{/option:items.comments}
					</p>
				</footer>
			</article>
		{/iteration:items}
	{include:core/layout/templates/pagination.tpl}
{/option:items}
