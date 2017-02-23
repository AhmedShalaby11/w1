<?php

	$hostname = "localhost";
	$username = "root";
	$password = "12345";
	$database = "7erafy";



$conn = mysqli_connect('localhost',$username,$password);

mysqli_select_db($conn, $database) or die( "Unable to select database");


	/*$conn = mysqli_connect("$hostname","$username","$password") or die(mysql_error());
	mysqli_select_db("$database", $conn) or die(mysql_error());*/
	
?>