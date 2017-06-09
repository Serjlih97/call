$(document).ready(function()
{
	main.init();
})

var main = {
	init: function()
	{
		this.fancyBox();
		this.initSlider();
	},

	fancyBox: function()
	{
		if($('.fancy-box').length > 0)
			$('.fancy-box').fancyBox();
	},

	showSubmenu: function(instance, event)
	{
		event.preventDefault();
		$(instance).siblings('.sub-menu').slideToggle();
	},

	showMobSubmenu: function(instance)
	{
		$(instance).toggleClass('show-sub-menu');
	},

	initSlider: function()
	{
		if($('.slider').length > 0)
		{
			$('.big-slider').slick({
				slidesToShow: 1,
				slidesToScroll: 1,
				arrows: true,
				fade: true,
				asNavFor: '.small-slider',
				adaptiveHeight: true,
				responsive: [
				{
					breakpoint: 350,
					settings: {
						arrows: false
					}
				}]
			});
			$('.small-slider').slick(
			{
				slidesToShow: 5,
				slidesToScroll: 1,
				asNavFor: '.big-slider',
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
				$('._news-list').html(e.html);
		});
	},
	checkSearch: function(instance)
	{
		if($(instance).find('input:text').val() == 'Поиск...')
			return false;

		return true;
	},

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