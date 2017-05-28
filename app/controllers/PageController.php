<?php
/**
* Контроллер для главной странице
*/
class PageController extends ControllerBase
{
	public function indexAction($page)
	{
		$page = Pages::findFirstByUrl($page);

		if(!$page)
			$this->pageNotFound();

		$this->view->setVar('activeMenu', $page->category);
		$this->view->setVar('page', $page);
		$this->view->setVar('title', $page->name);
	}
}
