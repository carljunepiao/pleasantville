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
		<h1>Casts</h1>
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

		<!-- /////////////////// CASTS /////////////////////// -->
		<form action="../../php/admin-php-files/ADD/addcast.php" method="post" accept-charset="utf-8"/>
			<div class="admin br1">
				<h5>Add Cast</h5>
				<div class="box">
					<div class="properties">
						<select required name="member-id">
							<option selected disabled>Select Member ID</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownMember.php'; echo $options;?>
						</select>
						<select required name="production-id">
							<option selected disabled>Select Production ID</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownProduction.php'; echo $options;?>
						</select>
						<select required name="title">
							<option selected disabled>Select Title</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
						</select>
						<select required name="date">
							<option selected disabled>Select Date</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownProductionDate.php'; echo $options;?>
						</select>
						<input required type="text" placeholder="Job" name="job"></input>
					</div>
					<input class="enter" type="submit" value="Submit"></input>
				</div>
			</div>
		</form>
		<form action="../../php/admin-php-files/EDIT/editcast.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Edit Cast</h5>
				<div class="box">
					<div class="properties">
						<select required name="member-id">
							<option selected disabled>Select Member ID</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownCastMID.php'; echo $options;?>
						</select>
						<select required name="production-id">
							<option selected disabled>Select Production ID</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownProduction.php'; echo $options;?>
						</select>
						<select required name="title">
							<option selected disabled>Select Title</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
						</select>
						<select required name="date">
							<option selected disabled>Select Date</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownProductionDate.php'; echo $options;?>
						</select>
						<input required type="text" placeholder="Job" name="job"></input>
					</div>
					<input class="enter" type="submit" value="Edit"></input>
				</div>
			</div>
		</form>
		<form action="../../php/admin-php-files/DISPLAY/displaycast.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Display Casts</h5>
				<div class="box">
					<div class="properties">
						<!---->
					</div>
					<input class="enter" type="submit" value="Display"></input>
				</div>
			</div>
		</form>
		<form action="../../php/admin-php-files/DELETE/deletecast.php" method="post" accept-charset="utf-8"/>
			<div class="admin br2">
				<h5>Delete Cast</h5>
				<div class="box">
					<div class="properties">
						<select required name="member-id">
							<option selected disabled>Select Member ID</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownCastMID.php'; echo $options;?>
						</select>
						<select required name="production-id">
							<option selected disabled>Select Production ID</option>
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