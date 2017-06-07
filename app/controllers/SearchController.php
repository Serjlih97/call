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
		$pages = Pages::find($filter);

		$this->view->setVar('news', $news);
		$this->view->setVar('pages', $pages);
	}
}
