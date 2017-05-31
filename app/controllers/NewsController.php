<?php
/**
* Контроллер для главной странице
*/
class NewsController extends ControllerBase
{
	public function indexAction()
	{
	}

	public function detailAction($id)
	{
		$news = News::findFirstById($id);

		if(!$news)
			$this->pageNotFound();

		$this->view->setVar('news', $news);
	}
}
