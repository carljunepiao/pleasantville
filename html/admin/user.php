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
	<nav class="main-navigation">
		<ul>
			<li><a href="../admin-login.php">Log out</a></li>
		</ul>
	</nav>
	<header>
		<h1>User</h1>
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

		<!-- /////////////////// USER /////////////////////// -->
		<form action="../../php/admin-php-files/ADD/adduser.php" method="post" accept-charset="utf-8"/>
			<div class="admin br1">
				<h5>Add User</h5>
				<div class="box">
					<div class="properties">
						<input required type="text" placeholder="First Name" name="firstname"></input>
						<input required type="text" placeholder="Last Name" name="lastname"></input>
						<input type="number" placeholder="Contact" name="contact"></input>
						<input required type="text" placeholder="Username" name="username"></input>
						<input required type="password" placeholder="Password" name="password"></input>
						<p class="label">Patron</p><input class="checkbox" type="checkbox" name="patron" value="value1"></input>
						<p class="label">Sponsor</p><input class="checkbox" type="checkbox" name="sponsor" value="value2"></input>
					</div>
					<input class="enter" type="submit" value="Submit"></input>
				</div>
			</div>
		</form>
		<form action="../../php/admin-php-files/EDIT/edituser.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Edit User</h5>
				<div class="box">
					<div class="properties">
                        <select required name="select-user-id">
                        	<option selected disabled>Select User ID</option>
                            <?php include '../../php/admin-php-files/EDIT/dropdownUserID.php'; echo $options;?>
						</select>
						<input type="text" placeholder="First Name" name="firstname"></input>
						<input type="text" placeholder="Last Name" name="lastname"></input>
						<input type="number" placeholder="Contact" name="contact"></input>
						<input type="text" placeholder="Username" name="username"></input>
						<input type="password" placeholder="Password" name="password"></input>
						<p class="label">Patron</p><input class="checkbox" type="checkbox" name="patron" value="value1"></input>
						<p class="label">Sponsor</p><input class="checkbox" type="checkbox" name="sponsor" value="value2"></input>
					</div>
					<input class="enter" type="submit" value="Edit"></input>
				</div>
			</div>
		</form>
		<form action="../../php/admin-php-files/DISPLAY/displayuser.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Display Users</h5>
				<div class="box">
					<div class="properties">
						<!---->
					</div>
					<input class="enter" type="submit" value="Display"></input>
				</div>
			</div>
		</form>
		<form action="../../php/admin-php-files/DELETE/deleteuser.php" method="post" accept-charset="utf-8"/>
			<div class="admin br2">
				<h5>Delete User</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-user-id">
							<option selected disabled>Select User ID</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownUserID.php'; echo $options;?>
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