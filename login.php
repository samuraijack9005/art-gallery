<!DOCTYPE html>
<html>
<?php
$name=$_POST['user'];
$pass=$_POST['pass'];
$na='admin';
$pa=1234;
$co=mysql_connect("localhost","root","");
mysql_select_db('gallery');
$x="insert into users values('$name','$pass')";
$ex=mysql_query($x);
if($name==$na&&$pa==$pass)
{
	echo "LOGGED IN";
	<body><a href="home.html"><button>enter</button></a></body>
}
else 
{
echo "incorrect password and username";	
}
mysql_close($co);
?>
</html>