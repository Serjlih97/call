{% extends "layouts/main.volt" %}

{% block content %}
	<h1>{{ page.name }}</h1>
	{{ page.html }}
{% endblock %}
