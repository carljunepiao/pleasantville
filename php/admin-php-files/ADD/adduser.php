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
$contact = $_POST['contact'];

$username = $_POST['username'];
$password = $_POST['password'];
$type = $_POST['type'];

$Phash = sha1(sha1($password."salt")."salt");

$sql="INSERT into users(UserID,Fname,Lname,Contact_No,Username,Password,Type) values (139,'$Fname', '$Lname', '$Contact_No', '$Username', '$Phash', '$type')";


$query=mysqli_query($con,$sql);

if($query)
    echo 'Successfully added user.';
else
    echo 'A problem has been encountered. Pls check add user.';
?>