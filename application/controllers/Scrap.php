<?php //defined('BASEPATH') OR exit('No direct script access allowed');

class Scrap extends CI_Controller {

	public function __construct()
	{
		parent::__construct();// you have missed this line.
		$this->load->library('crawler');
	} 

	public function index(){
		$siteUrl = "https://www.sciencenews.org";
		$html = file_get_html($siteUrl);
		echo "<pre>";
		$articlesAry = array();
		$articles = $html->find('article h2');
		$count = -1;
		foreach($articles as $article) {
			$articleName = $article->children(0)->plaintext;
			$articleUrl = $article->find('a', 0)->href;
			$articleUrl = $siteUrl.$articleUrl;
			//echo "<br>";
			$articlesAry[++$count]['name'] = $articleName;
			$articlesAry[$count]['url'] = $articleUrl;
			//print_r($article);
		}
		print_r($articlesAry);
		exit;
	}

}