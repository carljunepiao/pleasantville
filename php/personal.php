<?php 
	
	$cookie_name = "loggedin";

	if(isset($_COOKIE[$cookie_name])){
		$cookie_value = $_COOKIE[$cookie_name];
		echo "WELCOME TO PLEASANTVILLE, YOU ARE $cookie_value !";
		echo '<a href = "../php/logout.php"> Logout </a>';
	}else{
		echo "You are not logged in!";
	}

	header("Location: ../html/newindex.php");

?>