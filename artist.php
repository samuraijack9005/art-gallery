<?php
$id=$_POST['id'];
$name=$_POST['name'];
$age=$_POST['age'];
$address=$_POST['address'];
$type=$_POST['type'];
$con=mysql_connect("localhost","root","");
mysql_select_db('gallery');
$q="insert into artist values($id,'$name',$age,'$address','$type')";
$exe=mysql_query($q);
if($exe)
{
	echo "data inserted".mysql_error();
}
else 
{
echo "data not inserted".mysql_error();	
}
mysql_close($con);
?>