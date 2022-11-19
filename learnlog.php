<?php
include "connection.php";

$jobno= $_POST['jobno'];
$password = $_POST['password'];

$sql = "SELECT * FROM staff where jobno = '$jobno' and password='$password'";

$query = mysqli_query($con,$sql);

if(mysqli_num_rows($query)>0)
{
	header("location:libhome.php");

}
else
{
	header("refresh:0;libdep.html");
	echo '<script> alert("sorry you have entered incorrect details");</script>';
}

?>