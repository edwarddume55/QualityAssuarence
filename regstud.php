<?php
include "connection.php";

$regno = $_POST['regno'];
$fname = $_POST['fname'];
$phone = $_POST['phone'];
$course = $_POST['course'];

$sql = "INSERT INTO students() values ('$regno', '$fname', '$phone', '$course', '$regno')";

if(mysqli_query($con,$sql))
{
	header("refresh:0;adminhome.php");
	echo '<script> alert("student registered successfully");</script>';
}
else
{
	header("refresh:0;adminhome.php");
	echo '<script> alert("student already registered");</script>';
}
?>