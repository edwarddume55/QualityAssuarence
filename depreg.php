<?php
include "connection.php";

$jobno = $_POST['jobno'];
$fname = $_POST['fname'];
$phone = $_POST['phone'];
$department = $_POST['department'];

$sql = "INSERT INTO staff() values ('$jobno', '$fname', '$phone', '$department', '$jobno')";

if(mysqli_query($con,$sql))
{
	header("refresh:0;adminhome.php");
	echo '<script> alert("Staff registered successfully");</script>';
}
else
{
	header("refresh:0;adminhome.php");
	echo '<script> alert("You can only register one person per department");</script>';
}
?>