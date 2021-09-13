<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vendor Registration Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="signupv.css" type="text/css">
</head>
<body>
    <div class="main">
        <div class="register">
            <h2>Register today to expand your business! </h2>
            <form id="register"action= 'pages/signupVendor-Verification.php' method="post">
                <label>Business Name: </label><br>
                <input class="box" type="text" name="bname" id="bname" placeholder="Enter the name of your business" required>
                <br><br>
               <label> Office Address:</label><br>
                <input class="box" type="text" name="Address" id="Address" placeholder="Enter your current office address"required>
                <br><br>
                <label> Contact Number:</label><br>
                <input class="box" type="tel" name="phone" id="phone" placeholder="Enter your phone number"required>
                <br><br>
                <label> Email:</label><br>
                <input class="box" type="email" name="email" id="email" placeholder="Enter your valid email" required>
                <br><br>
                <label> Password:</label><br>
                <input class="box" type="password" name="password" id="password" placeholder="Enter a strong reliable password" required>
                <br><br>
                <label>Business Category</label>

                <select class="custom-select" name='custom-select'>
                    <option value="Photographer">Photographer</option>
                    <option value="Caterer">Caterer</option>
                    <option value="Venues">Venues</option>
                    <option value="Decorators">Decorators</option>
                    <option value="Makeup Artists">Makeup Artists</option>
                  </select><br>

                <input class="submit" type="submit" value="Submit" name="submit" id="submit">

            </form>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>