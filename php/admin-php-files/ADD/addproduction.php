<?php
$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$title = $_POST['title'];
$date = $_POST['proddate'];
$revenue = $_POST['revenue'];

$sql="INSERT INTO production(`Title`, `Date`, `Revenue`) VALUES ('$title', '$date', '$revenue')";

echo "$sql";
$query=mysqli_query($con,$sql);

if($query){
	header("Location: ../../../html/admin.html");
    echo 'Adding to production successfully completed!';
}
else{
	header("Location: ../../../html/admin.html");
    echo 'A problem has been encountered. Pls check add production.';
}
?>