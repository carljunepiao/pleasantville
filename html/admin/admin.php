<!DOCTYPE html>
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

	<div class="container">
	<nav class="main-navigation">
		<ul>
			<li><a href="../admin-login.php">Log out</a></li>
		</ul>
	</nav>
	<header>
		<h1>Admin</h1>
		<img class="logo" src="../../images/adminicon.jpg" alt="PleasantvilleLogo">
	</header>
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
				<li><a href="../../php/tests/logs.php">Transactions</a></li>
			</ul>
		</nav>

		<!-- /////////////////// ADMIN /////////////////////// -->
		<form action="../../php/admin-php-files/ADD/addadmin.php" method="post" accept-charset="utf-8"/>
				<div class="admin br1">
					<h5>Add Admin</h5>
					<div class="box">
						<div class="properties">
							<input pattern=".{0}|.{2,}" maxlength="15" required type="text" placeholder="First Name" name="firstname"></input>
							<input pattern=".{0}|.{2,}" maxlength="15" required type="text" placeholder="Last Name" name="lastname"></input>
							<input pattern=".{0}|.{5,}" maxlength="15" required type="text" placeholder="Username" name="username"></input>
							<input pattern=".{0}|.{5,}" maxlength="15" required type="password" placeholder="Password" name="password"></input>
						</div>
						<input class="enter" type="submit" value="Submit"></input>
					</div>
				</div>
		</form>
		<form action="../../php/admin-php-files/EDIT/editadmin.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Edit Admin</h5>
				<div class="box">
					<div class="properties">
                        <select required name="select-admin-username">
                        	<option selected disabled>Select Admin Username</option>
                            <?php include '../../php/admin-php-files/EDIT/dropdownUsername.php'; echo $options;?>
						</select>
						<input pattern=".{0}|.{2,}" maxlength="15" type="text" placeholder="First Name" name="firstname"></input>
						<input pattern=".{0}|.{2,}" maxlength="15" type="text" placeholder="Last Name" name="lastname"></input>
					</div>
					<input class="enter" type="submit" value="Edit"></input>
				</div>
			</div>
		</form>
		<form action="../../php/admin-php-files/DISPLAY/displayadmin.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Display Admin</h5>
				<div class="box">
					<input class="enter" type="submit" value="Display"></input>
				</div>
			</div>
		</form>
		<form action="../../php/admin-php-files/DELETE/deleteadmin.php" method="post" accept-charset="utf-8"/>
			<div class="admin br2">
				<h5>Delete Admin</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-admin-username">
							<option selected disabled>Select Admin Username</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownUsername.php'; echo $options;?>
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

</body>

</html>