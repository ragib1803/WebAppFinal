<?php
    include 'connect.php';

    $fname=$_POST['fname'];
    $lname=$_POST['lname'];
    $email=$_POST['email'];
    $phone=$_POST['phone'];
    $messages=$_POST['messages'];
    //print_r($_POST);

    

    if($conn===false)
    {
        die("Error: Couldn't connect. " . msqli_connect_error());
    }

    $sql="INSERT INTO messages (fname, lname, email, phone, messages) VALUES ('$fname', '$lname', '$email','$phone', '$messages')";
    if(mysqli_query($conn, $sql))
    {
        echo "<script> alert('Thank you for contacting us. We will get back to you as soon as possible.'); window.location='contact-us.html'</script>";
    }
    else
    {
        echo "ERROR" . mysqli_error($conn);
    }

    mysqli_close($conn);
   
?>