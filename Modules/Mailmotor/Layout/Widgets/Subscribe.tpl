<div class="newsletterBlock">
	<h3>{$lblStayInTouch|ucfirst}</h3>
	<form action="{$var|geturlforblock:'Mailmotor':'Subscribe'}" method="post">
					<input type="hidden" name="form" value="subscribe" />
					<input type="text" placeholder="{$lblMailPlaceholder}" value="" id="email" name="email" class="inputText" />
					<input id="send" class="inputSubmit" type="submit" name="send" value="{$lblSubscribe|ucfirst}" />
	</form>
</div>
