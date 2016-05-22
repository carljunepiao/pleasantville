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

	$memberID = $_POST['member-id'];
	$prodID = $_POST['production-id'];
	$title = $_POST['title'];

	$date = $_POST['date'];
	$job = $_POST['job'];


	$sql="INSERT INTO casts(MemberID,ProdNo,Title,Date,MemberJob) VALUES ('$memberID', '$prodID', '$title', '$date', '$job')";

	echo "<br/>$sql<br/>";

	$query=mysqli_query($con,$sql);

	if($query){
		// header("Location: ../../../html/admin.php");
	    echo 'Successfully added user.';
	}
	else{
		// header("Location: ../../../html/admin.php");
	    echo 'A problem has been encountered. Pls check add user.';
	}
?>