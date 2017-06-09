{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<h1 class="gallery-header">Галерея</h1>

		<div class="row">
			{% for albom in alboms %}
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
					<div class="album">
						<a href="{{ albom.getUrl() }}">
							<img src="{{ albom.photo.getPicture() }}" alt="">
							<div class="album__descr">
								<div class="album__descr__left">{{ albom.name }}</div>
								<div class="album__descr__right">{{ albom.photos|length }}</div>
							</div>
						</a>
					</div>
				</div>
			{% endfor %}
		</div>
	</div>
{% endblock %}