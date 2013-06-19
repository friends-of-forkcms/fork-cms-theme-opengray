{*
	variables that are available:
	- {$widgetBlogRecentArticlesFull}: contains an array with all posts, each element contains data about the post

	only homepage
*}

{option:widgetBlogRecentArticlesFull}
	<h2>{$lblRecentArticles|ucfirst}</h2>
	{iteration:widgetBlogRecentArticlesFull}
		<article class="item">
			<div class="clearfix">
				{option:widgetBlogRecentArticlesFull.image}<div class="imageHolder"><a href="{$widgetBlogRecentArticlesFull.full_url}"><img src="{$FRONTEND_FILES_URL}/blog/images/source/{$widgetBlogRecentArticlesFull.image}" alt="{$widgetBlogRecentArticlesFull.title}" itemprop="image" /></a></div>{/option:widgetBlogRecentArticlesFull.image}
				{option:widgetBlogRecentArticlesFull.image}<div class="contentHolder">{/option:widgetBlogRecentArticlesFull.image}
					<h3><a href="{$widgetBlogRecentArticlesFull.full_url}" title="{$widgetBlogRecentArticlesFull.title}">{$widgetBlogRecentArticlesFull.title}</a></h3>
					<p class="articleMeta">{$lblOn} {$widgetBlogRecentArticlesFull.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}</p>
				{option:widgetBlogRecentArticlesFull.image}</div>{/option:widgetBlogRecentArticlesFull.image}
			</div>
			<footer class="clearfix">
				<p class="commentsCounter">
					{option:!comments}<a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComment}" class="comment">{$msgBlogNoComments|ucfirst}</a>{/option:!comments}
					{option:comments}
						{option:blogCommentsMultiple}<a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComments}"  class="comment">{$msgBlogNumberOfComments|sprintf:{$commentsCount}}</a>{/option:blogCommentsMultiple}
						{option:!blogCommentsMultiple}<a href="{$widgetBlogRecentArticlesFull.full_url}#{$actComments}" class="comment">{$msgBlogOneComment}</a>{/option:!blogCommentsMultiple}
					{/option:comments}
				</p>
			</footer>
		</article>
	{/iteration:widgetBlogRecentArticlesFull}
	<p class="clearfix"><a class="all" href="{$var|geturlforblock:'blog'}">{$lblAllArticles}</a></p>
{/option:widgetBlogRecentArticlesFull}