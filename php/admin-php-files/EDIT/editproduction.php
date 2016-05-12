<?php
$host= 'localhost';
$user= 'root';
$pass='';
$db= 'PleasantVille';

$con = mysqli_connect($host,$user,$pass,$db);

if($con)
    echo 'connected successfully to PlasantVille database';

$prodno = $_POST['select-production-id'];
$title = $_POST['select-production-title'];
$date = $_POST['proddate'];
$revenue = $_POST['revenue'];

$sql="UPDATE production SET Date = '$date', Revenue = '$revenue' WHERE ProdNo = '$prodno' AND Title = '$title'";

echo "<br>$sql</br>";
$query=mysqli_query($con,$sql);

if($query){
	header("Location: ../../../html/admin.php");
    echo 'Edit to production successfully completed!';
}
else{
	header("Location: ../../../html/admin.php");
    echo 'A problem has been encountered. Pls check add production.';
}
?>