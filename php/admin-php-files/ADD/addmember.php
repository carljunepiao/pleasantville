<?php
//not yet done
	$host= 'localhost';
	$user= 'root';
	$pass='';
	$db= 'PleasantVille';

	$con = mysqli_connect($host,$user,$pass,$db);

	if($con)
	    echo 'connected successfully to PlasantVille database';

	$fname = $_POST['firstname'];
	$lname = $_POST['lastname'];
	$contact = $_POST['contact'];
	//di ba mumatter ang lowercase/uppercase? wa koy sure pacheck daw ani mga bai - alfi
	$sql="insert into member(MemberID,FNname, LName, ContactNo) values (123,'$fname', '$lname', '$contact')";

	echo "<br/>$sql<br/>";
	$query=mysqli_query($con,$sql);

	if($query)
	    echo 'Add member complete!';
	else
	    echo ' A problem has been encountered. Check add member.';
?>