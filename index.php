<html>
<head>
<title>7erafy</title>
<meta charset="UTF-8"/>
 
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>

<style>
 .pull-right {
  float: right !important;
}
.img-responsive{width:100%;height:100%}
body {
    background-repeat: no-repeat;
    background-position: center center;
    background-attachment: fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
input[type="text"]::-webkit-input-placeholder {
  color: orange;
}
input[type="text"]::-webkit-input-placeholder { /* Chrome/Opera/Safari */
  color: #000;
}
input[type="text"]::-moz-placeholder { /* Firefox 19+ */
  color: #000;
}
input[type="text"]:-ms-input-placeholder { /* IE 10+ */
  color: #000;;
}
input[type="text"]:-moz-placeholder { /* Firefox 18- */
  color: #000;
}

input[type="password"]::-webkit-input-placeholder { /* Chrome/Opera/Safari */
  color: #000;
}
input[type="password"]::-moz-placeholder { /* Firefox 19+ */
  color: #000;
}
input[type="password"]:-ms-input-placeholder { /* IE 10+ */
  color: #000;;
}
input[type="password"]:-moz-placeholder { /* Firefox 18- */
  color: #000;
}

input[type="email"]::-webkit-input-placeholder { /* Chrome/Opera/Safari */
  color: #000;
}
input[type="email"]::-moz-placeholder { /* Firefox 19+ */
  color: #000;
}
input[type="email"]:-ms-input-placeholder { /* IE 10+ */
  color: #000;;
}
input[type="email"]:-moz-placeholder { /* Firefox 18- */
  color: #000;
}
.carousel-content {
    color:black;
}

#text-carousel {
  width: 100%;
  height: auto;
  padding: 50px;
}
input[type=radio]:checked ~ .check {
  border: 5px solid #0DFF92;
}

input[type=radio]:checked ~ .check::before{
  background: #0DFF92;
}

input[type=radio]:checked ~ label{
  color: #0DFF92;
}

