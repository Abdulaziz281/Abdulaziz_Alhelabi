<?php
include "../Connection.php";

session_start();
if(!isset($_SESSION["user"]) && !isset($_SESSION["adm"])){ 
    header("Location: ../login.php"); 
}

if(isset($_SESSION["user"]) && $_GET["X"] !== $_SESSION["user"]){ 
    header("Location: ../homepage.php"); 
}

$id= $_GET["X"];
$sql="SELECT * FROM `users` WHERE id = '$id'";
$result=mysqli_query($connect,$sql);
$row=mysqli_fetch_assoc($result);


if(isset($_POST["update"])){
    $fname=$_POST["fname"];
    $lname=$_POST["lname"];
    $phone_number=$_POST["phone_number"];
    $email=$_POST["email"];
    $password=$_POST["password"];
    $address=$_POST["address"];
    $email=$_POST["address"];
    
    
        $sql= "UPDATE `users` SET `fname`='$fname',`lname`='$lname',`phone_number`='$phone_number',`email`='$email',`password`='$password','address'='$address' WHERE id={$id}";
        
        

    if(mysqli_query($connect,$sql)){
        echo "success updateing";
    }else{
        echo "error";
    }
    
    }
?>


<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Update page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    </head>
    <body>
    <div class="container mt-5">
        <h2>Update media</h2>
        <form method="POST" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="fname" class="form-label">First name</label>
                <input type="text" class="form-control" id="fname" aria-describedby="fname" name="fname">
            </div>
            
            <div class="mb-3">
                <label for="lname" class="form-label">Last name</label>
                <input type="text" class="form-control" id="lname" aria-describedby="lname" name="lname">
            </div>
            <div class="mb-3">
                <label for="phone_number" class="form-label">Phone number</label>
                <input type="number" class="form-control" id="phone_number" aria-describedby="phone_number" name="phone_number">
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" aria-describedby="email" name="email">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="text" class="form-control" id="password" aria-describedby="password" name="password">
            </div>
            <div class="mb-3">
                <label for="address" class="form-label">address</label>
                <input type="text" class="form-control" id="address" aria-describedby="address" name="address">
            </div>
            
            
            <button name="update" type="submit" class="btn btn-primary">Update product</button>
            <a href="../homepage.php" class="btn btn-warning">Back to home page</a>
        </form>
    </div>
    
</body>
</html>