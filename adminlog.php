<?php
include "connection.php";

$username= $_POST['jobno'];
$password = $_POST['password'];

$sql = "SELECT * FROM admin where username = '$username' and password='$password'";

$query = mysqli_query($con,$sql);

if(mysqli_num_rows($query)>0)
{
	header("location:adminhome.php");

}
else
{
	header("refresh:0;adminlog.html");
	echo '<script> alert("sorry you have entered incorrect details");</script>';
}

?>