@font-face {
    font-family: shekari;
    src: url(www.Brushez.com-Shekari-Font.ttf);
}
.error {color: #FF0000;}

 </style>
 
 <script type="text/javascript">
 var $ = jQuery.noConflict();
 $(document).ready(function()  { $('#text-carousel').carousel({ interval: 4000, cycle: true }); });
  </script>
  
<script type="text/javascript" src="bootstrap/js/jquery-3.1.1.min.js"></script>

 

<script src="bootstrap/js/bootstrap.min.js"></script>

<meta name="viewport" content="width = device-width, initial-scale = 1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

</head>


<body style="background-color:#d8d8d8;text-align:right;background-image:url('craft-man.jpeg');width:100%;height:100%;">

<div class="navbar navbar-inverse navbar-fixed-top" style="width:100%;height:100px;background-color:black;opacity:0.7">
<div class="container pull-right">
<p style="font-family:shekari;color:#FF8C00;font-size:80px;font-weight:bold;margin-top:3%;margin-right:9%;">حرفي</p>
</div>
</div>

<div class="row">
<div class="span4">
<div class="navbar navbar-inverse navbar-fixed-top">
<div class="container pull-right">
<h3 style="margin-top:10.6%;margin-right:0px;background-color:black;opacity:0.7;padding-right:10px;width:28%">
<a href="#col1content" data-toggle="collapse" style="text-decoration: none;color:#FF8C00">لو عايز حرفي سجل معانا</a></h3>

<form method ="post">


     
<div id="col1content" class="collapse">
<table class="table" style="background-color:#989590;opacity:0.9;margin-right:20px;width:18%">
<tbody>
<tr>
<td><input type="text" name="cst_name" value="" required="required" placeholder="الاسم" oninvalid="this.setCustomValidity('برجاء كتابة الاسم')"
    oninput="setCustomValidity('')"></td>
</tr>

<tr>
<td><input type="text" name="cst_nick_name" value="" placeholder="اللقب"></td>
</tr>
<tr>
<td><input type="text" value="" name="cst_mob" required="required" placeholder="رقم الموبايل" oninvalid="this.setCustomValidity('برجاء كتابة رقم الموبايل')"
    oninput="setCustomValidity('')"></td>
</tr>
<tr>
<td>تاريخ الميلاد</td></tr>
<tr>
<td><select name="cst_day" id="daypicker" required="required" style="width:50px;" oninvalid="this.setCustomValidity('برجاء اختيار يوم')"
    oninput="setCustomValidity('')">
<option disabled selected value="">يوم</option>
</select>
<script>
for (i =1; i < 32; i++)
{
    $('#daypicker').append($('<option />').val(i).html(i));
}
</script><select name="cst_month" required="required" style="width:70px;" oninvalid="this.setCustomValidity('برجاء اختيار شهر')"
    oninput="setCustomValidity('')">
<option disabled selected value="">شهر</option>
	<option value="01">يناير</option>
	<option value="02">فبراير</option>
	<option value="03">مارس</option>
	<option value="04">ابريل</option>
	<option value="05">مايو</option>
	<option value="06">يونيه</option>
	<option value="07">يوليو</option>
	<option value="08">اغسطس</option>
	<option value="09">سبتمبر</option>
	<option value="10">اكتوبر</option>
	<option value="11">نوفمبر</option>
	<option value="12">ديسمبر</option>
</select><select name="cst_year" id="yearpicker" required="required" style="width:65px;" oninvalid="this.setCustomValidity('برجاء اختيار سنة')"
    oninput="setCustomValidity('')">
<option disabled selected value="">سنة</option>
</select>
<script>
for (i = new Date().getFullYear(); i > 1949; i--)
{
    $('#yearpicker').append($('<option />').val(i).html(i));
}
</script></td>
</tr>

<tr>
<td>المحافظة
<select name="cst_city" id ="cst_city" required="required" oninvalid="this.setCustomValidity('برجاء اختيار محافظة')"
    oninput="setCustomValidity('')"><?php

include ('connection.php');

 echo' <option disabled selected value="">محافظة</option>';


 $sqlCommand="select id,city_ar_name from cities order by city_ar_name ASC";
  mysqli_query($conn, "SET NAMES 'utf8'") or die(mysql_error());
mysqli_query($conn, 'SET CHARACTER SET utf8') or die(mysql_error());
$query=mysqli_query($conn, $sqlCommand) or die(mysql_error()) ;
    

	while ($result=mysqli_fetch_array($query))
		
		{
 //echo '<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />'; 
			echo ("<option  value='".$result[1]."'>".$result[1]."</option>");
			
		}
		
  
'</select>
</td>'?>

</tr>
<tr>
<td>المنطقة<select name="cst_zone" required="required" oninvalid="this.setCustomValidity('برجاء اختيار منطقة')"
    oninput="setCustomValidity('')"><?php


	 
include ('connection.php');

 echo' <option disabled selected value="">منطقة</option>';


 $sqlCommand="select id,arabic_zone from zones  order by arabic_zone ASC";
  mysqli_query($conn, "SET NAMES 'utf8'") or die(mysql_error());
mysqli_query($conn, 'SET CHARACTER SET utf8') or die(mysql_error());
$query=mysqli_query($conn, $sqlCommand) or die(mysql_error()) ;
    

	while ($result=mysqli_fetch_array($query))
		
		{
 //echo '<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />'; 
			echo ("<option  value='".$result[1]."'>".$result[1]."</option>");
			
		}
		

'</select>
</td>'?>
</tr>

<tr>
<td style="text-align:right;color:#000">
  <input type="radio" name="gender" value="male"> &nbsp;ذكر
  <input type="radio" name="gender" value="female" style="margin-right:20px"> &nbsp;أنثى</td>
</tr>
<tr>
<td><input type="email" name="cst_mail" value="" placeholder="الايميل" required="required" oninvalid="this.setCustomValidity('برجاء كتابة الايميل')"
    oninput="setCustomValidity('')"></td>
</tr>
<tr>
<td><input type="password" name="cst_pass" value="" placeholder="كلمة السر" required="required" oninvalid="this.setCustomValidity('برجاء كتابة كلمة السر')"
    oninput="setCustomValidity('')"></td>
</tr>
<tr>
<td><input type="password" name="cst_conf_pass" value="" placeholder="تأكيد كلمة السر" required="required" oninvalid="this.setCustomValidity('برجاء تأكيد كلمة السر')"
    oninput="setCustomValidity('')"></td><td    id="confirmpassshow"  style="display:none;"><p></p>تأكيد كلمة السر غير مطابق</td>
</tr> 
<tr>
<td><button type="submit" name="cst_save" class="btn btn-warning" style="width:80px;margin-left:5px">تمام كدة</button></td>
</tr>
 </tbody>
</table>
</div>
<?php

if(isset($_POST['cst_save']))
 {
	 

include ('connection.php');





$check_email=$_POST['cst_mail'];
$check_email_query="select * from cst_profile where email='$check_email'";
$query=mysqli_query($conn, $check_email_query) or die(mysql_error());
$rowcount=mysqli_num_rows($query);

if ($rowcount >0)
{
	
	echo '<script type="text/javascript">'; 
echo 'alert("هذا الايميل مسجل لدينا");'; 

echo '</script>';
}
else 
{
$pass=$_POST['cst_pass'];

$conf_pass=$_POST['cst_conf_pass'];

if ($pass != $conf_pass)
{
	echo '<script type="text/javascript">'; 
echo 'alert("تأكيد كلمة السر غير مطابق ");'; 

echo '</script>';
}
else
{

$insert_cst_profile_query="insert into cst_profile (CREATED_BY,LAST_UPD_BY,CST_STAT,email) values ('GuestUsr','GuestUsr','Active','".$_POST['cst_mail']."')";
$query=mysqli_query($conn, $insert_cst_profile_query) or die(mysql_error());
    
$get_cst_id_query="select id from cst_profile where email = '".$_POST['cst_mail']."'";
$query1=mysqli_query($conn, $get_cst_id_query) or die(mysql_error());
$cst_id=mysqli_fetch_row($query1);
$cst_id=$cst_id[0];




$create_cst_usr_query="insert into cst_usr (CREATED_BY,LAST_UPD_BY,CST_ID,USR_STAT,USR_NAME,PSWD) values ('GuestUsr','GuestUsr',$cst_id,'Active','".$_POST['cst_mail']."','".$_POST['cst_pass']."')";
$query2=mysqli_query($conn, $create_cst_usr_query) or die(mysql_error());



mysqli_query($conn, "SET NAMES 'utf8'") or die(mysql_error());
mysqli_query($conn, 'SET CHARACTER SET utf8') or die(mysql_error());
$create_cst_contact_query="insert into cst_cont (CREATED_BY,LAST_UPD_BY,CST_ID,MOB_NUM,CST_NAME,NICK_NAME,GENDER,BIRTH_DATE) values ('GuestUsr','GuestUsr',$cst_id,'".$_POST['cst_mob']."','".$_POST['cst_name']."','".$_POST['cst_nick_name']."','".$_POST['gender']."',
'".$_POST['cst_year'].'/'.$_POST['cst_month'].'/'.$_POST['cst_day']."')";
$query3=mysqli_query($conn, $create_cst_contact_query) or die(mysql_error());	



$get_city_id_query="select id from cities where city_ar_name = '".$_POST['cst_city']."'";
$query4=mysqli_query($conn, $get_city_id_query) or die(mysql_error());
$city_id=mysqli_fetch_row($query4);
$city_id=$city_id[0];


$get_zone_id_query="select id from zones where arabic_zone = '".$_POST['cst_zone']."'";
$query4=mysqli_query($conn, $get_zone_id_query) or die(mysql_error());
$zone_id=mysqli_fetch_row($query4);
$zone_id=$zone_id[0];
$create_cst_address_query="insert into cst_addr (CREATED_BY,LAST_UPD_BY,CST_ID,CITY_ID,Zone_ID ) values ('GuestUsr','GuestUsr',$cst_id,'$city_id','$zone_id')";
$query5=mysqli_query($conn, $create_cst_address_query) or die(mysql_error());	
			echo '<script type="text/javascript">'; 
 
echo 'window.location.href = "register_success.php";';
echo '</script>';

 }
}
 
 }
