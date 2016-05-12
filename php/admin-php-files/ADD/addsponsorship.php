<?php

	$host= 'localhost';
	$user= 'root';
	$pass='';
	$db= 'PleasantVille';

	$con = mysqli_connect($host,$user,$pass,$db);

	if($con)
	    echo 'connected successfully to PlasantVille database';

	$userID = $_POST['select-user-id'];
	$title = $_POST['select-title'];
	$proddate = $_POST['proddate'];
	$donationdate = $_POST['donationdate'];
	$amount = $_POST['amount'];

	$sql="INSERT INTO sponsorship(`Title`,`Date`,`UserID`,`Date_of_Donation`,`Amount_of_Donation`) VALUES ('$title','$proddate', '$userID', '$donationdate', '$amount')";

	echo "</br> $sql</br>";

	$query=mysqli_query($con,$sql);

	if($query){
<<<<<<< HEAD
		// header("Location: ../../../html/admin.php");
	    echo 'Successfully added in Sponsorship';
	}
	else{
		// header("Location: ../../../html/admin.php");
=======
		header("Location: ../../../html/admin.php");
	    echo 'Successfully added in Sponsorship';
	}
	else{
		header("Location: ../../../html/admin.php");
>>>>>>> 2714ba0a5cf178304b299f26b4ce7ea5374ed6c8
	    echo ' A problem has been encountered. ';
	}
?>