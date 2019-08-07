<?php
$id=$_POST['id'];
$name=$_POST['name'];
$conn=mysql_connect("localhost","root","");
mysql_select_db('gallery');
// Check connection


$sql = "UPDATE artist set name='$name' WHERE id=$id";
$exe= mysql_query($sql);

if ($exe) {
    echo "data UPDATED";
    }
 else {
    echo "data not UPDATED".mysql_error();
}
mysql_close($conn);
?>