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
			<h1>Member</h1>
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
		<!-- /////////////////// MEMBER /////////////////////// -->
		<!-- ADD -->
		<form action="../../php/admin-php-files/ADD/addmember.php" method="post" accept-charset="utf-8"/>
			<div class="admin br1">
				<h5>Add Member</h5>
				<div class="box">
					<div class="properties">
						<!-- FNAME -->
						<input pattern=".{0}|.{2,}" maxlength="15" required class="textbox" type="text" placeholder="First Name" name="firstname"></input>
						<!-- LNAME -->
						<input pattern=".{0}|.{2,}" maxlength="15" required class="textbox" type="text" placeholder="Last Name" name="lastname"></input>
						<!-- CONTACT -->
						<input class="number" type="number" placeholder="Contact" name="contact"></input>
					</div>
					<input class="enter" type="submit" value="Submit"></input>
				</div>
			</div>
		</form>
		<!-- EDIT -->
		<form action="../../php/admin-php-files/EDIT/editmember.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Edit Member</h5>
				<div class="box">
					<div class="properties">
						<!-- MEMBER ID -->
						<select required name="select-member-id">
							<option selected disabled>Select Member ID</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownMember.php'; echo $options;?>
						</select>
						<!-- FNAME -->
						<input pattern=".{0}|.{2,}" maxlength="15" class="textbox" type="text" placeholder="First Name" name="firstname"></input>
						<!-- LNAME -->
						<input pattern=".{0}|.{2,}" maxlength="15" class="textbox" type="text" placeholder="Last Name" name="lastname"></input>
						<!-- CONTACT -->
						<input class="number" type="number" placeholder="Contact" name="contact"></input>
					</div>
					<input class="enter" type="submit" value="Edit"></input>
				</div>
			</div>
		</form>
		<!-- DISPLAY -->
		<form action="../../php/admin-php-files/DISPLAY/displaymember.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Display Members</h5>
				<div class="box">
					<div class="properties">
						<!---->
					</div>
					<input class="enter" type="submit" value="Display"></input>
				</div>
			</div>
		</form>
		<!-- DELETE -->
		<form action="../../php/admin-php-files/DELETE/deletemember.php" method="post" accept-charset="utf-8"/>
			<div class="admin br2">
				<h5>Delete Member</h5>
				<div class="box">
					<div class="properties">
						<!-- MEMBER ID -->
						<select required name="select-member-id">
							<option selected disabled>Select Member ID</option>
							<?php include '../../php/admin-php-files/EDIT/dropdownMember.php'; echo $options;?>
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