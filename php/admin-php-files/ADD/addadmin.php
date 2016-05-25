<?php
	//this is for the administrator
	//similar to register.php but has user type, the admin can add wether a user is a patron or a sponsor
	$host= 'localhost';
	$user= 'root';
	$pass='';
	$db= 'PleasantVille';

	$con = mysqli_connect($host,$user,$pass,$db);

	if($con)
	    echo 'connected successfully to PlasantVille database';

	$fname = $_POST['firstname'];
	$lname = $_POST['lastname'];

	$username = $_POST['username'];
	$password = $_POST['password'];

	$sql="INSERT INTO administrator(Fname,Lname,Username,Password) VALUES ('$fname', '$lname','$username','$password')";

	echo "<br/>$sql<br/>";

	$query=mysqli_query($con,$sql);

	if($query){
		header("Location: ../../../html/admin.php");
	    echo 'Successfully added user.';
	}
	else{
		header("Location: ../../../html/admin.php");
	    echo 'A problem has been encountered. Pls check add user.';
	}
?>