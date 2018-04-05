<?php //defined('BASEPATH') OR exit('No direct script access allowed');
ini_set('max_execution_time', 300);
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
			if($articleUrl && $articleUrl != "" && strpos($articleUrl, 'article/') !== false){
				$articleUrl = $siteUrl.$articleUrl;
				//echo "<br>";
				$articlesAry[++$count]['name'] 	= $articleName;
				$articlesAry[$count]['url'] 	= $articleUrl;
				$articlesAry[$count]['image'] 	= $this->traverseArticleToGetImage($articleUrl);				
			}
			//exit;
		}
		print_r($articlesAry);
		exit;
	}

	public function traverseArticleToGetImage($articleUrl){
		$html 	= file_get_html($articleUrl);
		$imgs 	= $html->find('div[itemprop="image"] img');
		$imgSrc = "";
		foreach($imgs as $img){
			$imgSource = $img->src;
			if($img->typeof == "foaf:Image" && substr( $imgSource, 0, 4 ) === "http")
				$imgSrc = $imgSource;
		}
		return $imgSrc;
	}
	
	public function getsitedata($articleUrl){
		$site_data = array();
		if($this->crawler->set_url($articleUrl) !== false){
			$site_data['title'] = $this->crawler->get_title();
			$site_data['description'] = $this->crawler->get_description();
			$site_data['keywords'] = $this->crawler->get_keywords();
			$site_data['text'] = $this->crawler->get_text();
			$site_data['links'] = $this->crawler->get_links();
			return $site_data;
		}
		else{
			return false;
		}
		
	}
}