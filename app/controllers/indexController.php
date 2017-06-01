<?php
use Phalcon\Paginator\Adapter\QueryBuilder as PaginatorQueryBuilder;
/**
* Контроллер для главной странице
*/
class IndexController extends ControllerBase
{
	public function indexAction()
	{
		$pages = Pages::find(['conditions' => 'category > 4 and url != ""', 'order' => 'sort asc']);

		// Формируем страницы по категориям для бокового меню
		$rightMenu = [];
		$rightMenuNames = [];
		foreach($pages as $page)
		{
			$rightMenu[$page->category][] = $page;
			$rightMenuNames[$page->parentCategory->id] = $page->parentCategory->name;
		}

		// Полезные ссылки для бокового меню
		$links = Links::find();

		$newsBuilder    = $this->modelsManager->createBuilder()
			->from('News')
			->orderBy('date desc');

		$newsPaginator = new PaginatorQueryBuilder([
			'builder' => $newsBuilder,
			'limit'   => 5,
			'page'    => 1
		]);
		$newsPaginator = $newsPaginator->getPaginate();

		$this->view->setVar('rightMenu', $rightMenu);
		$this->view->setVar('rightMenuNames', $rightMenuNames);
		$this->view->setVar('links', $links);
		$this->view->setVar('newsPaginator', $newsPaginator);
	}

	public function notfoundAction()
	{
		header("HTTP/1.0 404 Not Found");
	}
}
