<!-- <div>
	<img src="/img/logo.svg" alt="logo" width="57px">
</div> -->
<!-- header -->
<div class="banner">
	<div class="container">
		<div class="header">
			<div class="logo">
				<a href="/"><img src="/template/images/logo.png" class="img-responsive" alt="" /></a>
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
						{% for key,menuItem in menu %}
							<li
								class="{{ (activeMenu is defined and activeMenu == key) ? 'active ' : ''}}{{ (menuItem|length > 1) ? 'dropdown' : '"' }}"
								{{ (menuItem|length > 1) ? 'onclick="main.showMobSubmenu(this)"' : '"' }}>
								<a href="{{ (menuItem|length > 1) ? 'javasctipt:void(0);' : '/' ~ menuItem[0].url ~ '/' }}" data-hover="{{ menuNames[key] }}">{{ menuNames[key] }}</a>
								{% if menuItem|length > 1 %}
									<ul class="dropdown-list-custom">
										{% for element in menuItem %}
											<li>
												<a href="{{ element.getUrl() }}">{{ element.name }}</a>
											</li>
										{% endfor %}
									</ul>
								{% endif %}
							</li>
						{% endfor %}
						<li><a href="/gallery/" data-hover="Фотогалерея">Фотогалерея</a></li>
						<li><a href="/files/" data-hover="Файлы">Файлы</a></li>
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