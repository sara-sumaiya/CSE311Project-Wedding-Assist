<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PhotographersMain</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="photographers.css">
</head>
<body>
    <div class="container">
        <h1 class="headline"><mark>Photographers</mark></h1>
        <?php
        include('pages/connection.php');
        $view_users_query = "select * from vendors join photographers where vendors.Email = photographers.Vendors_ph_Email;";
        $run = mysqli_query( $conn, $view_users_query);
        while ($row = mysqli_fetch_array($run)) {
            $Business_Name    =  $row[1];
            $about_us =  $row[7];
            $Payment_terms =  $row[6];
            $Contact_Number  =  $row[3];
            $address = $row[4];
            $vemail = $row[0];
            ?>
            <div class="row">
          <div class="col-sm">
            <img src="#" alt="" height="400px">
          </div>
          <div class="col-sm">
            <div class="card" style="width: 18rem, height 10rem;">
                <div class="card-body"><br>
                <img class="img-profile img-circle img-responsive center-block" width="120" height="120"  src="/assets/logos/vp.png"  alt="Error Loading ">
                <h2><?=$Business_Name?></h2>
                  <h3 class="card-title">About us: </h3>
                  <h5><?=$about_us?></h5>
                  <h4 class="card-subtitle mb-2 text-muted">*Estimated*</h4><br>
                  <h5>Payment Terms:</h5>
                  <h6 class="Card-title"> <?=$Payment_terms?></h6><br>
                  
                  <label for="">Contact Number: </label>
                  <h6><?=$Contact_Number?></h6><br>
                  <label for="">Address:</label>
                  <h6><?=$address?></h6><br>
                  <label for="">Email:</label>
                  <h6><?=$vemail?></h6><br>
                  &nbsp;&nbsp;
                  <a href="book.html"><button class='btn1' >Contact for Discussion</button></a>
                  <hr><ht><hr>
                </div>
              </div>
          </div>
            <?php
        }
        ?>
        </div>         
</body>
</html>