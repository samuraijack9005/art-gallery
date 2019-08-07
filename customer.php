<?php
$cust_id=$_POST['cust_id'];
$cust_name=$_POST['cust_name'];
$cust_address=$_POST['cust_address'];
$cust_email=$_POST['cust_email'];
$cust_phone=$_POST['cust_phone'];
$con=mysql_connect("localhost","root","");
mysql_select_db('gallery');
$q="insert into customer values($cust_id,'$cust_name','$cust_address','$cust_email',$cust_phone)";
$exe=mysql_query($q);
if($exe)
{
	echo "data inserted".mysql_error();
}
else 
{
echo "data not inserte d".mysql_error();	
}
mysql_close($con);
?>