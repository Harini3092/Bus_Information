 <?php include'header.php' ;?>
<?php include'connection.php' ;?>

 <div class="col-lg-12">
                <?php
						$ln= $_POST['LOCATION_NAME'];
					    $rid= $_POST['ROUTE_ID'];
						$lid=$_POST['LOCATION_ID'];
				
					//if((isset($_POST['save']))){
								
								$query = "INSERT INTO stop
								(LOCATION_ID,LOCATION_NAME,ROUTE_ID)
								VALUES ('".$lid."','".$ln."','".$rid."')";
								$r=mysqli_query($db,$query);
								if($r){
									?>
									<script type="text/javascript">
											alert("Successfully added.");
											window.location = "stop.php";
										</script>
										<?php
								}
								else{
									echo mysqli_error($db);
								}
						
														
						/*}
						else {
								echo "nOT INSERTED";

						}*/
				?>
    	
                    </div>