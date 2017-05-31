{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<h1 class="gallery-header">Галерея</h1>

		<div class="row">
			{% for albom in alboms %}
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
					<a href="{{ albom.getUrl() }}">
						<img src="{{ albom.photo.getPicture() }}" alt="">
					</a>
				</div>
			{% endfor %}
		</div>
	</div>
{% endblock %}