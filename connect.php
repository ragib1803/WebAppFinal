<?php
$servername = "localhost:3306"; // Change to your database server name
$username = "root"; // Change to your database username
$password = ""; // Change to your database password
$database = "Ambu-Get"; // Change to your database name

// Create a connection
$conn = new mysqli($servername, $username, $password, $database);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
