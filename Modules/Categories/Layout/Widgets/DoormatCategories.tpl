<h3><a href="{$var|geturlforblock:'Solutions'}">{$lblOurServices|ucfirst}</a></h3>
<ul class="ourServices">
	{iteration:widgetDoormatCategories}
	<li><a href="{$widgetDoormatCategories.full_url}">{$widgetDoormatCategories.title}</a></li>
	{/iteration:widgetDoormatCategories}
</ul>
