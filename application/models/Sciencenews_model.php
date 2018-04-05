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
	
	//Get artcles from table 
	public function get_articles(){	  
		$this->db->select('*');
		$this->db->from('articles');
		$query=$this->db->get();
		if($query)
			return $query->result_array();
		else
			return false;
	} 	
}


?>