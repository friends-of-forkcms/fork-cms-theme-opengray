{*
	variables that are available:
	- {$widgetBlogRecentArticlesList}: contains an array with all posts, each element contains data about the post
*}

{option:widgetBlogRecentArticlesList}
<div class="navBlockWhite blogWidget">
	<h3>{$lblBlogOut|ucfirst}</h3>
	<ul>
		{iteration:widgetBlogRecentArticlesList}
			<li><span>{$widgetBlogRecentArticlesList.publish_on|date:'d/m':{$LANGUAGE}}</span><a href="{$widgetBlogRecentArticlesList.full_url}" title="{$widgetBlogRecentArticlesList.title}">{$widgetBlogRecentArticlesList.title}</a></li>
		{/iteration:widgetBlogRecentArticlesList}
		<li class="lastChild"><a class="subAll" href="{$var|geturlforblock:'blog'}">{$lblAllArticles|ucfirst}</a></li>
	</ul>
</div>
{/option:widgetBlogRecentArticlesList}
