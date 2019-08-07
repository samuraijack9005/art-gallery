<?php
$id=$_POST['id'];
$conn=mysql_connect("localhost","root","");
mysql_select_db('gallery');
// Check connection


$sql = "DELETE FROM order1 WHERE order_id='$id'";
$exe= mysql_query($sql);

if ($exe) {
    echo "data deleted";
    }
 else {
    echo "data not deleted".mysql_error();
}
mysql_close($conn);
?>