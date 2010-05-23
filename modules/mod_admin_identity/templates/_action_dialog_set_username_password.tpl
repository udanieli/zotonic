
<p>
	{_ Give an unique username and a password. Usernames and passwords are case sensitive, so be careful when entering them. _}
	{% if username and id /= 1 %}
		<br/>{_ Click “delete” to remove any existing username/ password from the person, the person won't be an user anymore. _}
	{% endif %}
</p>

{% wire id=#form type="submit" postback="set_username_password" delegate=delegate %}
<form id="{{ #form }}" method="POST" action="postback">

	<input type="hidden" name="id" value="{{ id }}" />

	<div class="new-predicate-wrapper">
		<p>
			<label for="new_username" style="color:white">{_ Username _}</label>
			<input type="text" id="new_username" name="new_username" value="{{ username|escape }}" />
			{% validate id="new_username" type={presence} %}
		</p>

		<p>
			<label for="new_password" style="color:white">{_ Password _}</label>
			<input type="text" id="new_password" name="new_password" value="{{ password|escape }}" />
			{% validate id="new_password" type={presence} %}
		</p>
		
		<button type="submit">{_ Save _}</button>
		
		{% button action={dialog_close} text=_"Cancel" %}
		
		{% if username and id /= 1 %}
			{% button action={dialog_delete_username id=id on_success=on_delete} text=_"Delete" %}
		{% endif %}
	</div>
</form>

