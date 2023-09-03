<?php
session_start();
require_once("connect.php");

// // Check if the user is logged in as an admin
// if ($_SESSION["user_type"] !== "admin") {
//     // Redirect to a login page or display an error message
//     header("Location: login.html");
//     exit();
// }

// Fetch data from user_table
$userQuery = "SELECT * FROM user_table";
$userResult = $conn->query($userQuery);

// Fetch data from driver_table
$driverQuery = "SELECT * FROM driver_table";
$driverResult = $conn->query($driverQuery);

// Close the database connection
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@100&family=Oxygen:wght@300;400;700&family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../styles.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AmbuGet Home</title>
</head>
<body>
    <div id="nav">
            <nav>
                <a class="home" href="#">
                    <div class="logo1"><img class="logo" src="logo.png"></div>
                </a>
                <a class="nav" href="login.html">
                Log Out
                </a>
                
                <a class="nav" href="request-blood.html">
                    Find Donor            </a>
                <a class="nav" href="contact-us.html">
                Contact Us
                </a>
                <a class="nav" href="aboutus.html">
                    Services
                </a>
                <div class="profile-details">
                    <img src="adminlogo.png" alt="">
                    <span class="admin_name">Admin</span>
                    <i class='bx bx-chevron-down' ></i>
                </div>
            
            </nav>
    
        </div>
    
    <div class="admin-panel-container">
        <h1 class="tablename">Welcome to the Admin Panel</h1>

        <!-- Display user_table data -->
        <div class="table-container">
            <div class="table-wrapper" style=" margin-right: 20px; ">
                <h2 style="color:rgb(150, 0, 0);">User Table</h2>
                <table>
                    <thead>
                        <tr>
                            <th>User ID</th>
                            <th>Name</th>
                            <th>Phone</th>
                            <!-- Add more table headers as needed -->
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        while ($row = $userResult->fetch_assoc()) {
                            echo "<tr>";
                            echo "<td>".$row["userID"]."</td>";
                            echo "<td>".$row["name"]."</td>";
                            echo "<td>".$row["phone"]."</td>";
                            // Add more table data cells for other columns
                            echo "</tr>";
                        }
                        ?>
                    </tbody>
                </table>
            </div>

            <div class="table-wrapper">
            <h2 style="color:rgb(150, 0, 0);">Driver Table</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Driver ID</th>
                            <th>Name</th>
                            <th>Phone</th>
                            <!-- Add more table headers as needed -->
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        while ($row = $driverResult->fetch_assoc()) {
                            echo "<tr>";
                            echo "<td>".$row["driverID"]."</td>";
                            echo "<td>".$row["name"]."</td>";
                            echo "<td>".$row["phone"]."</td>";
                            // Add more table data cells for other columns
                            echo "</tr>";
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</body>
</html>
