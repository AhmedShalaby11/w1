<?php

require_once('db.php');
class bypass_db
{
	public function insert_tbl_cst_usr()
	{
		$db = new Db();    
		$id = $db -> quote('5');
		$created = $db -> quote(date('Y-m-d H:i:s'));
		$created_by = $db -> quote('5');
		$last_upd = $db -> quote(date('Y-m-d H:i:s'));
		$last_upd_by = $db -> quote('5');
		$cst_id = $db -> quote('5');
		$usr_stat = $db -> quote('Active');
		$usr_name = $db -> quote('MAG5EDsDDD');
		$paswd = $db -> quote('MAGED');

		$result = $db -> query("INSERT INTO cst_usr (`ID`,`CREATED`,`CREATED_BY`,`LAST_UPD`,`LAST_UPD_BY`,`CST_ID`,`USR_STAT`,`USR_NAME`,`PSWD`) 
								VALUES ('$id','$created','$created_by','$last_upd','$last_upd_by','$cst_id'
								,'$usr_stat','$usr_name','$paswd')");
	}
	
	public function insert_tbl_cst_profile()
	{
		$db = new Db(); 
		$id = $db -> quote($_POST['id']);
		$created = date('Y-m-d H:i:s');
		$created_by = $db -> quote($_POST['created_by']);
		$last_upd = date('Y-m-d H:i:s');
		$last_upd_by = $db -> quote($_POST['last_upd_by']);
		$cst_stat = $db -> quote($_POST['cst_stat']);
		$cst_hit_id = $db -> quote($_POST['cst_hit_id']);
		$cst_sgmnt_id = $db -> quote($_POST['cst_sgmnt_id']);
		$cst_grp_id = $db -> quote($_POST['cst_grp_id']);
		$cst_type_id = $db -> quote($_POST['cst_type_id']);
		$cst_loy_id = $db -> quote($_POST['cst_loy_id']);
		$cst_profile_comment = $db -> quote($_POST['cst_profile_comment']);

		$result = $db -> query("INSERT INTO `CST_USR` (`ID`,`CREATED`,`CREATED_BY`,`LAST_UPD`,`LAST_UPD_BY`,`CST_STAT`,`CST_HIT_ID`,`CST_SGMNT_ID`,`CST_GRP_ID`
		,`CST_TYPE_ID`,`CST_LOY_ID`,`CST_PROFILE_COMMENT`) 
								VALUES ('$id','$created','$created_by','$last_upd','$last_upd_by','$cst_stat'
								,'$cst_hit_id','$cst_sgmnt_id','$cst_grp_id','$cst_type_id','$cst_loy_id','$cst_profile_comment')");
	}
}

	try
	{
		$callBypass_db = new bypass_db();
		$callBypass_db -> insert_tbl_cst_usr();
	}
	catch (Exception $e)
	{
		 echo 'Caught exception: ',  $e->getMessage(), '\n';
	}
	
?>












