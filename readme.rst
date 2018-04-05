#########################################################
Scrapping Data From https://www.sciencenews.org/
#########################################################

1. Clone the code :

	git clone https://github.com/mansi-raja5/CodeIgniter.git

2. goto your phpmyadmin and Create Database
    
	create database sciencenews
	
3. create table as below:

	CREATE TABLE `articles` (
	  `id` int(11) NOT NULL,
	  `name` varchar(255) NOT NULL,
	  `url` varchar(255) NOT NULL,
	  `image` varchar(255) NOT NULL
	) ENGINE=InnoDB DEFAULT CHARSET=latin1;

	ALTER TABLE `articles`
	  ADD PRIMARY KEY (`id`);

	ALTER TABLE `articles`
	  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
	  
4. You can find my exported database having screeped data imported as below:
		
	Root folder/sqls/sciencenews.sqls/sciencenews
	
5. Change DB credentials in config/database.php as per your system
	
5. Run scrape= controller index method	

	URL in my case : http://localhost:81/CodeIgniter/index.php/scrap
	
	Your Host may get change ;)
		
***************
Thank You
***************