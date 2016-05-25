<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>The Pleasantville Theater</title>
	<link rel="icon" href="../images/adminicon.jpg">
	<link rel="stylesheet" href="../css/main.css">
	<link rel="stylesheet" href="../css/admin-login.css">
	<script src="../javascripts/admin-login-notif.js"></script>
</head>
<body>
	<div class="test">
		<a href="../html/index.php">Home</a>
	</div>
	<form form action="../php/admin-login.php" method="post" accept-charset="utf-8">
		<div class="container">
			<header>
				<h1>Admin</h1>
				<img class="logo" src="../images/adminicon.jpg">
			</header>
			<div class="login">
				<input required class="textbox" type="text" placeholder="User" name="username"></input>
				<input required class="textbox" type="password" placeholder="Password" name="password"></input>
				<input class="enter" type="submit" value="Login" name="login"></input>
			</div>
			<footer>
				<p>`Maestro Productions</p>
				<p>japheth162@gmail.com : 09123456789</p>
				<p>Itanimulli</p>
			</footer>
		</div>
	</form>
</body>
</html>