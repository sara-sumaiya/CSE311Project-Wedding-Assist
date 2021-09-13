<?php
session_start();
if(!isset($_SESSION['email'])){
  header("Location: pages/signIn.php");
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>clientmainpage</title>
    <link rel="stylesheet" href="clientmainpage.css">
</head>
<body>
    <?php
    include('pages/connection.php');
    $email = $_SESSION['email'];
    $q = "select * from clients where email = '$email';";
    $result = mysqli_query($conn, $q);
    $row = mysqli_fetch_assoc($result);
    $_SESSION['fname'] = $row['First_name'];
    ?> 
 <div class="wrapper">
     <nav class= "navbar">
         <img class="logo" src="/assets/logos/Main pp.png" alt="error loading image">
         <ul>
             <a  class="active" href="#"><li>Welcome </li></a>    
             <?=$_SESSION['fname'] ?>
         </ul>

     </nav>
 <div class="row">
    <div class="main" style="float: center;">
     <h1>Which Vendor are you looking for?</h1><br>
     <div class="choose">
     <a href="">
         <div class="row"><img src="/assets/logos/photographers1.jpg" alt="" height="10%" width="60%"> <br></div>
        <div class="row1"><a href="photographers.php"><label for="">Photographers</label></a></div>
     </a>
    </div>

    <div class="choose">
     <a href="">
         <div class="row"><img src="/assets/logos/Caterers.jpg" alt=""  width="70%"> <br></div>
        <div class="row1"><a href="Caterers.php"><label for="">Caterers</label></a></div>
     </a>
    </div>

    <div class="choose">
        <a href="">
            <div class="row"><img src="/assets/logos/Venue.jpg" alt=""  width="80%"> <br></div>
           <div class="row1"><a href="venue.php"><label for="">Venue</label></a></div>
        </a>
       </div>

       <div class="choose">
        <a href="">
            <div class="row"><img src="/assets/logos/decorators.jpg" alt="" height="60%" width="60%"> <br></div>
           <div class="row1"><a href="decorator.php"><label for="">Decorators</label></a></div>
        </a>
       </div>

       <div class="choose">
        <a href="">
            <div class="row"><img src="/assets/logos/Bridal-Makeup-Artists-1024x538.png" alt=""  width="68%"> <br></div>
           <div class="row1"><a href="MakeupartistMain.php"><label for="">Makeup Artists</label></a><br><br></div>
        </a>
       </div>
       <form action="pages\update.php" method="post">
                                    <field name="Logout" style="float:left;"  >
                                    <button type="submit" name="l-out" value="l-out">Logout</button><br><br>
                                    </form>


</div>
</div>
</div>
</body>
</html>