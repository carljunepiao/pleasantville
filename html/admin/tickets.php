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
		<h1>Tickets</h1>
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
				<li><a href="../../php/tests/logs.php">Transactions</a></li><!DOCTYPE html>
			</ul>
		</nav>

		<!-- /////////////////// TICKETS /////////////////////// -->
                <img class="seats" src="../../images/seats.jpg">
		<form action="../../php/admin-php-files/EDIT/editticket.php" method="post" accept-charset="utf-8"/>
			<div class="admin br1 br2">
				<h5>Buy Ticket</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-user-id">
							<option selected disabled>Select User ID</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownUserID.php'; echo $options;?>
						</select>
						</select>
						<select required name="select-title">
							<option selected disabled>Select Title</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
						</select>
						</select>
						<select required name="select-date">
							<option selected disabled>Select Date</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownDate.php'; echo $options;?>
						</select>
						</select>
						<select required name="select-seat">
							<option selected disabled>Select Seat</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownSeat.php'; echo $options;?>
						</select>
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