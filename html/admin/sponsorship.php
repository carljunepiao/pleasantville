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
			<h1>Sponsorship</h1>
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
		<!-- /////////////////// SPONSORSHIP /////////////////////// -->
		<!-- ADD -->
		<form action="../../php/admin-php-files/ADD/addsponsorship.php" method="post" accept-charset="utf-8"/>
			<div class="admin br1">
				<h5>Add Sponsorship</h5>
				<div class="box">
					<div class="properties">
						<!-- USER ID -->
						<select required name="select-user-id">
							<option selected disabled>Select User ID</option>
                            <?php include '../../php/admin-php-files/EDIT/dropdownUserID.php'; echo $options;?>
						</select>
						<!-- PRODUCTION -->
						<select required name="select-production">
							<option selected disabled>Select Production No.</option>
                            <?php include '../../php/admin-php-files/EDIT/dropdownProduction.php'; echo $options;?>
						</select>
						<!-- DONATION DATE -->
						<input required="" type="text" class="form-control" placeholder="Donation Date" onfocus="(this.type='date')" name="donationdate"/>
						<!-- AMOUNT -->
						<input type="number" placeholder="Amount" name="amount"></input>
					</div>
					<input class="enter" type="submit" value="Submit"></input>
				</div>
			</div>
		</form>
		<!-- EDIT -->
		<form action="../../php/admin-php-files/EDIT/editsponsorship.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Edit Sponsorship</h5>
				<div class="box">
					<div class="properties">
						<!-- USER ID -->
						<select required name="select-user-id">
							<option selected disabled>Select User ID</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownSponsorship.php'; echo $options;?>
						</select>
						<!-- PRODUCTION -->
						<select required name="select-production">
							<option selected disabled>Select Production</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownProduction.php'; echo $options;?>
						</select>
						<!-- DONATION DATE -->
						<input type="text" class="form-control" placeholder="Donation Date" onfocus="(this.type='date')" name="donationdate"/>
						<!-- AMOUNT -->
						<input type="number" placeholder="Amount" name="amount"></input>
					</div>
					<input class="enter" type="submit" value="Edit"></input>
				</div>
			</div>
		</form>
		<!-- DISPLAY -->
		<form action="../../php/admin-php-files/DISPLAY/displaysponsorship.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Display Sponsorships</h5>
				<div class="box">
					<div class="properties">
						<!---->
					</div>
					<input class="enter" type="submit" value="Display"></input>
				</div>
			</div>
		</form>
		<!-- DELETE -->
		<form action="../../php/admin-php-files/DELETE/deletesponsorship.php" method="post" accept-charset="utf-8"/>
			<div class="admin br2">
				<h5>Delete Sponsorship</h5>
				<div class="box">
					<div class="properties">
						<!-- PRODUCTION -->
						<select required name="select-production">
							<option selected disabled>Select Production</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownProduction.php'; echo $options;?>
						</select>
						<!-- USER ID -->
						<select required name="select-user-id">
							<option selected disabled>Select User ID</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownSponsorship.php'; echo $options;?>
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