?>
</form>





<h3 style="margin-right:0px;margin-top:10px;background-color:black;opacity:0.7;padding-right:10px;width:28%">
<a href="#col2content" data-toggle="collapse" style="text-decoration: none;color:#f67c11">لو انت حرفى سجل معانا</a></h3>
<form method ="post">
<div id="col2content" class="collapse">
<table class="table" style="background-color:#989590;opacity:0.9;margin-right:20px;width:18%">
<tbody>
<tr>
<td><input type="text" name="tech_name" value="" placeholder="الاسم" required="required" oninvalid="this.setCustomValidity('برجاء كتابة الاسم')"
    oninput="setCustomValidity('')"></td>
</tr>

<td><input type="text" name="tech_nick_name" value="" placeholder="اللقب"></td>
</tr>

<tr><td>الحرفة</td></tr>
<td><select name="tech_job" required="required" oninvalid="this.setCustomValidity('برجاء اختيار حرفة')"
    oninput="setCustomValidity('')"><?php


	 
include ('connection.php');

 echo' <option disabled selected value="">اختار حرفة</option>';


 $sqlCommand="select id,job_name from tech_jobs  order by job_name ASC";
  mysqli_query($conn, "SET NAMES 'utf8'") or die(mysql_error());
mysqli_query($conn, 'SET CHARACTER SET utf8') or die(mysql_error());
$query=mysqli_query($conn, $sqlCommand) or die(mysql_error()) ;
    

	while ($result=mysqli_fetch_array($query))
		
		{
 //echo '<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />'; 
			echo ("<option  value='".$result[0]."'>".$result[1]."</option>");
			
		}
		

