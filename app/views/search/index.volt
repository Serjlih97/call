{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<div class="search-tabs">
			<div class="tab {{ (news|length == 0 ) ? 'disable' : '' }} {{ (activetab == 'news') ? 'active' : '' }}" data-tab-id="1" onclick="main.openTab(this, event)">
				Найденно новостей ({{ news|length }})
			</div>
			<div class="tab {{ (pages|length == 0 ) ? 'disable' : '' }} {{ (activetab == 'pages') ? 'active' : '' }}" data-tab-id="2" onclick="main.openTab(this, event)">
				Найденно страниц ({{ pages|length }})
			</div>
		</div>
		{% if news|length > 0 or pages|length > 0 %}
			<div class="tab-content tab-1 {{ (activetab == 'news') ? 'active' : '' }}">
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
			<div class="tab-content tab-2 {{ (activetab == 'pages') ? 'active' : '' }}">
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
		{% else %}
			<h2 style="text-align: center; font-size: 24px;">Ничего не найдено</h2>
		{% endif %}

	</div>
{% endblock %}
