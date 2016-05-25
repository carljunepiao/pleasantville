<?php

	$cookie_name = "loggedin";

	$servername = "localhost";
	$username = "root";
	$password = "";
	$database = "PleasantVille";

	$conn = mysqli_connect($servername, $username, $password, $database);

	if(!$conn){
		die("Database connection failed: ".mysqli_connect_error());
	}else{
		echo "Connected to databasse successfully!";
	}

	if (isset($_POST['login'])){
		$user = $_POST['username'];
		$pass = $_POST['password'];

		//phash should be used but errors occur. (modify)
		$sql = "SELECT * FROM administrator WHERE Username = '$user' AND Password = '$pass'";
		$sql1 = "UPDATE administrator SET LogIn = 1 WHERE Username = '$user' AND Password = '$pass'";
		$sql2 = "UPDATE administrator SET Fname = 'haha' WHERE LogIn = 1";

		// $result0 = mysql_query($conn, $sql0);
		$result = mysqli_query($conn, $sql);
		$result1 = mysqli_query($conn, $sql1);
		$result2 = mysqli_num_rows($conn, $sql2);
		$count = mysqli_num_rows($result);

	if($result) {
		echo "process cool!";
	}
	else{
		echo "Shit!";
	}

		if($count == 1){
			$cookie_value = $user;
			setcookie($cookie_name,$cookie_value, time() + (180), "/");
			header("Location: ../html/admin.php");
		}else{
			header("Location: ../html/admin-login.php");
		}
	}

?>