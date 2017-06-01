{% for news in newsPaginator.items %}
	<section class="post">
		<div class="post__header clearfix">
			<h2 class="post__name"><a href="{{ news.getUrl() }}">{{ news.name }}</a></h2>
			<div class="post__date">{{ news.getDate() }}</div>
		</div>
		<div class="post__body clearfix">
			{% if news.getPreview() %}
				<div class="post__img">
					<a href="#"><img src="{{ news.getPreview() }}" alt="{{ news.name }}"></a>
				</div>
			{% endif %}
			<div class="post__text{{ (news.getPreview()) ? '' : '--full' }}">
				{{ news.html|striptags }}
			</div>
		</div>
		<div class="clearfix reade-more text-right">
			<a href="{{ news.getUrl() }}" class="btn btn-primary">Читать далее</a>
		</div>
	</section>
{% endfor %}
<div class="paginator">
	{% set functionName = 'coll.getNewsPage' %}
	{% set paginator = newsPaginator %}
	{% include '/index/inc/paginator.volt' %}
</div>