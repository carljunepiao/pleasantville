<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>The Pleasantville Theater</title>
	<link rel="icon" href="../../images/adminicon.jpg">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
	<link rel="stylesheet" href="../../css/main.css">
	<link rel="stylesheet" href="../../css/admin.css">
	<script type="text/javascript">
        window.history.forward();
        function noBack()
        {
            window.history.forward();
        }
	</script>
</head>
<body onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload="">
	<div class="container">
		<nav class="main-navigation">
			<ul>
				<li><a href="../admin-login.php">Log out</a></li>
			</ul>
		</nav>
		<header>
			<h1>Production</h1>
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
		<!-- /////////////////// PRODUCTIONS /////////////////////// -->
		<!-- ADD -->
		<form action="../../php/admin-php-files/ADD/addproduction.php" method="post" accept-charset="utf-8"/>
			<div class="admin br1">
				<h5>Add Production</h5>
				<div class="box">
					<div class="properties">
						<!-- TITLE -->
						<select required name="select-title">
							<option selected disabled>select-title</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
						</select>
						<!-- PRODUCTION DATE -->
						<input type="text"  min='2016-05-26' class="form-control" placeholder="production date" onfocus="(this.type='date')" name="proddate"/>
						<!-- REVENUE -->
						<input type="number" placeholder="revenue" name="revenue"></input>
					</div>
					<input class="enter" type="submit" value="Submit"></input>
				</div>
			</div>
		</form>
		<!-- EDIT -->
		<form action="../../php/admin-php-files/EDIT/editproduction.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Edit Production</h5>
				<div class="box">
					<div class="properties">
						<!-- PRODUCTION ID -->
						<select required name="select-production-id">
							<option selected disabled>select-production-id</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownProduction.php'; echo $options;?>
						</select>
						<!-- PLAY TITLE -->
						<select required name="select-production-title">
							<option selected disabled>select-playwright-title</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
						</select>
						<!-- PRODUCTION DATE -->
						<input type="text"  min='2016-05-26' class="form-control" placeholder="production date" onfocus="(this.type='date')" name="proddate"/>
						<!-- REVENUE -->
						<input type="number" placeholder="revenue" name="revenue"></input>
					</div>
					<input class="enter" type="submit" value="Edit"></input>
				</div>
			</div>
		</form>
		<!-- DISPLAY -->
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
		<!-- DELETE -->
		<form action="../../php/admin-php-files/DELETE/deleteproduction.php" method="post" accept-charset="utf-8"/>
			<div class="admin br2">
				<h5>Delete Production</h5>
				<div class="box">
					<div class="properties">
						<!-- PRODUCTION ID -->
						<select required name="select-production-id">
							<option selected disabled>select-production-id</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownProduction.php'; echo $options;?>
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