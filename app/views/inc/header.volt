<!-- <div>
	<img src="/img/logo.svg" alt="logo" width="57px">
</div> -->
<!-- header -->
<div class="banner">
	<div class="container">
		<div class="header">
			<div class="logo">
				<a href="index.html"><img src="/template/images/logo.png" class="img-responsive" alt="" /></a>
			</div>
			<div class="header-right">
				<div class="search2">
					<form>
						<input type="text" value="Поиск..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}">
						<input type="submit" value="">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"> </div>
			</div>
				<div class="head-nav">
					<span class="menu"></span>
					<ul class="cl-effect-15">
						<li class="active dropdown" onclick="main.showMobSubmenu(this)">
							<a href="index.html">Колледж</a>
							<ul class="dropdown-list-custom">
								<li>
									<a href="#">Основные сведенья</a>
								</li>
								<li>
									<a href="#">Отчет о результатах самообследования</a>
								</li>
								<li>
									<a href="#">Структура колледжа</a>
								</li>
								<li>
									<a href="#">История</a>
								</li>
								<li>
									<a href="#">Образовательные стандарты</a>
								</li>
								<li>
									<a href="#">Руководство и педагогический состав</a>
								</li>
								<li>
									<a href="#">Новости</a>
								</li>
								<li>
									<a href="#">Нормативные документы</a>
								</li>
								<li>
									<a href="#">Материально-техническая база</a>
								</li>
								<li>
									<a href="#">Платные услуги</a>
								</li>
							</ul>
						</li>
						<li><a href="about.html" data-hover="Контакты">Контакты</a></li>
						<li><a href="photos.html" data-hover="АБИТУРИЕНТУ">АБИТУРИЕНТУ</a></li>
						<li><a href="contact.html" data-hover="Специальности">Специальности</a></li>
						<li><a href="404.html" data-hover="Фотогалерея">Фотогалерея</a></li>
						<li><a href="contact.html" data-hover="Учебные планы">Учебные планы</a></li>
						<div class="clearfix"> </div>
					</ul>
				</div>

				<!-- script-for-nav -->
				<script>
					$( "span.menu" ).click(function() {
					  $( ".head-nav ul" ).slideToggle(300, function() {
					  });
					});
				</script>
				<!-- script-for-nav -->
			</div> 
		</div>				 
	</div> 
</div>
<!-- header -->