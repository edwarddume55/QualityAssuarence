<?php
include "connection.php";

$jobno= $_POST['jobno'];
$password = $_POST['password'];

$sql = "SELECT * FROM staff where jobno = '$jobno' and password='$password'";

$query = mysqli_query($con,$sql);

if(mysqli_num_rows($query)>0)
{
	header("location:labhome.php");

}
else
{
	header("refresh:0;index.php");
	echo '<script> alert("sorry you have entered incorrect details");</script>';
}

?>