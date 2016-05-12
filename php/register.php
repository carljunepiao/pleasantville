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
	$Patron = 0;
	$Sponsor = 0;

	$Phash = sha1(sha1($Password."salt")."salt");

	//Enter userID dapat Unique -piao
	$sql="INSERT INTO users(Patron,Sponsor,Fname,Lname,Contact_No,Username,Password) VALUES ('$Patron','$Sponsor','$Fname', '$Lname', '$Contact_No', '$Username', '$Phash')";

	$query=mysqli_query($con,$sql);

	if($query){
		header("Location: ../html");
		echo 'data inserted successfully';
	}
	else{
		header("Location: ../html/register.html");
		echo 'nope';
	}

?>