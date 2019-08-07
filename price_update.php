<?php
$arts_id=$_POST['arts_id'];
$price_id=$_POST['price_id'];
$conn=mysql_connect("localhost","root","");
mysql_select_db('gallery');
// Check connection


$sql = "UPDATE price set arts_id=$arts_id WHERE price_id='$price_id'";
$exe= mysql_query($sql);

if ($exe) {
    echo "data UPDATED";
    }
 else {
    echo "data not UPDATED".mysql_error();
}
mysql_close($conn);
?>