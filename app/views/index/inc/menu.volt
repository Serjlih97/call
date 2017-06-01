<div class="col-lg-3 col-md-3 col-lg-push-9 col-sm-3 col-sm-push-9 col-md-push-9">
	{% if links|length > 0 or rightMenuNames|length > 0 %}
		<div class="posts">
			<h4>Дополнительное меню</h4>
			{% for keyMenu,menuName in rightMenuNames %}
				<h6 class="parent-menu">
					<a href="javascript:void(0);" onclick="main.showSubmenu(this, event)">{{ menuName }}</a>
					<ul class="sub-menu">
						{% for page in rightMenu[keyMenu] %}
							<li>
								<a href="{{ page.getUrl() }}">{{ page.name }}</a>
							</li>
						{% endfor %}
					</ul>
				</h6>
			{% endfor %}
			{% if links|length > 0 %}
				<h6 class="parent-menu">
					<a href="javascript:void(0);" onclick="main.showSubmenu(this, event);">Полезные ссылки</a>
					<ul class="sub-menu">
						{% for link in links %}
						    <li><a href="{{ link.link }}" target="_blank">{{ link.name }}</a></li>
						{% endfor %}
					</ul>
				</h6>
			{% endif %}
		</div>
	{% endif %}
</div>