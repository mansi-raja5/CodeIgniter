<?php //defined('BASEPATH') OR exit('No direct script access allowed');

class Scrap extends CI_Controller {

	public function __construct()
	{
		parent::__construct();// you have missed this line.
		$this->load->library('crawler');
	} 

	public function index(){
		$site_url = "https://www.sciencenews.org/"; 
		$site_data = $this->get_site_data($site_url, 1, 0);
		echo "<pre>";
		var_dump($site_data);
	}

	private function get_site_data($site_url, $max_depth = 1, $current_depth = 0){
		$current_depth++;

		$this->load->library('crawler');

		$site_data = array();

		if($this->crawler->set_url($site_url) !== false){
			$site_data['title'] = $this->crawler->get_title();
			$site_data['description'] = $this->crawler->get_description();
			$site_data['keywords'] = $this->crawler->get_keywords();
			$site_data['text'] = $this->crawler->get_text();
			$site_data['links'] = $this->crawler->get_links();

			if($current_depth <= $max_depth){
				foreach($site_data['links'] as $link_key => &$link){
					$link['data'] = $this->get_site_data($link, $max_depth, $current_depth);
				}
			}

			return $site_data;
		}
		else{
			return false;
		}
	}

}