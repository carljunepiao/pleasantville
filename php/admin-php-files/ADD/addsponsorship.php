<?php

	$host= 'localhost';
	$user= 'root';
	$pass='';
	$db= 'PleasantVille';

	$con = mysqli_connect($host,$user,$pass,$db);

	if($con)
	    echo 'connected successfully to PlasantVille database';

	$userID = $_POST['select-user-id'];
	$Prod = $_POST['select-production'];
	$donationdate = $_POST['donationdate'];
	$amount = $_POST['amount'];

	$sql="INSERT INTO sponsorship(ProdNo,`UserID`,`Date_of_Donation`,`Amount_of_Donation`) VALUES ('$Prod', '$userID', '$donationdate', '$amount')";

	echo "</br> $sql</br>";

	$query=mysqli_query($con,$sql);

	if($query){
		header("Location: ../../../html/admin.php");
	    echo 'Successfully added in Sponsorship';
	}
	else{
		header("Location: ../../../html/admin.php");
	    echo 'An error has been encountered';
	}
?>