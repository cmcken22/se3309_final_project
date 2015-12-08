<?php include "../initialize.php"?>
<?php
$db_name="c9"; // Database name
$tbl_name="userTable"; // Table name
$qry = "select userName from userTable";
$result = mysqli_query($db, $qry);
$count = 0;
// username and password sent from form
$newUsername = $_POST['myusername'];
$newPassword = $_POST['mypassword'];
$newPassword2 = $_POST['mypassword2'];
$newEmail = $_POST['myemail'];

while($check = mysqli_fetch_assoc($result)){
    echo $check['userName']."</br>"; 
    if($newUsername == $check['userName']){
        $count++;
    }
}

if($count > 0) {
    echo "Redirecting...";
    echo "<script>alert('Username already exists');</script>";
    echo "<script>setTimeout(\"location.href = 'registerForm.php';\",100);</script>";
}
if($count == 0){
    if($newPassword == $newPassword2){
        $sql = "INSERT INTO userTable (userName, userPassword, email) VALUES ('$newUsername', '$newPassword', '$newEmail')";
        echo $sql;
        mysqli_query($db, $sql);
        echo "<script>setTimeout(\"location.href = 'loginForm.php';\",100);</script>";
    }
    
}
else{
    echo "Redirecting...";
    echo "<script>alert('password authentication failed');</script>";
    echo "<script>setTimeout(\"location.href = 'registerForm.php';\",100);</script>";
    //incorrect username and/or password will redirect to index.php
}

?>