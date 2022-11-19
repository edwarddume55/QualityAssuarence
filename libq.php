<?php
include "connection.php";

$qno = $_POST['qno'];
$question = $_POST['question'];


$sql = "INSERT INTO libassess() values ('$qno', '$question')";

if(mysqli_query($con,$sql))
{
	header("refresh:0;libraryassess.html");
	echo '<script> alert("Question added successfuly");</script>';
}
else
{
	header("refresh:0;libraryassess.html");
	echo '<script> alert("Question already registered");</script>';
}
?>