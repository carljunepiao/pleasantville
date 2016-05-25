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

	$sql = "UPDATE sponsorship SET Date_of_Donation = '$donationdate', Amount_of_Donation = '$amount' WHERE ProdNo = '$Prod' AND UserID = '$userID'";
	$query=mysqli_query($con,$sql);

	if($query){
		header("Location: ../../../html/admin.php");
	    echo 'Successfully added in Sponsorship';
	}
	else{
		header("Location: ../../../html/admin.php");
	    echo ' A problem has been encountered. ';
	}
?>