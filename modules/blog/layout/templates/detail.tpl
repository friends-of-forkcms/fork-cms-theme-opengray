<div id="blogDetail">
<h1>{$item.title}</h1>
	<div id="metaDesc" class="clearfix">
		<ul>
			<li class="articleMeta">
				{* Written by *}
				{$msgWrittenBy|ucfirst|sprintf:{$item.user_id|usersetting:'nickname'}}

				{* Written on *}
				{$lblOn} <time itemprop="datePublished" datetime="{$item.publish_on|date:'Y-m-d\TH:i:s'}">{$item.publish_on|date:{$dateFormatLong}:{$LANGUAGE}}</time>

				{* Category*}
				{$lblIn} {$lblThe} {$lblCategory} <a itemprop="articleSection" href="{$item.category_full_url}" title="{$item.category_title}">{$item.category_title}</a>{option:!item.tags}.{/option:!item.tags}

				{* Tags *}
				{option:item.tags}
					{$lblWith} {$lblThe} {$lblTags}
					<span itemprop="keywords">
						{iteration:item.tags}
							<a href="{$item.tags.full_url}" rel="tag" title="{$item.tags.name}">{$item.tags.name}</a>{option:!item.tags.last}, {/option:!item.tags.last}{option:item.tags.last}.{/option:item.tags.last}
						{/iteration:item.tags}
					</span>
				{/option:item.tags}
			</li>
			<li class="commentsCounter">{* Comments *}
			{option:!comments}<a href="{$item.full_url}#{$actComment}" itemprop="discussionUrl">{$msgBlogNoComments|ucfirst}</a>{/option:!comments}
			{option:comments}
				{option:blogCommentsMultiple}<a href="{$item.full_url}#{$actComments}" itemprop="discussionUrl">{$msgBlogNumberOfComments|sprintf:{$commentsCount}}</a>{/option:blogCommentsMultiple}
				{option:!blogCommentsMultiple}<a href="{$item.full_url}#{$actComments}" itemprop="discussionUrl">{$msgBlogOneComment}</a>{/option:!blogCommentsMultiple}
			{/option:comments}
			</li>
		</ul>
	</div>
	{option:item.related}
		<aside class="aside"> 
			<ul>
				{option:item.other_articles}
						{iteration:item.other_articles}
						<li>
							{$item.other_articles.language_label}: <a href="{$item.other_articles.full_url}">{$item.other_articles.title}</a>
						</li>
						{/iteration:item.other_articles} 
				{/option:item.other_articles}
			</ul>
		</aside>
	{/option:item.related}
	<div class="item clearfix" itemprop="articleBody">
		{option:item.image}<div class="imageHolder"><img src="{$FRONTEND_FILES_URL}/blog/images/source/{$item.image}" alt="{$item.title}" itemprop="image" /></div>{/option:item.image}
		<div id="detailText"{option:item.image} class="contentHolder"{/option:item.image}>
			{$item.text}
		</div>
	</div>

	{option:comments}
		<div id="blogComments">
			<a name="{$actComments}"></a>
				<h2><span>{$commentsCount}</span> {$lblComments}</h2>
					{iteration:comments}
						<div id="comment-{$comments.id}" class="comment" itemprop="comment" itemscope itemtype="http://schema.org/UserComments">
							<meta itemprop="discusses" content="{$item.title}" />
							<div class="imageHolder">
								{option:comments.website}<a href="{$comments.website}">{/option:comments.website}
									<img src="{$FRONTEND_CORE_URL}/layout/images/default_author_avatar.gif" width="48" height="48" alt="{$comments.author}" class="replaceWithGravatar" data-gravatar-id="{$comments.gravatar_id}" />
								{option:comments.website}</a>{/option:comments.website}
							</div>
							<div class="commentContent">
								<p class="commentAuthor" itemscope itemtype="http://schema.org/Person">
									{option:comments.website}<a href="{$comments.website}" itemprop="url">{/option:comments.website}
										<span itemprop="creator name">{$comments.author}</span>
									{option:comments.website}</a>{/option:comments.website}
									{$lblWrote}
									<time itemprop="commentTime" datetime="{$comments.created_on|date:'Y-m-d\TH:i:s'}">{$lblOn} {$comments.created_on|date:'d/m'}</time>
								</p>
								<div class="commentText content" itemprop="commentText">
									{$comments.text|cleanupplaintext}
								</div>
							</div>
						</div>
					{/iteration:comments}
		</div>
	{/option:comments}
	{option:item.allow_comments}
		<section id="blogCommentForm" class="mod">
			<div class="inner">
				<header class="hd">
					<h2 id="{$actComment}">{$msgComment|ucfirst}</h2>
				</header>
				<div class="bd">
					{option:commentIsInModeration}<div class="message warning"><p>{$msgBlogCommentInModeration}</p></div>{/option:commentIsInModeration}
					{option:commentIsSpam}<div class="message error"><p>{$msgBlogCommentIsSpam}</p></div>{/option:commentIsSpam}
					{option:commentIsAdded}<div class="message success"><p>{$msgBlogCommentIsAdded}</p></div>{/option:commentIsAdded}
					{form:commentsForm}
						<p class="bigInput{option:txtMessageError} errorArea{/option:txtMessageError}">
							{$txtMessage} {$txtMessageError}
						</p>
						<p class="bigInput {option:txtAuthorError}errorArea{/option:txtAuthorError}">

							{$txtAuthor}<label for="author">{$lblName|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>{$txtAuthorError}
						</p>
						<p class="bigInput {option:txtEmailError}errorArea{/option:txtEmailError}">

							{$txtEmail}<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>{$txtEmailError}
						</p>
						<p class="bigInput{option:txtWebsiteError} errorArea{/option:txtWebsiteError}">
							{$txtWebsite}<label for="website">{$lblWebsite|ucfirst}</label>{$txtWebsiteError}
						</p>
						<p>
							<input class="inputSubmit" type="submit" name="comment" value="{$msgComment|ucfirst}" />
						</p>
					{/form:commentsForm}
				</div>
			</div>
		</section>
	{/option:item.allow_comments}
</div>
