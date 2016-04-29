<?php
   $host = 'localhost';
   $user = 'root';
   $pass = '';
	$db= 'PleasantVille';

   $conn = mysqli_connect($host, $user, $pass, $db);

   if(! $conn ) {
      die('Could not connect: ' . mysql_error());
   }

   $sql = 'SELECT UserID, Fname, Lname, Contact_No FROM users';
   mysqli_select_db($conn,$sql);
   $retval = mysqli_query($conn,$sql);

   if(! $retval ) {
      die('Could not get data: ' . mysql_error());
   }

   while($row = mysqli_fetch_array($retval, MYSQL_ASSOC)) {
      echo "USER ID :{$row['UserID']}  <br> ".
         "FIRST NAME : {$row['Fname']} <br> ".
         "LAST NAME : {$row['Lname']} <br> ".
         "CONTACT NUMBER : {$row['Contact_No']} <br> ".
         "--------------------------------<br>";
   }

   echo "Fetched data successfully\n";

   mysql_close($conn);
?>