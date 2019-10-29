<?php

$servername = "db.test.com";
$username = "recruit";
$password = "recruitpassword";
$database = "recruitment_db";

$db_setup = array($servername,$username,$password,$database);

// Create connection
$conn = new mysqli($db_setup);

// Check connection
if ($conn->connect_error) {
    json_encode($conn->connect_error);
}
echo json_encode($db_setup);

$conn->close();

?>
