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
  color: #000;
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

<div class="navbar navbar-inverse 	" style="width:100%;height:100px;background-color:black;opacity:0.7">
<div class="container pull-right">
<p style="font-family:shekari;color:#FF8C00;font-size:80px;font-weight:bold;margin-top:3%;margin-right:9%;">حرفي</p>
</div>
</div>

<div class="row">
<div class="span4">
<div class="navbar navbar-inverse navbar-static-top" >
<div class="container pull-right">
<h3 style="margin-top:10.6%;margin-right:0px;background-color:black;opacity:0.7;padding-right:10px;width:28%">
<a href="#col1content" data-toggle="collapse" style="text-decoration: none;color:#FF8C00">لو عايز حرفي سجل معانا</a></h3>
<form method ="post">
<div id="col1content" class="collapse">
<table class="table" style="background-color:#989590;opacity:0.9;margin-right:20px;width:18%">
<tbody>
<tr>
<td><input type="text" name="cst_name" value="" placeholder="الاسم" required="required"  style="height:25px"></td>
</tr>

<tr>
<td><input type="text" name="cst_nick_name" value="" placeholder="اللقب"  style="height:25px"></td>
</tr>
<tr>
<td><input type="text" value="" name="cst_mob" placeholder="رقم الموبايل"  style="height:25px"></td>
</tr>
<tr>
<td>تاريخ الميلاد</td></tr>
<tr>
<td><select name="cst_day" id="daypicker" required="required" style="width:50px;" class="select">
<option disabled selected value="">يوم</option>
</select>
<script>
for (i =1; i < 32; i++)
{
    $('#daypicker').append($('<option />').val(i).html(i));
}
</script><select name="cst_month" required="required" style="width:70px;">
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
</select><select name="cst_year" id="yearpicker" required="required" style="width:65px;">
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
<select name="cst_city"><?php
include ('connection.php');

 echo' <option disabled selected value="">محافظة</option>';

 $sqlCommand="select city,arabic_city from cities_zones order by arabic_city ASC";
$query=mysqli_query($conn, $sqlCommand) or die(mysql_error()) ;
    

	while ($result=mysqli_fetch_array($query))
		
		{
 echo '<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />'; 
			echo utf8_decode("<option  value='".$result[0]."'>".$result[0]."</option>");
			
		}
		
  
'</select>
</td>'?>
</td>
</tr>
<tr>
<td><input type="text" name="cst_zone" value="" placeholder="المنطقة"  style="height:25px"></td>
</tr>

<tr>
<td style="text-align:right;color:#000">
  <input type="radio" name="gender" value="male"> &nbsp;ذكر
  <input type="radio" name="gender" value="female" style="margin-right:20px"> &nbsp;أنثى</td>
</tr>
<tr>
<td><input type="email" name="cst_mail" value="" placeholder="الايميل" style="height:25px"></td>
</tr>
<tr>
<td><input type="password" name="cst_pass" value="" placeholder="كلمة السر"  style="height:25px"></td>
</tr>
<tr>
<td><input type="password" name="cst_conf_pass" value="" placeholder="تأكيد كلمة السر"  style="height:25px"></td>
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



$insert_cst_profile_query="insert into cst_profile (CREATED_BY,LAST_UPD_BY,CST_STAT,email) values 
('GuestUsr','GuestUsr','Active','".$_POST['cst_mail']."')";

$query=mysqli_query($conn, $insert_cst_profile_query) or die(mysql_error());
    
$get_cst_id_query="select id from cst_profile where email = '".$_POST['cst_mail']."'";
$query1=mysqli_query($conn, $get_cst_id_query) or die(mysql_error());



	 $cst_id=mysqli_fetch_row($query1);
	 $cst_id=$cst_id[0];
	 
	 
	 
	 $get_city_id_query="select id from cities_zones where city = '".$_POST['cst_city']."'";
$query4=mysqli_query($conn, $get_city_id_query) or die(mysql_error());



	 $city_id=mysqli_fetch_row($query4);
	 $city_id=$city_id[0];
	 
	 
$create_cst_usr_query="insert into cst_usr (CREATED_BY,LAST_UPD_BY,CST_ID,USR_STAT,USR_NAME,PSWD) values ('GuestUsr','GuestUsr',$cst_id,'Active','".$_POST['cst_mail']."','".$_POST['cst_pass']."')";
	 
$query2=mysqli_query($conn, $create_cst_usr_query) or die(mysql_error());
		
		mysqli_query($conn, "SET NAMES 'utf8'") or die(mysql_error());
	 mysqli_query($conn, 'SET CHARACTER SET utf8') or die(mysql_error());
	 
	$create_cst_contact_query="insert into cst_cont (CREATED_BY,LAST_UPD_BY,CST_ID,MOB_NUM,CST_NAME,NICK_NAME,GENDER,BIRTH_DATE) values ('GuestUsr','GuestUsr',$cst_id,'".$_POST['cst_mob']."','".$_POST['cst_name']."','".$_POST['cst_nick_name']."','".$_POST['gender']."',
	'".$_POST['cst_year'].'/'.$_POST['cst_month'].'/'.$_POST['cst_day']."')";

$query3=mysqli_query($conn, $create_cst_contact_query) or die(mysql_error());	
	

$create_cst_address_query="insert into cst_addr (CREATED_BY,LAST_UPD_BY,CST_ID,CITY_ID) values ('GuestUsr','GuestUsr',$cst_id,'$city_id')";
	 	 /*echo $create_cst_address_query;*/
$query5=mysqli_query($conn, $create_cst_address_query) or die(mysql_error());	
		
 }
?>
</form>





<h3 style="margin-right:0px;margin-top:10px;background-color:black;opacity:0.7;padding-right:10px;width:28%">
<a href="#col2content" data-toggle="collapse" style="text-decoration: none;color:#f67c11">لو انت حرفى سجل معانا</a></h3>
<div id="col2content" class="collapse">
<table class="table" style="background-color:#989590;opacity:0.9;margin-right:20px;width:18%">
<tbody>
<tr>
<td><input type="text" value="" placeholder="الاسم"  style="height:25px"></td>
</tr>
<tr>
<td><input type="text" value="" placeholder="اللقب"  style="height:25px"></td>
</tr>
<tr>
<td><input type="text" value="" placeholder="الحرفة"  style="height:25px"></td>
</tr>
<tr>
<td><input type="text" value="" placeholder="رقم الموبايل"  style="height:25px"></td>
</tr>
<tr>
<td><input type="text" value="" placeholder="تاريخ الميلاد : 1-1-2017"></td>
</tr>
<tr>
<td><input type="text" value="" placeholder="المحافظة"  style="height:25px"></td>
</tr>
<tr>
<td><input type="text" value="" placeholder="المنطقة"  style="height:25px"></td>
</tr>
<tr>
<td><input type="email" value="" placeholder="الايميل"  style="height:25px"></td>
</tr>
<tr>
<td><input type="password" value="" placeholder="كلمة السر"  style="height:25px"></td>
</tr>
<tr>
<td><input type="password" value="" placeholder="تأكيد كلمة السر"  style="height:25px"></td>
</tr>
<tr>
<td><button type="button" class="btn btn-warning" style="width:80px;margin-left:5px">تسجيل</button></td>
</tr>
 </tbody>
</table>
</div>
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
