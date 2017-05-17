$(document).ready(function()
{
	main.init();
})

var main = {
	init: function()
	{
		this.fancyBox();
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
	}
}