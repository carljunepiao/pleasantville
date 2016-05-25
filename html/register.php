<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Register</title>
	<title>The Pleasantville Theater</title>
	<link rel="icon" href="../images/logo.jpg">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
	<link rel="stylesheet" href="../css/login-register.css">
	<link rel="stylesheet" href="../css/register.css">

	<script src="../javascripts/register-notif.js"></script>
</head>

<body>


	<div class="container">
	<img class="logo" src="../images/logo.jpg">
	<h1>Pleasantville Registration</h1>

		<form action="../php/register.php" method="post" accept-charset="utf-8"/>
			<p class="attribute">First Name</p>
			<input required class="name" type="text" name="fname">
			<p class="attribute">Last Name</p>
			<input required class="name" type="text" name="lname">
			<p class="attribute">Contact Number</p>
			<input class="number" type="number" name="contact">
			<p class="attribute">Username</p><input required class="log" type="text" name="username">
			<p class="attribute">Password</p><input required class="log" type="password" name="password">
			<input class="enter" type="submit" value="Submit">
		</form>

	<center><a href="../html/index.php">Back to Home</a></center>
	</div>


</body>

</html>