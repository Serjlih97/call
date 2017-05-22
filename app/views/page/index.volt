{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<h1>{{ page.name }}</h1>
		{{ page.html }}
	</div>
{% endblock %}
