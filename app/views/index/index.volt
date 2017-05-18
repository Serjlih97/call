{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<div class="load_more">	
			<div class="row">
				<div class="col-lg-3 col-md-3 col-lg-push-9 col-sm-3 col-sm-push-9 col-md-push-9">
					<div class="posts">
						<h4>Дополнительное меню</h4>
						<h6 class="parent-menu">
							<a href="#" onclick="main.showSubmenu(this, event)">Многофункциональный центр прикладных квалификаций (МФЦПК)</a>
							<ul class="sub-menu">
								<li><a href="#">Что такое МФЦПК</a></li>
								<li><a href="#">Приказ о создании МФЦПК</a></li>
								<li><a href="#">Положение об МФЦПК</a></li>
								<li><a href="#">Структура управления МФЦПК</a></li>
								<li><a href="#">Правила приема МФЦПК</a></li>
							</ul>
						</h6>
						<h6><a href="#">Полезные ссылки</a></h6>
						<h6><a href="#">Обратная связь</a></h6>
					</div>
				</div>
				<div class="col-lg-9 col-md-9 col-md-pull-3 col-sm-9 col-sm-pull-3 col-lg-pull-3">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae minima, temporibus facere odit? Nemo ab nam amet dignissimos reiciendis, cumque labore consectetur, possimus in dolores quidem provident at totam deleniti.</p>
				</div>
				
			</div>
	    </div>
	</div>
{% endblock %}
