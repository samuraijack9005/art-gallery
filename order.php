<?php
$order_id=$_POST['order_id'];
$cust_id=$_POST['cust_id'];
$arts_id=$_POST['arts_id'];
$order_type=$_POST['order_type'];
$co=mysql_connect("localhost","root","");
mysql_select_db('gallery');
$x="insert into order1 values('$order_id',$cust_id,$arts_id,'$order_type')";
$ex=mysql_query($x);
if($ex)
{
	echo "data inserted".mysql_error();
}
else 
{
echo " data not inserted ".mysql_error();	
}
mysql_close($co);
?>