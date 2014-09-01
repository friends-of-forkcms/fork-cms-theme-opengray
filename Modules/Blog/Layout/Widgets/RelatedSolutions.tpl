{option:widgetBlogRelatedSolutions} 
<div class="blogWidget">
	<h3>{$lblBlog}</h3>
	<ul>
		{iteration:widgetBlogRelatedSolutions}
			<li><span>{$widgetBlogRelatedSolutions.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}</span><a href="{$widgetBlogRelatedSolutions.full_url}">{$widgetBlogRecentArticlesList.title}</a></li>
		{/iteration:widgetBlogRelatedSolutions}
	</ul>
	<a class="all moreArticles" href="{$var|geturlforblock:'Blog'}">{$lblAllArticles}</a></div>
{/option:widgetBlogRelatedSolutions}  
