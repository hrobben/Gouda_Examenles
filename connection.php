<?php
/*        $db = mysqli_connect('127.0.0.1', 'root', 'Hcbdag@635') or
        die ('Unable to connect. Check your connection parameters.');
        mysqli_select_db($db, 'peopledb' ) or die(mysqli_error($db));*/


$servername = "127.0.0.1";
$username = "root";
$password = "Hcbdag@635";
$dbname = "peopledb";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully";
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}


?>