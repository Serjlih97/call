<?php
use \Phalcon\Mvc\Model;
/**
* Модель для таблицы контентных страниц
*/
class Pages extends ModelBase
{
	/**
	 * Инит функция в ней :
	 *   Создается связь с таблицей пользователей(hasMany)
	 *   Создается связь с таблицей Результатов игр(hasMany)
	 */
	public function initialize()
	{
		// Категория страницы
		$this->hasOne('category', 'Categories', 'id', [
			'alias'  => 'parentCategory'
		]);
	}

	/**
	 * Функция для получения асоциотивного массива всех файлов на странице
	 * @return array Ассоциотивный массив файлов
	 */
	public function getFiles()
	{
		if(!$this->files)
			return false;

		$files = json_decode($this->files, true);

		foreach($files as &$file)
		{
			$file = [
				'name' => $file['upName'],
				'path' =>$file['path']
			];
			$file = (object) $file;
		}

		$files = (object) $files;

		if($files)
			return $files;

		return true;
	}

	/**
	 * Функция для получения асоциотивного массива всех фотографий для слайдера
	 * @return array Ассоциотивный массив фотографий
	 */
	public function getPhotoSlider()
	{
		if(!$this->photo_slider)
			return false;


		$slider = json_decode($this->photo_slider, true);

		foreach($slider as &$photo)
			$photo = (object) [
				'origin' => $photo['path'],
				'small' => $photo['sizes']['small'],
				'big' => $photo['sizes']['big']
			];

		$slider = (object) $slider;

		if(!$slider)
			return false;

		return $slider;
	}

	/**
	 * Функция для получения асоциотивного массива всех Видео
	 * @return array Ассоциотивный массив видео
	 */
	public function getVideoSlider()
	{
		if(!$this->video_slider)
			return false;


		$slider = json_decode($this->video_slider, true);

		foreach($slider as &$photo)
			$photo = array_shift($photo);

		$slider = (object) $slider;

		if(!$slider)
			return false;

		return $slider;
	}

	/**
	 * Функция для генирации url страницы
	 * @return string url до страницы
	 */
	public function getUrl()
	{
		return "/{$this->url}/";
	}
}