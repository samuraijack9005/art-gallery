<?php
$arts_id=$_POST['arts_id'];
$artist_id=$_POST['artist_id'];
$arts_type=$_POST['arts_type'];
$arts_desc=$_POST['arts_desc'];
$con=mysql_connect("localhost","root","");
mysql_select_db('gallery');
$q="insert into arts values($arts_id,$artist_id,'$arts_type','$arts_desc')";
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