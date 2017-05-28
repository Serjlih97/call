{% extends "layouts/main.volt" %}

{% block content %}
	<div class="container">
		<div class="">	
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
					<section class="post">
						<div class="post__header clearfix">
							<h2 class="post__name"><a href="#">Какой-то интересный новостной факт</a></h2>
							<div class="post__date">27.08.17</div>
						</div>
						<div class="post__body clearfix">
							<div class="post__img">
								<a href="#"><img src="https://image.jimcdn.com/app/cms/image/transf/dimension=682x2048:format=jpg/path/scabc9ec8af3e984c/image/ic27f87c5c51fa73e/version/1415806910/image.jpg" alt=""></a>
							</div>
							<!-- если фотки нет, то добавить вот этот классу .post__text--full блоку ниже -->
							<div class="post__text">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur, consectetur?</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita fuga incidunt, perspiciatis quo iusto blanditiis aliquid qui corporis eaque enim ipsam explicabo omnis, molestiae provident facere asperiores. Exercitationem, tempore, architecto.</p>
							</div>
						</div>
						<div class="clearfix reade-more text-right">
							<a href="#" class="btn btn-primary">Читать далее</a>
						</div>
					</section>
					<section class="post">
						<div class="post__header clearfix">
							<h2 class="post__name"><a href="#">Какой-то интересный новостной факт</a></h2>
							<div class="post__date">27.08.17</div>
						</div>
						<div class="post__body clearfix">
							<div class="post__img">
								<a href="#"><img src="https://image.jimcdn.com/app/cms/image/transf/dimension=682x2048:format=jpg/path/scabc9ec8af3e984c/image/ic27f87c5c51fa73e/version/1415806910/image.jpg" alt=""></a>
							</div>
							<div class="post__text">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur, consectetur?</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita fuga incidunt, perspiciatis quo iusto blanditiis aliquid qui corporis eaque enim ipsam explicabo omnis, molestiae provident facere asperiores. Exercitationem, tempore, architecto.</p>
							</div>
						</div>
						<div class="clearfix reade-more text-right">
							<a href="#" class="btn btn-primary">Читать далее</a>
						</div>
					</section>
					<section class="post">
						<div class="post__header clearfix">
							<h2 class="post__name"><a href="#">Какой-то интересный новостной факт</a></h2>
							<div class="post__date">27.08.17</div>
						</div>
						<div class="post__body clearfix">
							<div class="post__img">
								<a href="#"><img src="https://image.jimcdn.com/app/cms/image/transf/dimension=682x2048:format=jpg/path/scabc9ec8af3e984c/image/ic27f87c5c51fa73e/version/1415806910/image.jpg" alt=""></a>
							</div>
							<div class="post__text">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur, consectetur?</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita fuga incidunt, perspiciatis quo iusto blanditiis aliquid qui corporis eaque enim ipsam explicabo omnis, molestiae provident facere asperiores. Exercitationem, tempore, architecto.</p>
							</div>
						</div>
						<div class="clearfix reade-more text-right">
							<a href="#" class="btn btn-primary">Читать далее</a>
						</div>
					</section>
					<section class="post">
						<div class="post__header clearfix">
							<h2 class="post__name"><a href="#">Какой-то интересный новостной факт</a></h2>
							<div class="post__date">27.08.17</div>
						</div>
						<div class="post__body clearfix">
							<div class="post__img">
								<a href="#"><img src="https://image.jimcdn.com/app/cms/image/transf/dimension=682x2048:format=jpg/path/scabc9ec8af3e984c/image/ic27f87c5c51fa73e/version/1415806910/image.jpg" alt=""></a>
							</div>
							<div class="post__text">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur, consectetur?</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita fuga incidunt, perspiciatis quo iusto blanditiis aliquid qui corporis eaque enim ipsam explicabo omnis, molestiae provident facere asperiores. Exercitationem, tempore, architecto.</p>
							</div>
						</div>
						<div class="clearfix reade-more text-right">
							<a href="#" class="btn btn-primary">Читать далее</a>
						</div>
					</section>
					<section class="post">
						<div class="post__header clearfix">
							<h2 class="post__name"><a href="#">Какой-то интересный новостной факт</a></h2>
							<div class="post__date">27.08.17</div>
						</div>
						<div class="post__body clearfix">
							<div class="post__img">
								<a href="#"><img src="https://image.jimcdn.com/app/cms/image/transf/dimension=682x2048:format=jpg/path/scabc9ec8af3e984c/image/ic27f87c5c51fa73e/version/1415806910/image.jpg" alt=""></a>
							</div>
							<div class="post__text">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur, consectetur?</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita fuga incidunt, perspiciatis quo iusto blanditiis aliquid qui corporis eaque enim ipsam explicabo omnis, molestiae provident facere asperiores. Exercitationem, tempore, architecto.</p>
							</div>
						</div>
						<div class="clearfix reade-more text-right">
							<a href="#" class="btn btn-primary">Читать далее</a>
						</div>
					</section>
					<section class="post">
						<div class="post__header clearfix">
							<h2 class="post__name"><a href="#">Какой-то интересный новостной факт</a></h2>
							<div class="post__date">27.08.17</div>
						</div>
						<div class="post__body clearfix">
							<div class="post__img">
								<a href="#"><img src="https://image.jimcdn.com/app/cms/image/transf/dimension=682x2048:format=jpg/path/scabc9ec8af3e984c/image/ic27f87c5c51fa73e/version/1415806910/image.jpg" alt=""></a>
							</div>
							<div class="post__text">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur, consectetur?</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita fuga incidunt, perspiciatis quo iusto blanditiis aliquid qui corporis eaque enim ipsam explicabo omnis, molestiae provident facere asperiores. Exercitationem, tempore, architecto.</p>
							</div>
						</div>
						<div class="clearfix reade-more text-right">
							<a href="#" class="btn btn-primary">Читать далее</a>
						</div>
					</section>
					<section class="post">
						<div class="post__header clearfix">
							<h2 class="post__name"><a href="#">Какой-то интересный новостной факт</a></h2>
							<div class="post__date">27.08.17</div>
						</div>
						<div class="post__body clearfix">
							<div class="post__img">
								<a href="#"><img src="https://image.jimcdn.com/app/cms/image/transf/dimension=682x2048:format=jpg/path/scabc9ec8af3e984c/image/ic27f87c5c51fa73e/version/1415806910/image.jpg" alt=""></a>
							</div>
							<div class="post__text">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur, consectetur?</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita fuga incidunt, perspiciatis quo iusto blanditiis aliquid qui corporis eaque enim ipsam explicabo omnis, molestiae provident facere asperiores. Exercitationem, tempore, architecto.</p>
							</div>
						</div>
						<div class="clearfix reade-more text-right">
							<a href="#" class="btn btn-primary">Читать далее</a>
						</div>
					</section>
					
					<div class="paginator">
						<ul class="paginator__list">
							<li><a href="#" class="active"><</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="javascript:void(0)">...</a></li>
							<li><a href="#">24</a></li>
							<li><a href="#">></a></li>
						</ul>
					</div>
				</div>
			</div>
	    </div>
	</div>
{% endblock %}
