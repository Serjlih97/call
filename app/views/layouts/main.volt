<!doctype html>
<html class="no-js" lang="">
	<head>
		<title>{{ title }}</title>
		<link href="/template/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
		<link href="/template/css/slick.css" rel="stylesheet" type="text/css" media="all">
		<link href="/template/css/slick-theme.css" rel="stylesheet" type="text/css" media="all">
		<link href="/template/css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="/template/css/jquery.fancybox.min.css" rel="stylesheet" type="text/css" media="all" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<script src="/template/js/jquery.min.js"></script>
		<script src="/template/js/jquery.fancybox.min.js"></script>
		<script src="/template/js/slick.min.js"></script>
		<script src="/template/js/scripts.js"></script>
	</head>
	<body>
		{% block header %}
			<section>
				{% include '/inc/header.volt' %}
			</section>
		{% endblock %}

		<section class="content">
			{% block content %}
			{% endblock %}
		</section>

		{% block footer %}
			<section>
				{% include '/inc/footer.volt' %}
			</section>
		{% endblock %}

		{% block footerScripts %}
		{% endblock %}
	</body>
</html>
