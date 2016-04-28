<?php 

	setcookie("loggedin", "val", time() - (120), "/");
	header("Location: ../html/login.html");

?>