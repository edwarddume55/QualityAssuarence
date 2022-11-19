<?php
include "connection.php";

$regno= $_POST['regno'];
$password = $_POST['password'];

$sql = "SELECT * FROM students where regno = '$regno' and password='$password'";

$query = mysqli_query($con,$sql);

if(mysqli_num_rows($query)>0)
{
	header("location:studhome.php");
	session_start();
	$_SESSION['regno'] = $regno;

}
else
{
	header("refresh:0;studlog.html");
	echo '<script> alert("sorry you have entered incorrect details");</script>';
}

?>