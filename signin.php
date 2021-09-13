<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in</title>
    <link rel="stylesheet" href="signinstyle.css">
</head>
<body>
    <div class="main">
        <div class="login">
            <h2>Log in to your account</h2>
            <form id="login" action="pages/signin.php" method="post">
                <label> Email:</label><br>
                <input class="box" type="email" name="email" id="name" placeholder="Enter your email" required>
                <br><br>
                <label> Password:</label><br>
                <input class="box" type="password" name="password" id="password" placeholder="Enter your password" required>
                <br><br>
                <input class="submit" type="submit"  name="submit" id="submit">
            </form>
        </div>
    </div>
    
    
</body>
</html>