<!DOCTYPE html>
<html>
    <head>
        <title>SE 3309</title>
        <meta charset="utf-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

        <link href="https://fonts.googleapis.com/css?family=Cuprum|Cookie" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
    <body>
        <div id="content">
            <?php include "initialize.php"; ?>
            <?php $user = $_SESSION['userName']; ?>
            <h1 id="mainTitle">Fantasy FootBall Database</h1>
            
            <?php include "login/loginForm.php"; ?>
            
            <a href="login/registerForm.php" id="registerbtn" class="btn btn-primary">Register as new user</a>
            
            <!--<a href="login/logout.php" class="button">Log out</a>-->
            
        </div>
    </body>
</html>