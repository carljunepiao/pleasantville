<?php
//this is for the administrator
//similar to connect.php but has user type, the admin can add wether a user is a patron or a sponsor
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
$address = $_POST['address'];
$username = $_POST['username'];
$password = $_POST['password'];
$type = $_POST['type'];

$sql="INSERT into Registration(fname,lname,contact_no,address,username,password,type) values ($fname', '$lname', '$contact', '$address', '$username', '$password','$type')";


$query=mysqli_query($con,$sql);

if($query)
    echo 'Successfully added user.';
else
    echo 'A problem has been encountered. Pls check add user.';
?>