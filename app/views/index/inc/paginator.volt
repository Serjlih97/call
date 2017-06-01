{% if paginator.total_pages != 1 %}
	{% set paginatorStart = (paginator.current > 2) ? paginator.current - 1 : 2 %}
	{% set paginatorEnd = (paginator.current < paginator.total_pages - 1 ) ? paginator.current + 1 : paginator.total_pages - 1 %}
	<ul class="paginator__list">
		<li><a href="javascript:void(0);"{{ (paginator.current == 1) ? ' class="active"' : '' }} onclick="main.getNewsPage({{ paginator.before }});"><</a></li>
		<li><a href="javascript:void(0);"{{ (paginator.current == 1) ? ' class="active"' : '' }} onclick="main.getNewsPage(1);">1</a></li>

		{% if paginator.current > 2 and paginator.current - 1 > 2 %}
			<li><a href="javascript:void(0);">...</a></li>
		{% endif %}

		{% if paginatorStart <= paginatorEnd %}
			{% for iteration in paginatorStart..paginatorEnd %}
				<li><a href="javascript:void(0);"{{ (iteration == paginator.current) ? ' class="active"' : '' }} onclick="main.getNewsPage({{ iteration }});">{{ iteration }}</a></li>
			{% endfor %}
		{% endif %}

		{% if paginator.current < paginator.total_pages - 1 and paginator.current + 1 != paginator.total_pages - 1 %}
			<li><a href="javascript:void(0);">...</a></li>
		{% endif %}

		<li><a href="javascript:void(0);"{{ (paginator.current == paginator.total_pages) ? ' class="active"' : '' }} onclick="main.getNewsPage({{ paginator.total_pages }});">{{ paginator.total_pages }}</a></li>
		<li><a href="javascript:void(0);"{{ (paginator.current == paginator.total_pages) ? ' class="active"' : '' }} onclick="main.getNewsPage({{ paginator.next }});">></a></li>
	</ul>
{% endif %}