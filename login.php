<?php
$invalid=0;

if($_SERVER['REQUEST_METHOD']=='POST'){
    
    include 'connect.php';
    
    $ID = $_POST["username"];
    $password = $_POST["password"];
    $userType = $_POST["user"];
  
    
    
    if($userType=='passenger'){
        
        $sql="SELECT * from user_table where email='$ID' and password='$password'";
        $result=mysqli_query($conn,$sql); 
        
        if($result){
            $num=mysqli_num_rows($result);
            if ($num > 0) {
                $invalid = 0;
                session_start();
                $_SESSION['ID'] = $ID;
                header('location:home1.html');
               
            }
            
         }
      }    
    
      elseif($userType=='admin'){
        $sql="SELECT * from admin_table where adminID='$ID' and password='$password'";
        $result=mysqli_query($conn,$sql);
        if($result){
            $num=mysqli_num_rows($result);
            if($num>0){
              $invalid=0;
                session_start();
                $_SESSION['ID']=$ID;
                header('location:adminpanel.php');
            }
         }
      }    

      elseif($userType=='driver'){
        $sql="SELECT * from driver_table where email='$ID' and password='$password'";
        $result=mysqli_query($conn,$sql);
        if($result){
            $num=mysqli_num_rows($result);
            if($num>0){
              $invalid=0;
                session_start();
                $_SESSION['ID']=$ID;
                header('location:driverDashboard.html');
            }
         }
      } 
    
            else{
                 $invalid=1;
                
               
                }
      }
      ?>
    