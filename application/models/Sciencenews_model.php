<?php
class Sciencenews_model extends CI_model{
	
	//To add article to DB table
	public function add_articles($articles){	  
		$this->db->insert('articles', $articles);	 
	} 
	
	//Truncalte table 
	public function truncate_articles(){	  
		$this->db->truncate('articles');
	 
	} 	
}


?>