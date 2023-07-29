<?php
include "../Connection.php";

session_start();
if(!isset($_SESSION["user"]) && !isset($_SESSION["adm"])){ 
    header("Location: ../login.php"); 
}

if(isset($_SESSION["user"])){ 
    header("Location: ../homepage.php"); 
}

if(isset($_POST["create"])){
$name=$_POST["name"];
$location=$_POST["location"];
$description=$_POST["description"];
$size=$_POST["size"];
$age=$_POST["age"];
$vaccination=$_POST["vaccination"];
$breed=$_POST["breed"];
$picture=$_POST["picture"];

$sql="INSERT INTO `pets`(`name`, `picture`, `location`, `description`, `size`, `age`, `vaccination`, `breed`) VALUES ('$name','$picture','$location','$description','$size','$age','$vaccination','$breed')";
$result=mysqli_query($connect,$sql);
if($result){



}else{

}





}



?>


<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Create page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    </head>
    <body>
    
    <div class="container mt-5">
        <h2>Create a new pet profile</h2>
        <form method="POST" enctype="multipart/form-data">
            <div class="mb-3 mt-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" aria-describedby="name" name="name">
            </div>
            <div class="mb-3 mt-3">
                <label for="picture" class="form-label">picture</label>
                <input type="text" class="form-control" id="picture" aria-describedby="picture" name="picture">
            </div>
            <div class="mb-3">
                <label for="location" class="form-label"> Location</label>
                <input type="text" class="form-control" id="location" aria-describedby="location" name="location">
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <input type="text" class="form-control" id="description" aria-describedby="description" name="description">
            </div>
            <div class="mb-3">
                <label for="size" class="form-label">size</label>
                <input type="text" class="size" id="size" aria-describedby="size" name="size">
            </div>
            <div class="mb-3">
                <label for="age" class="form-label">Age</label>
                <input type="number" class="form-control" id="age" aria-describedby="age" name="age">
            </div>
            <div class="mb-3">
                <label for="vaccination" class="form-label">Vaccination</label>
                <input password="text" class="form-control" id="vaccination" aria-describedby="vaccination" name="vaccination">
            </div>
            <div class="mb-3">
                <label for="breed" class="form-label">Breed</label>
                <input breed="text" class="form-control" id="breed" aria-describedby="breed" name="breed">
            </div>
            
            <button name="create" type="submit" class="btn btn-primary">Create product</button>
            <a href="../dashboard.php" class="btn btn-warning">Back to home page</a>
        </form>
    </div>
    
</body>
</html>