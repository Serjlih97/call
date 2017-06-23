$(document).ready(function()
{
	main.init();
})

// основной объект
var main = {
	// инициализация плагинов
	init: function()
	{
		this.fancyBox();
		this.initSlider({
			bigSlider: '._photo-big-slider',
			smallSlider: '._photo-small-slider'
		});
		this.initSlider({
			bigSlider: '._video-big-slider',
			smallSlider: '._video-small-slider'
		});

		if($('.small-slider__item').length < 6)
		{
			$('.small-slider__item').parents('.slick-track').addClass('center-items');
		}
	},

	// функция для инициализации галерии
	fancyBox: function()
	{
		if($('.fancy-box').length > 0)
			$('.fancy-box').fancyBox();
	},

	// функция для раскратия меню второго уровня
	showSubmenu: function(instance, event)
	{
		event.preventDefault();
		$(instance).siblings('.sub-menu').slideToggle();
	},

	// функция для раскрытия списка подпунктов осного меню на мобильных устройствах
	showMobSubmenu: function(instance)
	{
		$(instance).toggleClass('show-sub-menu');
	},

	// функция для инициалзии слайдеров
	initSlider: function(sliders)
	{
		if($('.slider').length > 0)
		{
			$(sliders.bigSlider).slick({
				slidesToShow: 1,
				slidesToScroll: 1,
				arrows: true,
				fade: true,
				asNavFor: sliders.smallSlider,
				adaptiveHeight: true,
				responsive: [
				{
					breakpoint: 350,
					settings: {
						arrows: false
					}
				}]
			});
			$(sliders.smallSlider).slick(
			{
				slidesToShow: 5,
				slidesToScroll: 1,
				asNavFor: sliders.bigSlider,
				dots: false,
				centerMode: true,
				focusOnSelect: true,
				responsive: [
				{
					breakpoint: 931,
					settings: {
						slidesToShow: 4,
					}
				},
				{
					breakpoint: 769,
					settings: {
						slidesToShow: 3,
					}
				},
				{
					breakpoint: 350,
					settings: {
						slidesToShow: 2,
						arrows: false
					}
				}]
			})
		}
	},

	// функция для получения следующей страницы для пагинации
	getNewsPage:function(page)
	{
		$.ajax({
			url      : '/ajax/getNews/',
			type     : 'POST',
			dataType : 'json',
			data     : {page:page}
		}).done(function(e)
		{
			if(typeof e.success != 'undefined' && e.success)
			{
				$('._news-list').html(e.html);
				$(document).scrollTop($('._news-list').offset().top);
			}
		});
	},

	// функция для проверки заполненности поискового поля
	checkSearch: function(instance)
	{
		if($(instance).find('input:text').val() == 'Поиск...')
			return false;

		return true;
	},

	// функция для открытия выбранного таба
	openTab: function(instance, event)
	{
		event.preventDefault();
		if(!$(instance).hasClass('active'))
		{
			var tabId = $(instance).data('tab-id');
			$(instance).siblings().removeClass('active');
			$(instance).addClass('active');
			$('.tab-' + tabId).siblings().removeClass('active');
			$('.tab-' + tabId).addClass('active');
		}
	}
}