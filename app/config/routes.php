<?php
$router = new \Phalcon\Mvc\Router();

$router->add(
	"/notfound/", [
		'controller' => 'index',
		'action'     => 'notfound'
	]
);

$router->add(
	"/news/:int/", [
		'controller' => 'news',
		'action'     => 'detail',
		'id'         => 1
	]
);

$router->add(
	"/gallery/albom/:int/", [
		'controller' => 'gallery',
		'action'     => 'albom',
		'id'         => 1
	]
);


$router->handle();
return $router;
