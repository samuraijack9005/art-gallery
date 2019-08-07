<?php
$price_id=$_POST['price_id'];
$arts_id=$_POST['arts_id'];
$amount=$_POST['amount'];
$co=mysql_connect("localhost","root","");
mysql_select_db('gallery');
$x="insert into price values('$price_id',$arts_id,'$amount')";
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