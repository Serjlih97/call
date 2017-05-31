<?php
/**
* Контроллер для главной странице
*/
class GalleryController extends ControllerBase
{
	public function indexAction()
	{
		$photos = Photos::find(['group' => 'albom_id']);

		if(!$photos)
			return true;

		$albomIds = array_column($photos->toArray(), 'albom_id');
		$albomIds = join($albomIds, ',');
		$alboms   = Alboms::find(['conditions' => "id in({$albomIds})"]);

		$this->view->setVar('alboms', $alboms);
	}

	public function albomAction($id)
	{
		$photos = Photos::find(['conditions' => 'albom_id = ?0', 'bind' => [$id]]);

		$this->view->setVar('photos', $photos);
	}
}
