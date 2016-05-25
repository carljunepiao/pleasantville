<?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "PleasantVille";

    $conn = mysqli_connect($servername, $username, $password, $database);

    if(!$conn){
        die("Database connection failed: ".mysqli_connect_error());
    }else{
        echo "Connected to databasse successfully!";
    }
        //phash should be used but errors occur. (modify)
    $sql1 = "UPDATE users SET Log_In = 0 WHERE Log_In = 1";

    $result1 = mysqli_query($conn, $sql1);
    $count = mysqli_num_rows($result1);

    if($result1) {
        echo "process cool!";
    }
    else{
        echo "Shit!";
    }

    setcookie("loggedin", "val", time() - (120), "/");
    header("Location: ../html/login.php");

?>