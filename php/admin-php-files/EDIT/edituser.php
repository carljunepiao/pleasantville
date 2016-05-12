<?php
	//this is for the administrator
	//similar to register.php but has user type, the admin can add wether a user is a patron or a sponsor
	$host= 'localhost';
	$user= 'root';
	$pass='';
	$db= 'PleasantVille';

	$con = mysqli_connect($host,$user,$pass,$db);

	if($con)
	    echo 'connected successfully to PleasantVille database';

	$fname = $_POST['firstname'];
	$lname = $_POST['lastname'];
	$contact = $_POST['contact'];

	$username = $_POST['username'];
	$password = $_POST['password'];

	$Patron = $_POST['patron'];
	$Sponsor = $_POST['sponsor'];

	$UserID = $_POST['select-user-id'];

	$pat = 0;
	$spon = 0;

	if($Patron == 'value1'){
		$pat = 1;
	}
	if($Sponsor == 'value2'){
		$spon = 1;
	}

	echo "<br/>$Sponsor<br/>";
	echo "<br/>$Patron<br/>";

	$phash = sha1(sha1($password."salt")."salt");

	// $sql="UPDATE users(Fname,Lname,Contact_No,Username,Password,Patron,Sponsor) SET ('$fname', '$lname', '$contact', '$username', '$phash', '$pat', '$spon') WHERE UserID = $UserID";
	$sql="UPDATE users SET Fname = '$fname', Lname = '$lname', Contact_No = '$contact', Username = '$username', Password = '$phash', Patron = '$pat', Sponsor = '$spon' WHERE UserID = $UserID";

	echo "<br/>$sql<br/>";

	$query=mysqli_query($con,$sql);

	if($query){
		header("Location: ../../../html/admin.php");
	    echo 'Successfully added user.';
	}
	else{
		header("Location: ../../../html/admin.php");
	    echo 'A problem has been encountered. Pls check add user.';
	}
?>