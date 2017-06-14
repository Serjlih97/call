<?php
/**
* Контроллер для главной странице
*/
class SearchController extends ControllerBase
{
	public function indexAction()
	{
		$search = $this->request->get('search');

		if(empty($search))
		{
			header('Location: /');
			exit();
		}

		$filter = [
			'conditions' => 'name LIKE ?0 OR html LIKE ?0',
			'bind' => ["%{$search}%"]
		];

		$news  = News::find($filter);

		if(count($pages) > 0)
			$activetab = 'pages';

		$pages = Pages::find($filter);
		if(count($news) > 0)
			$activetab = 'news';

		
		$this->view->setVar('activetab', $activetab);
		$this->view->setVar('news', $news);
		$this->view->setVar('pages', $pages);
	}
}
