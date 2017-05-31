{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<h1>{{ news.name }}</h1>
		{% if news.getPreview() %}
			<img src="{{ news.getPreview() }}" alt="{{ news.name }}">
		{% endif %}
		{{ news.html }}

		{% set slider = news.getPhotoSlider() %}
		{% if news.show_photo_slider and slider %}
			{% include '/inc/slider.volt' %}
		{% endif %}

		{% if news.getFiles() %}
			{% set files = news.getFiles() %}
			{% include '/inc/files.volt' %}
		{% endif %}
	</div>
{% endblock %}
