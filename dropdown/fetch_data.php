<?php
if(isset($_POST['get_option']))
{
include ('connection.php');
if ($conn)
{
	echo "done";
}	




 $state = $_POST['get_option'];

 $sqlCommand="select distinct arabic_zone from cities_zones where arabic_city = '$state'order by arabic_zone ASC";
  mysqli_query($conn, "SET NAMES 'utf8'") or die(mysql_error());
mysqli_query($conn, 'SET CHARACTER SET utf8') or die(mysql_error());
$query=mysqli_query($conn, $sqlCommand) or die(mysql_error()) ;
    
	
	
	while ($result=mysqli_fetch_array($query))
		
		{
 //echo '<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />'; 
			echo ("<option  value='".$result[0]."'>".$result[0]."</option>");
			
		}



}
?>