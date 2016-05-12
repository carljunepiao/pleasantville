<?php
//not yet done
	$host= 'localhost';
	$user= 'root';
	$pass='';
	$db= 'PleasantVille';

	$con = mysqli_connect($host,$user,$pass,$db);

	if($con)
	    echo 'connected successfully to PlasantVille database';

	$userID = $_POST['userid'];
	$title = $_POST['title'];
	$proddate = $_POST['proddate'];
	$donationdate = $_POST['donationdate'];
	$amount = $_POST['amount'];

	//naay error ani - piao
	$sql="INSERT INTO sponsorship(`Title`,`Date`,`UserID`,`Date_of_Donation`,`Amount_of_Donation`) VALUES ('$title','$proddate', '$userID', '$donationdate', '$amount')";

	echo "</br> $sql</br>";

	$query=mysqli_query($con,$sql);

	if($query){
		header("Location: ../../../html/admin.html");
	    echo 'Successfully added in Sponsorship';
	}
	else{
		header("Location: ../../../html/admin.html");
	    echo ' A problem has been encountered. ';
	}
?>