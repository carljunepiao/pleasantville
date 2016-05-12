<?php
//not yet done
	$host= 'localhost';
	$user= 'root';
	$pass='';
	$db= 'PleasantVille';

	$con = mysqli_connect($host,$user,$pass,$db);

	if($con)
	    echo 'connected successfully to PlasantVille database';

	$sql="BACKUP DATABASE `pleasantville` TO DISK = 'C:\xampp\htdocs\pleasantville'";


	echo "<br/>$sql<br/>";
	$query=mysqli_query($con,$sql);

	if($query){
		header("Location: ../../../html/admin.html");
	    echo 'BackUp complete!';
	}
	else
	    echo ' A problem has been encountered. Check add member.';
?>