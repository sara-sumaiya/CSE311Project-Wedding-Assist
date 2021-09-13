

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vendor Profile</title>
    <link rel="stylesheet" href="Vendormainpage.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<?php
    session_start();
    include('pages/connection.php');
    $email = $_SESSION['email'];
    $q = "select * from Vendors where email = '$email';";
    $result = mysqli_query($conn, $q);
    $row = mysqli_fetch_assoc($result);
    $_SESSION['Name'] = $row['Business_Name'];
    $_SESSION['Email'] = $row['Email'];
    $_SESSION['Number'] = $row['Contact_Number'];
    

    ?> 
<div class="container">
    <div class="view-account">
        <section class="module">
            <div class="module-inner">
                <div class="side-bar">
                    <div class="user-info">
                        <img class="img-profile img-circle img-responsive center-block" src="/assets/logos/vp.png"  alt="Error Loading ">
                        <ul class="meta list list-unstyled">
                            <li class="Name:"><?=$_SESSION['Name'] ?></li> 
                            
                            <li class="email"><a href="#"><?=$_SESSION['Email'] ?></a></li>
                            <li class="Contact_Number"><a href="" ><?=$_SESSION['Number'] ?></a></li>
                        </ul>
                    </div>
            		<nav class="side-menu">
        				<ul class="nav">
        					<li class="active"><a href="#"><span class="fa fa-user"></span> Profile</a></li>
        				</ul>
        			</nav>
                </div>
                <div class="content-panel">
                    <h2 class="title">Business Profile</h2>
                    <div class="form-group avatar">
                                <figure class="figure col-md-2 col-sm-3 col-xs-12">
                                    <img class="img-rounded img-responsive" src="/assets/logos/vp.png" alt="">
                                </figure>
                                <div class="form-inline col-md-10 col-sm-9 col-xs-12">
                                <form method="POST" action="pages/update.php" method='post' enctype="multipart/form-data">
                                    <input type="file" name="img" />
                                    <button type="submit" name="upload"> UPLOAD</button></form>
                            </div>
                        </div>
                    <div class="form-horizontal">
                        <fieldset class="fieldset">
                            <h3 class="fieldset-title">Business Details</h3>
                            
                            <div class="form-group">
                                <label class="col-md-2 col-sm-3 col-xs-12 control-label">Business Name</label>
                                <div class="col-md-10 col-sm-9 col-xs-12">
                                <form action="pages\update.php" method="post">
                                    <input type="text"size="130" class="form-control" name="bname" placeholder="Business Name">
                                    <button type="submit" name="u-name" value="u-name">Update</button>
                                </form>
                                </div>
                            </div>
        
                            <div class="form-group">
                                <label class="col-md-2 col-sm-3 col-xs-12 control-label">About Us</label>
                                <div class="col-md-10 col-sm-9 col-xs-12">
                                <form action="pages\update.php" method="post">
                                    <input size="130" type="text" class="form-control" name="bio" placeholder="Describe your business">
                                    <button type="submit" name="u-bio" value="bio">Update Bio</button>
                                    <!-- <input class="btn btn-primary" type="submit" value="Update Bio"> -->
                                    </form>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 col-sm-3 col-xs-12 control-label">Payment Terms</label>
                                <div class="col-md-10 col-sm-9 col-xs-12">
                                <form action="pages\update.php" method="post">
                                    <input type="text" size="130" class="form-control" name="terms" placeholder="Payment-terms for booking" >
                                    <button type="submit" name="u-pay" value="u-pay">Update Terms</button>
                                    </form>
                                </div>
                            </div>
                        <br><br><hr>
                        <h3> Contact Information <h3><hr>
                            <div class="form-group">
                                <label class="col-md-2  col-sm-3 col-xs-12 control-label">Contact-Number</label>
                                <div class="col-md-10 col-sm-9 col-xs-12">
                                <form action="pages\update.php" method="post">
                                    <input type="integer" class="form-control" name="number" placeholder="Number">
                                    <button type="submit" name="u-phone" value="u-phone">Update Number</button><br><br>
                                    </form>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2  col-sm-3 col-xs-12 control-label">Office-Address</label>
                                <div class="col-md-10 col-sm-9 col-xs-12">
                                <form action="pages\update.php" method="post">
                                    <input type="text" class="form-control" name="address" placeholder="Address">
                                    <button type="submit" name="u-address" value="u-ddress">Update Address</button><br><br>
                                    </form>
                                </div>
                            </div>
                        </fieldset>

                        <form action="pages\update.php" method="post">
                                    <field name="Logout">
                                    <button type="submit" name="l-out" value="">Logout</button><br><br>
                                    </form>

                                    <form action="pages/appointments.html" method="post">
                                    <field name="Appointment">
                                    <button type="submit" name="l-out" value="">Check messages for appointment</button><br><br>
                                    </form>
                        <hr>
                        <!-- <div class="form-group">
                            <div class="col-md-10 col-sm-9 col-xs-12 col-md-push-2 col-sm-push-3 col-xs-push-0">
                                <input class="btn btn-primary" type="submit" value="Update Profile"> -->
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </div>
</div>
</body>




<!-- 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vendor Profile</title>
    <link rel="stylesheet" type="text/css" href="bootstrap-4.5.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="Vendormainpage.css">
</head>
<body>

    <div class="container">
        <div class="main">
            <div class="topbar">
                <a href="">Logout</a>
            </div>
        </div>
    </div>
    <div class="row">
        <div class=""
    </div>
    
</body> -->
</html>