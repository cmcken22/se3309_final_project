<?php include "../initialize.php"?>
<?php

$db_name="c9"; // Database name
$tbl_name="userTable"; // Table name

// username and password sent from form
$myusername = $_POST['myusername'];
$mypassword = $_POST['mypassword'];

$sql = "SELECT * FROM $tbl_name WHERE userName='$myusername' and userPassword='$mypassword'";

$result = mysqli_query($db, $sql);

// Mysql_num_row is counting table row
$resultline = mysqli_fetch_assoc($result);
$count = mysqli_num_rows($result);

// If result matched $myusername and $mypassword, table row must be 1 row

if($count==1){

// Register $myusername, $mypassword and redirect to file "login_success.php"
echo "result = " .$resultline[userName];
$_SESSION['userName'] = $resultline[userName];
$_SESSION['userPassword'] = $resultline[userPassword];
$_SESSION['userID'] = $resultline[userID];
header("location:login_success.php");
}
else {
    echo '<img src="../images/redirecting.giff" height="900"; width="1100">';
    echo "<script>alert('wrong Username or Password');</script>";
    echo "<script>setTimeout(\"location.href = '/index.php';\",100);</script>";
    //incorrect username and/or password will redirect to index.php
}
?>