
<?php
       
       include('connection.php');
       include('header.php');
       
        ?>  

<body>
<?php

	

			/*if (!isset($_GET['do']) || $_GET['do'] != 1) {
								
	
			switch ($_GET['type']) {
				case 'stop':*/
					$query = 'DELETE FROM stop
							WHERE
							LOCATION_ID = ' . $_GET['id'];
						$result = mysqli_query($db, $query) ;
						if($result){
									?>
							<script type="text/javascript">
								alert("Successfully Deleted.");
								window.location = "stop.php";
							</script>				
								
							<?php
						}
						else{

						    echo mysqli_error($db);
						}

		
			
			?>

</body>
</html>