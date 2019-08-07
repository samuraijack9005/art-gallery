<?php
$arts_id=$_POST['arts_id'];
$order_id=$_POST['order_id'];
$conn=mysql_connect("localhost","root","");
mysql_select_db('gallery');
// Check connection


$sql = "UPDATE order1 set arts_id=$arts_id WHERE order_id='$order_id'";
$exe= mysql_query($sql);

if ($exe) {
    echo "data UPDATED";
    }
 else {
    echo "data not UPDATED".mysql_error();
}
mysql_close($conn);
?>