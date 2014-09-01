{option:widgetPagesRelatedBlogArticles} 
<div class="blogWidget clearfix">
	<h3>{$lblBlog}</h3>
	<ul>
		{iteration:widgetPagesRelatedBlogArticles}
		<li>
			<span>{$widgetPagesRelatedBlogArticles.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}</span><a href="{$widgetPagesRelatedBlogArticles.full_url}">{$widgetPagesRelatedBlogArticles.title}</a></li>
		{/iteration:widgetPagesRelatedBlogArticles}
	</ul>
	<a class="all moreArticles" href="{$var|geturlforblock:'Blog'}">{$lblAllArticles}</a></div>
{/option:widgetPagesRelatedBlogArticles}
