<?php

	require_once('db.php');
	
	protected static $db = new Db();    

	public function insert_tbl_cst_usr($created_by,$last_upd_by,$cst_id,$usr_stat,$usr_name,$paswd)
	{
	$created = date('Y-m-d H:i:s');
	$last_upd = date('Y-m-d H:i:s');


		$result = $db -> query("INSERT INTO `CST_USR` (`CREATED`,`CREATED_BY`,`LAST_UPD`,`LAST_UPD_BY`,`CST_ID`,`USR_STAT`,`USR_NAME`,`PSWD`) 
								VALUES (" . $created . "," . $created_by . "," . $last_upd . "," . $last_upd_by . "," . $cst_id . "
								," . $usr_stat . "," . $usr_name . "," . $paswd . ")");
	}
	

?>












