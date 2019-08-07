<?php
$id=$_POST['id'];
$type=$_POST['type'];
$conn=mysql_connect("localhost","root","");
mysql_select_db('gallery');
// Check connection


$sql = "UPDATE arts set arts_type='$type' WHERE arts_id=$id";
$exe= mysql_query($sql);

if ($exe) {
    echo "data UPDATED";
    }
 else {
    echo "data not UPDATED".mysql_error();
}
mysql_close($conn);
?>