{*
	variables that are available:
	- {$searchResults}: contains an array with all items, each element contains data about the item
	- {$searchTerm}: the term that has been searched for
*}

<div id="searchIndex" class="clearfix">
	{form:search}
		<h2>{$lblSearchAgain|ucfirst}</h2> 
			{$txtQ} 
			<input id="submit" class="inputSubmit" type="submit" name="submit" value="{$lblSearch|ucfirst}" />
	{/form:search} 
</div>
<div id="searchContainer">
	{$txtQError}
	{include:Modules/Search/Layout/Templates/Results.tpl}
</div>
