{*
	variables that are available:
	- {$widgetBlogRecentArticlesFirst}: contains an array with all posts, each element contains data about the post
*}
<div class="eventsContainer clearfix">
<h3>{$lblRecentArticles|ucfirst}</h3>
{option:widgetBlogRecentArticlesFirst}
{iteration:widgetBlogRecentArticlesFirst}   
{option:widgetBlogRecentArticlesFirst.first}
<article>
	{option:widgetBlogRecentArticlesFirst.image}<a href="{$widgetBlogRecentArticlesFirst.full_url}"><img src="{$FRONTEND_FILES_URL}/blog/images/source/{$widgetBlogRecentArticlesFirst.image}" /></a>{/option:widgetBlogRecentArticlesFirst.image}  
	<div class="hGroup">
		<h4><a href="{$widgetBlogRecentArticlesFirst.full_url}" title="{$widgetBlogRecentArticlesFirst.title}">{$widgetBlogRecentArticlesFirst.title}</a></h4>
		<span class="meta">{$widgetBlogRecentArticlesFirst.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}</span>
		<p class="comments">
			{* Comments *}
		{option:!comments}<a href="{$widgetBlogRecentArticlesFirst.full_url}#{$actComment}" itemprop="discussionUrl">{$msgBlogNoComments|ucfirst}</a>{/option:!comments}
		{option:comments}
			{option:blogCommentsMultiple}<a href="{$widgetBlogRecentArticlesFirst.full_url}#{$actComments}" itemprop="discussionUrl">{$msgBlogNumberOfComments|sprintf:{$commentsCount}}</a>{/option:blogCommentsMultiple}
			{option:!blogCommentsMultiple}<a href="{$widgetBlogRecentArticlesFirst.full_url}#{$actComments}" itemprop="discussionUrl">{$msgBlogOneComment}</a>{/option:!blogCommentsMultiple}
		{/option:comments}</span>
	</div>
	<p>{option:!widgetBlogRecentArticlesFirst.introduction}{$widgetBlogRecentArticlesFirst.text|truncate:340}{/option:!widgetBlogRecentArticlesFirst.introduction}
	{option:widgetBlogRecentArticlesFirst.introduction}{$widgetBlogRecentArticlesFirst.introduction|truncate:340}{/option:widgetBlogRecentArticlesFirst.introduction}
	<a href="{$widgetBlogRecentArticlesFirst.full_url}">{$lblReadMore}</a></p>
</article>
{/option:widgetBlogRecentArticlesFirst.first}
{/iteration:widgetBlogRecentArticlesFirst}   

<ul>
{option:!widgetBlogRecentArticlesFirst.first}
{iteration:widgetBlogRecentArticlesFirst}
	<li><span>{$widgetBlogRecentArticlesFirst.publish_on|date:'d/m'}</span><a href="{$widgetBlogRecentArticlesFirst.full_url}" title="{$widgetBlogRecentArticlesFirst.title}">{$widgetBlogRecentArticlesFirst.title}</a></li>
{/iteration:widgetBlogRecentArticlesFirst}
{/option:!widgetBlogRecentArticlesFirst.first} 
</ul>
<a class="subAll" href="{$var|geturlforblock:'Blog':'Index'}">{$lblAllArticles|ucfirst}</a>
{/option:widgetBlogRecentArticlesFirst}
</div>             
