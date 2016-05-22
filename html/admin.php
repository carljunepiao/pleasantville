<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>The Pleasantville Theater</title>
	<link rel="icon" href="../images/adminicon.jpg">
	<link rel="stylesheet" href="../css/main.css">
	<link rel="stylesheet" href="../css/admin.css">
</head>
<body>
	<nav class="main-navigation">
		<ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="production.html">Production</a></li>
			<li><a href="admin-login.html">Log-out</a></li>
		</ul>
	</nav>
	<header>
		<h1>Admin</h1>
		<img class="logo" src="../images/adminicon.jpg" alt="PleasantvilleLogo">
	</header>

	<div class="container">

		<nav class="secondary-navigation">
			<ul>
				<li><a href="admin/user.html">User</a></li>
				<li><a href="admin/production.html">Production</a></li>
				<li><a href="admin/casts.html">Casts</a></li>
				<li><a href="admin/member.html">Member</a></li>
				<li><a href="admin/play.html">Play</a></li>
				<li><a href="admin/seats.html">Seats</a></li>
				<li><a href="admin/sponsorship.html">Sponsorship</a></li>
				<li><a href="admin/tickets.html">Tickets</a></li>
			</ul>
		</nav>

		<footer>
			<p>`Maestro Productions</p>
			<p>japheth162@gmail.com : 09123456789</p>
			<p>Itanimulli</p>
		</footer>

	</div>

	<form action="../php/tests/backup.php" method="post" accept-charset="utf-8"/>
		<input class="button" type="submit" value="Backup" name="backup"></input>
	</form>
	<form action="../php/tests/restore.php" method="post" accept-charset="utf-8"/>
		<input class="button" type="submit" value="Restore" name="restore"></input>
	</form>
	<form action="../php/tests/logs.php" method="post" accept-charset="utf-8"/>
		<input class="button" type="submit" value="Transaction Logs" name="log"></input>
	</form>

</body>

</html>