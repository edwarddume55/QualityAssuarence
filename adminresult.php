<?php

include "adminheader.php";
include "connection.php";

$sql1 = "SELECT count(results) as total1 FROM libresult";
$query1=mysqli_query($con,$sql1);

if(mysqli_num_rows($query1)>0)
{
	while($rows = mysqli_fetch_assoc($query1))
	{
		$total1 = $rows['total1'];
	}
	echo '<center><h1>Total number of responses from students '. $total1 .'<br></h1></center>';




$sql = "SELECT count(results) as total FROM libresult where results =  'TRUE' ";

$query=mysqli_query($con,$sql);

if(mysqli_num_rows($query)>0)
{
	while($rows = mysqli_fetch_assoc($query))
	{
		$total = $rows['total'];
	}
}
}

if($total1==0)
{
	echo 'no assessment';
}
else
{
$stat = ($total /$total1)*100;

echo '<center><h1>Final statistics</h1> <br> There is <b style="color:red;">'. $stat . ' %</b> positivity in the library section from students who participated';
} 
?>