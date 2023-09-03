<?php
// Include the database connection script (connect.php)
include 'connect.php';
// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve data from the form
    $name = $_POST["name"];
    $password = $_POST["password"];
    $phone = $_POST["phone"];
    $address = $_POST["address"];
    $email = $_POST["e-mail"];
    $nationalID = $_POST["nationalID"];
    $driving_license = $_POST["driving_license"];
    $birthdate = $_POST["birthdate"];
    $bloodgroup = $_POST["bloodgroup"];


    // Check if the "Do you want to Donate blood?" checkbox is selected
    $donor = isset($_POST["donor"]) ? 1 : 0; // 1 if selected, 0 if not

    // Insert the data into the user_table
    $userInsertSQL = "INSERT INTO driver_table (name, password, phone, address, email, nationalID, drivingLicenseNumber) 
                      VALUES ('$name', '$password', '$phone', '$address', '$email', '$nationalID', '$driving_license')";

    if ($conn->query($userInsertSQL) === TRUE) {
        $response = array(
            "success" => true,
            "message" => "Driver registration successful!"
        );
    } else {
        $response = array(
            "success" => false,
            "message" => "Error: " . $userInsertSQL . "<br>" . $conn->error
        );
    }

    // If the user wants to be a donor, insert the data into the donor_table
    if ($donor) {
        $donorInsertSQL = "INSERT INTO donor_table (name, phone, address, email, birthdate, blood_group) 
                           VALUES ('$name', '$phone', '$address', '$email', '$birthdate', '$bloodgroup')";

    if ($conn->query($donorInsertSQL) === TRUE) {
        $response = array(
            "success" => true,
            "message" => "Driver and Donor registration successful!"
        );
    } else {
        $response = array(
            "success" => false,
            "message" => "Error: " . $userInsertSQL . "<br>" . $conn->error
        );
    }
    }
    // Close the database connection
    $conn->close();
    
    // Send a JSON-encoded response
    echo json_encode($response);

} else {
    // Handle invalid request (e.g., direct access to this script)
    $response = array(
        "success" => false,
        "message" => "Invalid request."
    );
    echo json_encode($response);
}

?>
