<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet" href="signupstyle.css" type="text/css">
</head>
<body>
    <div class="main">
        <div class="register">
            <h2>Register Here</h2>
            <form id="register" action="pages/signup-verification.php" method="post">
                <label>First Name: </label><br>
                <input class="box" type="text" name="fname" id="name" placeholder="Enter your First Name" required>
                <br><br>
                <label> Last Name:</label><br>
                <input class="box" type="text" name="lname" id="name" placeholder="Enter your last name"required>
                <br><br>
                <label> Address:</label><br>
                <input class="box" type="text" name="Address" id="Address" placeholder="Enter your current address"required>
                <br><br>
                <label> Contact Number:</label><br>
                <input class="box" type="tel" name="phone" id="phone" placeholder="Enter your phone number"required>
                <br><br>
                <label> Email:</label><br>
                <input class="box" type="email" name="email" id="name" placeholder="Enter your valid email" required>
                <br><br>
                <label> Password:</label><br>
                <input class="box" type="password" name="password" id="password" placeholder="Enter a strong reliable password" required>
                <br><br>

                <!-- <label>Business Category</label> <br>
                <input type="checkbox" name="category" id="Caterer">
                &nbsp;
                <span id="Caterer">Caterer</span>
                &nbsp; &nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="category" id="Photographer">
                &nbsp;
                <span id="Photographer">Photographer</span>
                &nbsp; &nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="category" id="Venues">
                &nbsp;
                <span id="Venues">Venues</span>
                &nbsp; &nbsp;&nbsp;&nbsp;
                <br><br> -->
                <a><button class="submit" type="submit" name="submit" id="submit">Submit</button>
                </a>
                

            </form>
        </div>
    </div>
    
</body>
</html>