<?php

	$host= 'localhost';
	$user= 'root';
	$pass='';
	$db= 'PleasantVille';

	$con = mysqli_connect($host,$user,$pass,$db);

	if($con)
		echo 'connected successfully to PlasantVille database';

	$Fname = $_POST['fname'];
	$Lname = $_POST['lname'];
	$Contact_No = $_POST['contact'];

	$Username = $_POST['username'];
	$Password = $_POST['password'];

	$Phash = sha1(sha1($Password."salt")."salt");

	//Enter userID dapat Unique, PHASH should be used as password
	$sql="insert into users(UserID,Fname,Lname,Contact_No,Username,Password) values (141,'$Fname', '$Lname', '$Contact_No', '$Username', '$Phash')";

	$query=mysqli_query($con,$sql);

	if($query)
		echo 'data inserted successfully';
	else
		echo 'nope';

?>