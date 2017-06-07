{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<h2>Найденно новостей ({{ news|length }})</h2>
		<h2>Найденно страниц ({{ pages|length }})</h2>
		<div class="tab-1">
			{% for newsElement in news %}
				<section class="post">
					<div class="post__header clearfix">
						<h2 class="post__name"><a href="{{ newsElement.getUrl() }}">{{ newsElement.name }}</a></h2>
						<div class="post__date">{{ newsElement.getDate() }}</div>
					</div>
					<div class="post__body clearfix">
						{% if newsElement.getPreview() %}
							<div class="post__img">
								<a href="#"><img src="{{ newsElement.getPreview() }}" alt="{{ newsElement.name }}"></a>
							</div>
						{% endif %}
						<div class="post__text{{ (newsElement.getPreview()) ? '' : '--full' }}">
							{{ newsElement.html|striptags }}
						</div>
					</div>
					<div class="clearfix reade-more text-right">
						<a href="{{ newsElement.getUrl() }}" class="btn btn-primary">Читать далее</a>
					</div>
				</section>
			{% endfor %}
		</div>
		<div class="tab-2">
			{% for page in pages %}
			    <section class="post">
					<div class="post__header clearfix">
						<h2 class="post__name"><a href="{{ page.getUrl() }}">{{ page.name }}</a></h2>
					</div>
					<div class="post__body clearfix">
						<div class="post__text--full">
							{{ page.html|striptags }}
						</div>
					</div>
					<div class="clearfix reade-more text-right">
						<a href="{{ page.getUrl() }}" class="btn btn-primary">Перейти на страницу</a>
					</div>
				</section>
			{% endfor %}
		</div>
	</div>
{% endblock %}
