{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<h1>{{ page.name }}</h1>
		{{ page.html }}

		{% set slider = page.getPhotoSlider() %}
		{% if page.show_photo_slider and slider %}
			{% include '/inc/slider.volt' %}
		{% endif %}

		{% set videoSlider = page.getVideoSlider() %}
		{% if page.show_video_slider and videoSlider %}
			{% include '/inc/videoSlider.volt' %}
		{% endif %}

		{% if page.getFiles() %}
			{% set files = page.getFiles() %}
			{% include '/inc/files.volt' %}
		{% endif %}
	</div>
{% endblock %}
