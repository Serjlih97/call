<?php
use Phalcon\Paginator\Adapter\QueryBuilder as PaginatorQueryBuilder;
/**
* Контроллер для главной странице
*/
class AjaxController extends ControllerBase
{
	public function getNewsAction()
	{
		$page        = $this->request->getPost('page');
		$newsBuilder = $this->modelsManager->createBuilder()
			->from('News')
			->orderBy('date desc');

		$newsPaginator = new PaginatorQueryBuilder([
			'builder' => $newsBuilder,
			'limit'   => 5,
			'page'    => $page
		]);
		$newsPaginator = $newsPaginator->getPaginate();

		$this->view->setVar('newsPaginator', $newsPaginator);
		$view = $this->view->getRender('index/inc', 'news');
		return $this->jsonResult(['success' => true, 'html' => $view]);
	}
}
