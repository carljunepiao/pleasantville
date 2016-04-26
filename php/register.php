<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Register</title>
	<link rel="stylesheet" type="text/css" href="css/login-register.css">
	<link rel="stylesheet" type="text/css" href="css/register.css">
</head>
<body>
	<img class="logo" src="images/logo2.jpg">

	<h1>Pleasantville Registration</h1>

	<div class="container">
                //connects to php
		<form action="connect.php" method="post" />

			<p class="attribute">First Name</p>
			<input class="name" type="text" placeholder="fname" name="fname">

			<p class="attribute">Last Name</p>
			<input class="name" type="text" placeholder="lname" name="lname">

			<p class="attribute">Contact Number</p>
			<input class="number" type="number" placeholder="contact" name="contact">

			<p class="attribute">Address</p>
			<input class="address" type="address" placeholder="address" name="address">

			<p class="attribute">Username</p><input class="log" type="text" placeholder="username" name="username">
			<p class="attribute">Password</p><input class="log" type="password" placeholder="password" name="password">
			<input class="enter" type="submit" value="Submit">

		</form>
                

	</div>

	<a href="index.html">Back to Home</a>

</body>
</html>