'</select>
</td>'?>
</tr>
<tr>
<td><input type="text" name="tech_mob" value="" placeholder="رقم الموبايل" required="required" oninvalid="this.setCustomValidity('برجاء كتابة رقم الموبايل')"
    oninput="setCustomValidity('')"></td>
</tr>
<tr>
<td>تاريخ الميلاد</td></tr>
<tr>
<td><select name="tech_day" id="daypicker1" required="required" style="width:50px;">
<option disabled selected value="">يوم</option>
</select>
<script>
for (i =1; i < 32; i++)
{
    $('#daypicker1').append($('<option />').val(i).html(i));
}
</script><select name="tech_month" required="required" style="width:70px;">
<option disabled selected value="">شهر</option>
	<option value="01">يناير</option>
	<option value="02">فبراير</option>
	<option value="03">مارس</option>
	<option value="04">ابريل</option>
	<option value="05">مايو</option>
	<option value="06">يونيه</option>
	<option value="07">يوليو</option>
	<option value="08">اغسطس</option>
	<option value="09">سبتمبر</option>
	<option value="10">اكتوبر</option>
	<option value="11">نوفمبر</option>
	<option value="12">ديسمبر</option>
</select><select name="tech_year" id="yearpicker1" required="required" style="width:65px;">
<option disabled selected value="">سنة</option>
</select>
<script>
for (i = new Date().getFullYear(); i > 1949; i--)
{
    $('#yearpicker1').append($('<option />').val(i).html(i));
}
</script></td>
</tr>
<td>المحافظة
<select name="tech_city" required="required" oninvalid="this.setCustomValidity('برجاء اختيار محافظة')"
    oninput="setCustomValidity('')"><?php
