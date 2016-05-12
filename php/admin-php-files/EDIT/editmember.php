<?php

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
	$memberID = $_POST['select-member-id'];

	$sql="UPDATE member SET FName = '$fname', LName = '$lname', ContactNo = '$contact' WHERE MemberID = $memberID";

	echo "<br/>$sql<br/>";
	$query=mysqli_query($con,$sql);

	if($query){
		header("Location: ../../../html/admin.php");
	    echo 'Edit member complete!';
	}
	else{
		header("Location: ../../../html/admin.php");
	    echo ' A problem has been encountered. Check add member.';
	}
?>