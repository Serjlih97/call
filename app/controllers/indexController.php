<?php
/**
* Контроллер для главной странице
*/
class IndexController extends ControllerBase
{
	public function indexAction()
	{
		$news = News::find();

		$this->view->setVar('news', $news);
	}

	public function notfoundAction()
	{
	}
}
