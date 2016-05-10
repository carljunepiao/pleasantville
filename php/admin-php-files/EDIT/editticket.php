<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "Pleasantville";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
//query
    $sql=mysql_query("SELECT UserID FROM users");

    if(mysql_num_rows($sql)){
        $select= '<select name="UserID">';
        while($rs=mysql_fetch_array($sql)){
            $select.='<option value="'.$rs['UserID'].'">'</option>';
        }
    }
    $select.='</select>';
    echo $select;
?>