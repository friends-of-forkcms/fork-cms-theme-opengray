{*
	variables that are available:
	- {$searchResults}: contains an array with all items, each element contains data about the item
	- {$searchTerm}: the term that has been searched for
*}

{option:searchTerm}
	<div id="searchResults" class="clearfix">
			{option:!searchResults}
				<div class="bd">
					{$msgSearchNoItems}
				</div>
			{/option:!searchResults}
			{option:searchResults}
				{iteration:searchResults}
					<div class="result">
						<h3><a href="{$searchResults.full_url}" title="{$searchResults.title}">{$searchResults.title}</a></h3> 
						<div class="bd content">
							{option:!searchResults.introduction}<p>{$searchResults.text|truncate:200}</p>{/option:!searchResults.introduction}
							{option:searchResults.introduction}{$searchResults.introduction}{/option:searchResults.introduction}
						</div>
					</div>
				{/iteration:searchResults}
			{/option:searchResults}
	</div>
	{include:Core/Layout/Templates/Pagination.tpl}
{/option:searchTerm}