{*
	variables that are available:
	- {$category}: contains data about the category
	- {$items}: contains an array with all posts, each element contains data about the post
*}
{*
	variables that are available:
	- {$items}: contains an array with all posts, each element contains data about the post
*}

<h1>{$category.label|ucfirst}</h1><br />
{option:items}
		{iteration:items}
			<article class="item">
				<div class="clearfix">
					{option:items.image}<div class="imageHolder"><a href="{$items.full_url}"><img src="{$FRONTEND_FILES_URL}/blog/images/source/{$items.image}" alt="{$items.title}" itemprop="image" /></a></div>{/option:items.image}
					{option:items.image}<div class="contentHolder">{/option:items.image}
						<h2><a href="{$items.full_url}" title="{$items.title}">{$items.title}</a></h2>
						<p class="articleMeta">{$lblOn} {$items.publish_on|date:{$dateFormatShort}:{$LANGUAGE}} {$lblIn} {$lblThe} {$lblCategory} <a href="{$items.category_full_url}" title="{$items.category_title}">{$items.category_title}</a> {$lblBy} {$items.author_name}</p>
						{option:!items.introduction}<p>{$items.text|truncate:500} <a class="readMoreArticle" href="{$items.full_url}">{$lblReadMore|ucfirst}</a></p>{/option:!items.introduction}
						{option:items.introduction}<p>{$items.introduction|truncate:500} <a class="readMoreArticle" href="{$items.full_url}">{$lblReadMore|ucfirst}</a></p>{/option:items.introduction}
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
	{include:Core/Layout/Templates/Pagination.tpl}
{/option:items}
