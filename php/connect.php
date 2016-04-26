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
$address = $_POST['address'];
$username = $_POST['username'];
$password = $_POST['password'];

$sql="insert into Registration(fname,lname,contact_no,address,username,password) values ($fname', '$lname', '$contact', '$address', '$username', '$password')";


$query=mysqli_query($con,$sql);

if($query)
	echo 'Registration Complete';
else
	echo 'A problem has been encountered. Pls ';
?>