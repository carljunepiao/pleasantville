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

	<div class="container">
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

		<!-- /////////////////// USER /////////////////////// -->

		<form action="../php/admin-php-files/ADD/adduser.php" method="post" accept-charset="utf-8"/>
			<div class="admin br1">
				<h5>Add User</h5>
				<div class="box">
					<div class="properties">
						<input required type="text" placeholder="fname" name="firstname"></input>
						<input required type="text" placeholder="lname" name="lastname"></input>
						<input type="number" placeholder="contact" name="contact"></input>
						<input required type="text" placeholder="username" name="username"></input>
						<input required type="password" placeholder="password" name="password"></input>
						<p class="label">Patron</p><input class="checkbox" type="checkbox" name="patron" value="value1"></input>
						<p class="label">Sponsor</p><input class="checkbox" type="checkbox" name="sponsor" value="value2"></input>
					</div>
					<input class="enter" type="submit" value="Submit"></input>
				</div>
			</div>
		</form>
		<form action="../php/admin-php-files/EDIT/edituser.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Edit User</h5>
				<div class="box">
					<div class="properties">
                        <select required name="select-user-id">
                        	<option selected disabled>select-user-id</option>
                            <?php include '../php/admin-php-files/EDIT/dropdownUserID.php'; echo $options;?>
						</select>
						<input type="text" placeholder="fname" name="firstname"></input>
						<input type="text" placeholder="lname" name="lastname"></input>
						<input type="number" placeholder="contact" name="contact"></input>
						<input type="text" placeholder="username" name="username"></input>
						<input type="password" placeholder="password" name="password"></input>
						<p class="label">Patron</p><input class="checkbox" type="checkbox" name="patron" value="value1"></input>
						<p class="label">Sponsor</p><input class="checkbox" type="checkbox" name="sponsor" value="value2"></input>
					</div>
					<input class="enter" type="submit" value="Edit"></input>
				</div>
			</div>
		</form>
		<form action="../php/admin-php-files/DISPLAY/displayuser.php" method="post" accept-charset="utf-8"/>
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
		<form action="../php/admin-php-files/DELETE/deleteuser.php" method="post" accept-charset="utf-8"/>
			<div class="admin br2">
				<h5>Delete User</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-user-id">
							<option selected disabled>select-user-id</option>
							<?php include '../php/admin-php-files/EDIT/dropdownUserID.php'; echo $options;?>
						</select>
					</div>
					<input class="enter" type="submit" value="Delete"></input>
				</div>
			</div>
		</form>


		<!-- /////////////////// PRODUCTION ////////////////////// -->

		<form action="../php/admin-php-files/ADD/addproduction.php" method="post" accept-charset="utf-8"/>
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
		<form action="../php/admin-php-files/EDIT/editproduction.php" method="post" accept-charset="utf-8"/>
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
		<form action="../php/admin-php-files/DISPLAY/displayproduction.php" method="post" accept-charset="utf-8"/>
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
		<form action="../php/admin-php-files/DELETE/deleteproduction.php" method="post" accept-charset="utf-8"/>
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


		<!-- /////////////////// MEMBER /////////////////// -->

		<form action="../php/admin-php-files/ADD/addmember.php" method="post" accept-charset="utf-8"/>
			<div class="admin br1">
				<h5>Add Member</h5>
				<div class="box">
					<div class="properties">
						<input required class="textbox" type="text" placeholder="fname" name="firstname"></input>
						<input required class="textbox" type="text" placeholder="lname" name="lastname"></input>
						<input class="number" type="text" placeholder="contact" name="contact"></input>
					</div>
					<input class="enter" type="submit" value="Submit"></input>
				</div>
			</div>
		</form>
		<form action="../php/admin-php-files/EDIT/editmember.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Edit Member</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-member-id">
							<option selected disabled>select-member-id</option>
							<?php include '../php/admin-php-files/EDIT/dropdownMember.php'; echo $options;?>
						</select>
						<input class="textbox" type="text" placeholder="fname" name="firstname"></input>
						<input class="textbox" type="text" placeholder="lname" name="lastname"></input>
						<input class="number" type="text" placeholder="contact" name="contact"></input>
					</div>
					<input class="enter" type="submit" value="Edit"></input>
				</div>
			</div>
		</form>
		<form action="../php/admin-php-files/DISPLAY/displaymember.php" method="post" accept-charset="utf-8"/>
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
		<form action="../php/admin-php-files/DELETE/deletemember.php" method="post" accept-charset="utf-8"/>
			<div class="admin br2">
				<h5>Delete Member</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-member-id">
							<option selected disabled>select-member-id</option>
							<?php include '../php/admin-php-files/EDIT/dropdownMember.php'; echo $options;?>
						</select>
					</div>
					<input class="enter" type="submit" value="Delete"></input>
				</div>
			</div>
		</form>


		<!-- /////////////////// PLAY ///////////////////// -->

		<form action="../php/admin-php-files/ADD/addplay.php" method="post" accept-charset="utf-8"/>
			<div class="admin br1">
				<h5>Add Play</h5>
				<div class="box">
					<div class="properties">
						<input required type="text" placeholder="playwright" name="playwright"></input>
						<input required type="text" placeholder="title" name="title"></input>
						<input required="" type="text" class="form-control" placeholder="play time" onfocus="(this.type='time')" name="playtime"/>
						<input required="" type="text" class="form-control"
						placeholder="choose poster" onfocus="(this.type='file')" name="poster"/>
					</div>
					<input class="enter" type="submit" value="Submit"></input>
				</div>
			</div>
		</form>
		<form action="../php/admin-php-files/EDIT/editplay.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Edit Play</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-playwright-id">
							<option selected disabled>select-playwright-id</option>
							<?php include '../php/admin-php-files/EDIT/dropdownPlaywright.php'; echo $options;?>
						</select>
						<select required name="select-title">
							<option selected disabled>select-title</option>
							<?php include '../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
						</select>
						<input type="text" class="form-control" placeholder="play time" onfocus="(this.type='time')" name="playtime"/>
						<input type="text" class="form-control"
						placeholder="choose poster" onfocus="(this.type='file')" name="poster"/>
					</div>
					<input class="enter" type="submit" value="Edit"></input>
				</div>
			</div>
		</form>
		<form action="../php/admin-php-files/DISPLAY/displayplay.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Display Plays</h5>
				<div class="box">
					<div class="properties">
						<!---->
					</div>
					<input class="enter" type="submit" value="Display"></input>
				</div>
			</div>
		</form>
		<form action="../php/admin-php-files/DELETE/deleteplay.php" method="post" accept-charset="utf-8"/>
			<div class="admin br2">
				<h5>Delete Play</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-playwright">
							<option selected disabled>select-playwright</option>
							<?php include '../php/admin-php-files/EDIT/dropdownPlaywright.php'; echo $options;?>
						</select>
						<select required name="select-title">
							<option selected disabled>select-title</option>
							<?php include '../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
						</select>
					</div>
					<input class="enter" type="submit" value="Delete"></input>
				</div>
			</div>
		</form>


		<!-- /////////////////// SPONSORSHIP /////////////////// -->

		<form action="../php/admin-php-files/ADD/addsponsorship.php" method="post" accept-charset="utf-8"/>
			<div class="admin br1">
				<h5>Add Sponsorship</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-user-id">
							<option selected disabled>select-user-id</option>
                            <?php include '../php/admin-php-files/EDIT/dropdownUserID.php'; echo $options;?>
						</select>
						<select required name="select-title">
							<option selected disabled>select-title</option>
                            <?php include '../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
						</select>
						<input required required="" type="text" class="form-control" placeholder="production date" onfocus="(this.type='date')" name="proddate"/>
						<input required="" type="text" class="form-control" placeholder="donation date" onfocus="(this.type='date')" name="donationdate"/>
						<input type="number" placeholder="amount" name="amount"></input>
					</div>
					<input class="enter" type="submit" value="Submit"></input>
				</div>
			</div>
		</form>
		<form action="../php/admin-php-files/EDIT/editsponsorship.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Edit Sponsorship</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-user-id">
							<option selected disabled>select-user-id</option>
							<?php include '../php/admin-php-files/EDIT/dropdownSponsorship.php'; echo $options;?>
						</select>
						<select required name="select-title">
							<option selected disabled>select-title</option>
							<?php include '../php/admin-php-files/EDIT/dropdownSponsorshipTitle.php'; echo $options;?>
						</select>
						<input required type="text" class="form-control" placeholder="REQUIRED : production date" onfocus="(this.type='date')" name="proddate"/>
						<input type="text" class="form-control" placeholder="donation date" onfocus="(this.type='date')" name="donationdate"/>
						<input type="number" placeholder="amount" name="amount"></input>
					</div>
					<input class="enter" type="submit" value="Edit"></input>
				</div>
			</div>
		</form>
		<form action="../php/admin-php-files/DISPLAY/displaysponsorship.php" method="post" accept-charset="utf-8"/>
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
		<form action="../php/admin-php-files/DELETE/deletesponsorship.php" method="post" accept-charset="utf-8"/>
			<div class="admin br2">
				<h5>Delete Sponsorship</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-title">
							<option selected disabled>select-title</option>
							<?php include '../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
						</select>
						<select required name="select-user-id">
							<option selected disabled>select-user-id</option>
							<?php include '../php/admin-php-files/EDIT/dropdownUserID.php'; echo $options;?>
						</select>
						<select required name="select-date">
							<option selected disabled>select-date</option>
							<?php include '../php/admin-php-files/EDIT/dropdownDate.php'; echo $options;?>
						</select>
					</div>
					<input class="enter" type="submit" value="Delete"></input>
				</div>
			</div>
		</form>


		<!-- ///////////////// TICKETS ////////////////// -->

		<form action="../php/admin-php-files/EDIT/editticket.php" method="post" accept-charset="utf-8"/>
			<div class="admin br1 br2">
				<h5>Buy Ticket</h5>
				<div class="box">
					<div class="properties">
						<select required name="select-user-id">
							<option selected disabled>select-user-id</option>
							<?php include '../php/admin-php-files/EDIT/dropdownUserID.php'; echo $options;?>
						</select>
						</select>
						<select required name="select-title">
							<option selected disabled>select-title</option>
							<?php include '../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
						</select>
						</select>
						<select required name="select-date">
							<option selected disabled>select-date</option>
							<?php include '../php/admin-php-files/EDIT/dropdownDate.php'; echo $options;?>
						</select>
						</select>
						<select required name="select-seat">
							<option selected disabled>select-seat</option>
							<?php include '../php/admin-php-files/EDIT/dropdownSeat.php'; echo $options;?>
						</select>
						</select>
					</div>
					<input class="enter" type="submit" value="Submit"></input>
				</div>
			</div>
		</form>


		<!-- ///////////////// SEATS ////////////////// -->
                
        <form action="../php/admin-php-files/ADD/addseat.php" method="post" accept-charset="utf-8"/>
			<div class="admin br1 br2">
				<h5>Add Seat</h5>
				<div class="box">
					<div class="properties">
                        <input type="text" placeholder="Seat No" name="seat-no"></input>
						<select required name="select-production-no">
							<option selected disabled>select-production-id</option>
							<?php include '../php/admin-php-files/EDIT/dropdownProduction.php'; echo $options;?>
						</select>
					</div>
					<input class="enter" type="submit" value="Submit"></input>
				</div>
			</div>
		</form>
		

		<!-- ///////////////// CASTS ////////////////// -->

		<form action="../php/admin-php-files/ADD/addcast.php" method="post" accept-charset="utf-8"/>
			<div class="admin br1">
				<h5>Add Cast</h5>
				<div class="box">
					<div class="properties">
						<select required name="member-id">
							<option selected disabled>select-member-id</option>
							<?php include '../php/admin-php-files/EDIT/dropdownMember.php'; echo $options;?>
						</select>
						<select required name="production-id">
							<option selected disabled>select-production-id</option>
							<?php include '../php/admin-php-files/EDIT/dropdownProduction.php'; echo $options;?>
						</select>
						<select required name="title">
							<option selected disabled>select-title</option>
							<?php include '../php/admin-php-files/EDIT/dropdownPlay.php'; echo $options;?>
						</select>
						<select required name="date">
							<option selected disabled>select-date</option>
							<?php include '../php/admin-php-files/EDIT/dropdownProductionDate.php'; echo $options;?>
						</select>
						<input required type="text" placeholder="job" name="job"></input>
					</div>
					<input class="enter" type="submit" value="Submit"></input>
				</div>
			</div>
		</form>
		<form action="../php/admin-php-files/EDIT/editcast.php" method="post" accept-charset="utf-8"/>
			<div class="admin">
				<h5>Edit Cast</h5>
				<div class="box">
					<div class="properties">
						<select required name="member-id">
							<option selected disabled>select-member-id</option>
							<?php include '../php/admin-php-files/EDIT/dropdownCastMID.php'; echo $options;?>
						</select>
						<select required name="production-id">
							<option selected disabled>select-production-id</option>
							<?php include '../php/admin-php-files/EDIT/dropdownCastPID.php'; echo $options;?>
						</select>
						<select required name="title">
							<option selected disabled>select-title</option>
							<?php include '../php/admin-php-files/EDIT/dropdownCastTitle.php'; echo $options;?>
						</select>
						<select required name="date">
							<option selected disabled>select-date</option>
							<?php include '../php/admin-php-files/EDIT/dropdownCastProductionDate.php'; echo $options;?>
						</select>
						<input required type="text" placeholder="job" name="job"></input>
					</div>
					<input class="enter" type="submit" value="Edit"></input>
				</div>
			</div>
		</form>
		<form action="../php/admin-php-files/DISPLAY/displaycast.php" method="post" accept-charset="utf-8"/>
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
		<form action="../php/admin-php-files/DELETE/deletecast.php" method="post" accept-charset="utf-8"/>
			<div class="admin br2">
				<h5>Delete Cast</h5>
				<div class="box">
					<div class="properties">
						<select required name="member-id">
							<option selected disabled>select-member-id</option>
							<?php include '../php/admin-php-files/EDIT/dropdownCastMID.php'; echo $options;?>
						</select>
						<select required name="production-id">
							<option selected disabled>select-production-id</option>
							<?php include '../php/admin-php-files/EDIT/dropdownCastPID.php'; echo $options;?>
						</select>
					</div>
					<input class="enter" type="submit" value="Delete"></input>
				</div>
			</div>
		</form>		

		<footer>
			<p>`Maestro Productions</p>
			<p>japheth162@gmail.com : 09123456789</p>
			<p>Itanimulli</p>
		</footer>

		<!-- /////////////////////////////////// -->

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