<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>The Pleasantville Theater</title>
	<link rel="icon" href="../../images/adminicon.jpg">
	<link rel="stylesheet" href="../../css/main.css">
	<link rel="stylesheet" href="../../css/admin.css">
</head>
<body>
	<nav class="main-navigation">
		<ul>
			<li><a href="../index.html">Home</a></li>
			<li><a href="../production.html">Production</a></li>
			<li><a href="../admin.html">Admin</a></li>
		</ul>
	</nav>
	<header>
		<h1>Production</h1>
		<img class="logo" src="../../images/adminicon.jpg" alt="PleasantvilleLogo">
	</header>

	<div class="container">
		<nav class="secondary-navigation">
			<ul>
				<li><a href="user.html">User</a></li>
				<li><a href="production.html">Production</a></li>
				<li><a href="casts.html">Casts</a></li>
				<li><a href="member.html">Member</a></li>
				<li><a href="play.html">Play</a></li>
				<li><a href="seats.html">Seats</a></li>
				<li><a href="sponsorship.html">Sponsorship</a></li>
				<li><a href="tickets.html">Tickets</a></li>
			</ul>
		</nav>

		<!-- /////////////////// PRODUCTIONS /////////////////////// -->
		<form action="../../php/admin-php-files/ADD/addproduction.php" method="post" accept-charset="utf-8"/>
			<div class="admin br1">
				<h5>Add Production</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-title">
							<option selected disabled>select-title</option>
							<?php include '../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
						</select>
						<input type="text" class="form-control" placeholder="production date" onfocus="(this.type='date')" name="proddate"/>
						<input type="number" placeholder="revenue" name="revenue"></input>
					</div>
					<input class="enter" type="submit" value="Submit"></input>
				</div>
			</div>
		</form>
		<form action="../../php/admin-php-files/EDIT/editproduction.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Edit Production</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-production-id">
							<option selected disabled>select-production-id</option>
							<?php include '../php/admin-php-files/EDIT/dropdownProduction.php'; echo $options;?>
						</select>
						<select required name="select-production-title">
							<option selected disabled>select-playwright-title</option>
							<?php include '../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
						</select>
						<input type="text" class="form-control" placeholder="production date" onfocus="(this.type='date')" name="proddate"/>
						<input type="number" placeholder="revenue" name="revenue"></input>
					</div>
					<input class="enter" type="submit" value="Edit"></input>
				</div>
			</div>
		</form>
		<form action="../../php/admin-php-files/DISPLAY/displayproduction.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Display Productions</h5>
				<div class="box">
					<div class="properties">
						<!---->
					</div>
					<input class="enter" type="submit" value="Display"></input>
				</div>
			</div>
		</form>
		<form action="../../php/admin-php-files/DELETE/deleteproduction.php" method="post" accept-charset="utf-8"/>
			<div class="admin br2">
				<h5>Delete Production</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-production-id">
							<option selected disabled>select-production-id</option>
							<?php include '../php/admin-php-files/EDIT/dropdownProduction.php'; echo $options;?>
						</select>
					</div>
					<input class="enter" type="submit" value="Delete"></input>
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

	<form action="../../php/tests/backup.php" method="post" accept-charset="utf-8"/>
		<input class="button" type="submit" value="Backup" name="backup"></input>
	</form>
	<form action="../../php/tests/restore.php" method="post" accept-charset="utf-8"/>
		<input class="button" type="submit" value="Restore" name="restore"></input>
	</form>
	<form action="../../php/tests/logs.php" method="post" accept-charset="utf-8"/>
		<input class="button" type="submit" value="Transaction Logs" name="log"></input>
	</form>

</body>

</html>