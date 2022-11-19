<?php

session_start();
	$regno=$_SESSION['regno'];
include "connection.php";

$qno = $_POST['qno'];
$answer = $_POST['answer'];
$sql1 = "SELECT * FROM libresult where regno='$regno' and questionno=$qno";
$query = mysqli_query($con,$sql1);
if(mysqli_num_rows($query)==1)
{
echo 'You cannot submit response twice';
}
else
{
$sql = "INSERT INTO libresult () values ('$regno','$qno','$answer','')";
if(mysqli_query($con,$sql)){
	header('location:libq4.php');

}
else
{
	echo 'Not submitted';
}
}
?>