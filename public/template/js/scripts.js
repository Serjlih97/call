var main = {
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