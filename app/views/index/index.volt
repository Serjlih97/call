{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<div class="">
			<div class="row">
				{% include '/index/inc/menu.volt' %}
				<div class="col-lg-9 col-md-9 col-md-pull-3 col-sm-9 col-sm-pull-3 col-lg-pull-3 _news-list">
					{% include '/index/inc/news.volt' %}
				</div>
			</div>
	    </div>
	</div>
{% endblock %}