include ('connection.php');

 echo' <option disabled selected value="">محافظة</option>';

 $sqlCommand="select id,city_ar_name from cities order by city_ar_name ASC";
   mysqli_query($conn, "SET NAMES 'utf8'") or die(mysql_error());
mysqli_query($conn, 'SET CHARACTER SET utf8') or die(mysql_error());
$query=mysqli_query($conn, $sqlCommand) or die(mysql_error()) ;
    

	while ($result=mysqli_fetch_array($query))
		
		{

			echo ("<option  value='".$result[1]."'>".$result[1]."</option>");
			
		}
		
  
'</select>
</td>'?>
</tr>
<tr>
<td>المنطقة<select name="tech_zone" required="required" oninvalid="this.setCustomValidity('برجاء اختيار منطقة')"
    oninput="setCustomValidity('')"><?php


	 
include ('connection.php');

 echo' <option disabled selected value="">منطقة</option>';


 $sqlCommand="select id,arabic_zone from zones  order by arabic_zone ASC";
  mysqli_query($conn, "SET NAMES 'utf8'") or die(mysql_error());
mysqli_query($conn, 'SET CHARACTER SET utf8') or die(mysql_error());
$query=mysqli_query($conn, $sqlCommand) or die(mysql_error()) ;
    

	while ($result=mysqli_fetch_array($query))
		
		{
 //echo '<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />'; 
			echo ("<option  value='".$result[1]."'>".$result[1]."</option>");
			
		}
		

'</select>
</td>'?>
</tr>
<tr>
<td><input type="email" name="tech_email" value="" placeholder="الايميل" required="required" oninvalid="this.setCustomValidity('برجاء كتابة الايميل')"
    oninput="setCustomValidity('')"></td>
</tr>
<tr>
<td><input type="password" name="tech_pass" value="" placeholder="كلمة السر" required="required" oninvalid="this.setCustomValidity('برجاء كتابة كلمة السر')"
    oninput="setCustomValidity('')"></td>
</tr>
<tr>
<td><input type="password" name="tech_conf_pass" value="" placeholder="تأكيد كلمة السر" required="required" oninvalid="this.setCustomValidity('برجاء تأكيد كلمة السر')"
    oninput="setCustomValidity('')"></td>
</tr>
<tr>
<td><button type="submit" name="save_tech" class="btn btn-warning" style="width:80px;margin-left:5px">تمام كدة</button></td>
</tr>
 </tbody>
</table>
</div>
<?php

