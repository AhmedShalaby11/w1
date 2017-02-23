

<form method="post">
<tr><td><input type="text" name="CREATED" size="8" required="required"></td></tr>
<tr><td><input type="text" name="CREATED_BY" size="8" required="required"></td></tr>
<tr><td><input type="text" name="LAST_UPD" size="8" required="required"></td></tr>
<tr><td><input type="text" name="LAST_UPD_BY" size="8" required="required"></td></tr>
<tr><td><input type="text" name="CST_ID" size="8" required="required"></td></tr>
<tr><td><input type="text" name="USR_STAT" size="8" required="required"></td></tr>
<tr><td><input type="text" name="USR_NAME" size="8" required="required"></td></tr>
<tr><td><input type="text" name="PSWD" size="8" required="required"></td></tr>
<tr><td colspan="3">&nbsp; <button type="submit" class="btn btn-danger" name="save" >Submit</button></td></tr>
</form>
<?php	
	
	
	if(isset($_POST['save']))
	
//include ['query_test.php'];
{
	require_once('db.php');
	
 $db db = new Db();    

 function insert_tbl_cst_usr($created_by,$last_upd_by,$cst_id,$usr_stat,$usr_name,$paswd)
	{
	$created = date('Y-m-d H:i:s');
	$last_upd = date('Y-m-d H:i:s');


		$result = $db -> query("INSERT INTO `CST_USR` (`CREATED`,`CREATED_BY`,`LAST_UPD`,`LAST_UPD_BY`,`CST_ID`,`USR_STAT`,`USR_NAME`,`PSWD`) 
								VALUES (" . $created . "," . $created_by . "," . $last_upd . "," . $last_upd_by . "," . $cst_id . "
								," . $usr_stat . "," . $usr_name . "," . $paswd . ")");
	}
	
	//include'connection.php';
	insert_tbl_cst_usr($_POST['CREATED_BY'],$_POST['LAST_UPD_BY'],$_POST['CST_ID'],$_POST['USR_STAT'],$_POST['USR_NAME'],$_POST['PSWD']);

	
}

?>


