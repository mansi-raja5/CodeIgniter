<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Science News</title>	
	
	<link href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link rel = "stylesheet" type = "text/css" href = "<?php echo base_url(); ?>assets/css/custom.css">
	<script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
	<script src="<?php echo base_url(); ?>assets/js/jquery-1.11.1.min.js"></script>
	<script src="<?php echo base_url(); ?>assets/js/custom.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	
</head>
<body>
<div class="container">
    <div class="well well-sm">
        <strong>Articles Screpped From Sciencenews</strong>
        <div class="btn-group">
            <a href="#" id="list" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-th-list">
            </span>List</a> <a href="#" id="grid" class="btn btn-default btn-sm"><span
                class="glyphicon glyphicon-th"></span>Grid</a>
        </div>
    </div>
    <div id="products" class="row list-group">
	<?php
	foreach($articles as $article){
		?>
		<div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="<?php echo $article['image']?>" alt="<?php echo $article['name']?>" />
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        <?php echo $article['name']?>
					</h4>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success" href="<?php echo $article['url']?>">Visit Article</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>		
		<?php
	}	
	?>
        
    </div>
</div>

</body>
</html>