if(isset($_POST['save_tech']))
 {
	 

include ('connection.php');





$check_email=$_POST['tech_email'];
$check_email_query="select * from tech_profile where email='$check_email'";
$query=mysqli_query($conn, $check_email_query) or die(mysql_error());
$rowcount=mysqli_num_rows($query);

if ($rowcount >0)
{
	
	echo '<script type="text/javascript">'; 
echo 'alert("هذا الايميل مسجل لدينا");'; 

echo '</script>';
}
else 
{
$pass=$_POST['tech_pass'];

$conf_pass=$_POST['tech_conf_pass'];

if ($pass != $conf_pass)
{
	echo '<script type="text/javascript">'; 
echo 'alert("تأكيد كلمة السر غير مطابق ");'; 

echo '</script>';
}
else
{

$insert_tec_profile_query="insert into tech_profile (CREATED_BY,LAST_UPD_BY,TECH_STAT,email) values ('GuestUsr','GuestUsr','Active','".$_POST['tech_email']."')";
$query=mysqli_query($conn, $insert_tec_profile_query) or die(mysql_error());

	
$get_tec_id_query="select id from tech_profile where email = '".$_POST['tech_email']."'";
//echo $get_tec_id_query;
$query1=mysqli_query($conn, $get_tec_id_query) or die(mysql_error());

$tec_id=mysqli_fetch_row($query1);
//echo $tec_id;
$tec_id=$tec_id[0];
//echo $tec_id;




$create_tec_usr_query="insert into tech_usr  (CREATED_BY,LAST_UPD_BY,TECH_ID,TECH_USR_STAT,TECH_USR_NAME,TECH_PSWD) values ('GuestUsr','GuestUsr',$tec_id,'Active','".$_POST['tech_email']."','".$_POST['tech_pass']."')";
$query2=mysqli_query($conn, $create_tec_usr_query) or die(mysql_error());




mysqli_query($conn, "SET NAMES 'utf8'") or die(mysql_error());
mysqli_query($conn, 'SET CHARACTER SET utf8') or die(mysql_error());

$create_cst_contact_query="insert into tech_cont  (CREATED_BY,LAST_UPD_BY,TECH_ID,MOB_NUM,TEC_NAME,NICK_NAME,BIRTH_DATE) values ('GuestUsr','GuestUsr',$tec_id,'".$_POST['tech_mob']."','".$_POST['tech_name']."','".$_POST['tech_nick_name']."',
'".$_POST['tech_year'].'/'.$_POST['tech_month'].'/'.$_POST['tech_day']."')";

$query3=mysqli_query($conn, $create_cst_contact_query) or die(mysql_error());	



$get_city_id_query="select id from cities where city_ar_name = '".$_POST['tech_city']."'";
$query4=mysqli_query($conn, $get_city_id_query) or die(mysql_error());
$city_id=mysqli_fetch_row($query4);
$city_id=$city_id[0];


$get_zone_id_query="select id from zones where arabic_zone = '".$_POST['tech_zone']."'";
$query4=mysqli_query($conn, $get_zone_id_query) or die(mysql_error());
$zone_id=mysqli_fetch_row($query4);
$zone_id=$zone_id[0];


$create_tec_address_query="insert into tech_addr (CREATED_BY,LAST_UPD_BY,TECH_ID,CITY_ID,ZONE_ID) values ('GuestUsr','GuestUsr',$tec_id,'$city_id','$zone_id')";

$query5=mysqli_query($conn, $create_tec_address_query) or die(mysql_error());	
			echo '<script type="text/javascript">'; 
 
echo 'window.location.href = "register_success.php";';
echo '</script>';


 }
}
 
 }
?>
</form>
</div>
</div>
</div>


<div class="span8">
<div class="container navbar navbar-inverse" style="margin-top:60%;">

<div class="pagination-centered center-block">
<div id="text-carousel" class="carousel slide" data-ride="carousel">
        <div class="col-xs-offset-3 col-xs-6">
            <div class="carousel-inner">
			<div class="item active">
                        <p><h1 style="background-color:#1e1e1e;color:#FF8C00;opacity:0.8">هنبعتلك قريب</h1></p>
                </div>
                <div class="item">
                        <p><h1 style="background-color:#1e1e1e;color:#FF8C00;opacity:0.8">دليل لكل صنايعي</h1></p>
                </div>
                <div class="item">
                           <p><h1 style="background-color:#1e1e1e;color:#FF8C00;opacity:0.8">أكثر خبرة .. أسهل بحث</h1></p>
                </div>
                <div class="item">                         
                            <p><h1 style="background-color:#1e1e1e;color:#FF8C00;opacity:0.8">خبراء في كل صنعة</h1></p>
                </div>              
            </div>
        </div>
</div>
</div>

<div class="container" style="margin-right:9%">
<div class="text-center center-block">
<a href="https://www.facebook.com/"><i class="fa fa-facebook-square fa-3x social"><img src="facebook.png" style="width:50px;height:50px"/></i></a>
<a href="https://www.twitter.com/"><i class="fa fa-twitter-square fa-3x social"><img src="twitter.png" style="width:50px;height:50px"/></i></a>
</div> 
</div>
</div>
</div>
</div>
<script type="text/javascript">
 var $ = jQuery.noConflict();
 $(document).ready(function()  { $('#text-carousel').carousel({ interval: 4000, cycle: true }); });
</script>

</body>
</html>