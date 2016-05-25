<html lang="en">
<head>
	<meta charset="utf-8">
	<title>The Pleasantville Theater</title>
	<link rel="icon" href="../../images/adminicon.jpg">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
	<link rel="stylesheet" href="../../css/main.css">
	<link rel="stylesheet" href="../../css/admin.css">
</head>
<body>
	<nav class="main-navigation">
		<ul>
			<li><a href="../admin-login.php">Log out</a></li>
		</ul>
	</nav>
	<header>
		<h1>Seats</h1>
		<img class="logo" src="../../images/adminicon.jpg" alt="PleasantvilleLogo">
	</header>

	<div class="container">
		<nav class="secondary-navigation">
			<ul>
				<li><a href="user.php">User</a></li>
				<li><a href="production.php">Production</a></li>
				<li><a href="casts.php">Casts</a></li>
				<li><a href="member.php">Member</a></li>
				<li><a href="play.php">Play</a></li>
				<li><a href="seats.php">Seats</a></li>
				<li><a href="sponsorship.php">Sponsorship</a></li>
				<li><a href="tickets.php">Tickets</a></li>
				<li><a href="admin.php">Admin</a></li>
				<li><a href="../../php/tests/backup.php">Backup</a></li>
				<li><a href="../../php/tests/restore.php">Restore</a></li>
				<li><a href="../../php/tests/logs.php">Transactions</a></li><!DOCTYPE html>
			</ul>
		</nav>

		<!-- /////////////////// SEATS /////////////////////// -->
		<form action="../../php/admin-php-files/ADD/addseat.php" method="post" accept-charset="utf-8"/>
			<div class="admin br1 br2">
				<h5>Add Seat</h5>
				<div class="box">
					<div class="properties">
                        <input type="text" placeholder="Seat No" name="seat-no"></input>
						<select required name="select-production-no">
							<option selected disabled>select-production-id</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownProduction.php'; echo $options;?>
						</select>
					</div>
					<input class="enter" type="submit" value="Submit"></input>
				</div>
			</div>
		</form>
		<!-- /////////////////////////////////// -->

		<footer>
			<p>`Maestro Productions</p>
			<p>japheth162@gmail.com : 09123456789</p>
			<p>Itanimulli</p>
		</footer>
		
	</div>

</body>

</html>