<?php

include "studheader.php";
include "connection.php";

$sql= "SELECT * FROM libassess where questionno='1'";

$query = mysqli_query($con,$sql);

if(mysqli_num_rows($query)>0)

{
	echo '<form method="post" action="qsubmit.php"><center><table border="2">

<tr><th>Qno</th>
<th>question</th>
<th> true </th>
<th> false </th>
	</tr>';
	while($rows = mysqli_fetch_assoc($query))
{echo '<tr><td><input type="text" name="qno" value=';
	echo $rows['questionno'].' readonly></td>
	<td>';
	echo $rows['question'].'</td>';
	echo '<td><input type="radio" value="TRUE" name="answer"></td>';
		echo '<td> <input type="radio" value="FALSE" name="answer"></td></tr>';

}
echo '</table>
<br>
<input type="submit" value="SUBMIT">
</form>

';
}

?>