<?php
$servername = "localhost";
$username = "root";
$password = "12345";
$dbname = "7erafy";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	
	if ($conn)
	{
		echo "connected";
	}
    $sql = "INSERT INTO cst_usr (`ID`,`CREATED`,`CREATED_BY`,`LAST_UPD`,`LAST_UPD_BY`,`CST_ID`,`USR_STAT`,`USR_NAME`,`PSWD`) 
VALUES ('1','2017-02-12','1','2017-02-12,'1','1' ,'Active','MAGED','MAGED');";
    // use exec() because no results are returned
    $conn->exec($sql);
    echo "New record created successfully";
    }
catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }

$conn = null;
?>