<?php

	$host= 'localhost';
	$user= 'root';
	$pass='';
	$db= 'PleasantVille';

	$con = mysqli_connect($host,$user,$pass,$db);

	if($con)
	    echo 'connected successfully to PlasantVille database';

	$fname = $_POST['fname'];
	$lname = $_POST['lname'];
	$contact = $_POST['contact'];
	$username = $_POST['username'];
	$password = $_POST['password'];
	//mga bai sure na registration ang table diri? user man tingali ni - alfi
	$sql=" INSERT into users(Fname,Lname,Contact_No,Username,Password) values ($fname', '$lname', '$contact', '$username', '$password')";


	$query=mysqli_query($con,$sql);

	if($query)
		echo 'Registration Complete';
	else
		echo 'A problem has been encountered. Pls ';

?>