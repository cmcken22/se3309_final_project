<?php include "initialize.php"; ?>
<?php
    
    $amount = $_POST['amount'];
    echo 'amount = '.$amount."</br>";
    $qry = "select * from players where TDs >$amount";
    echo $qry."</br>";
    $result = mysqli_query($db, $qry);
    while($players = mysqli_fetch_assoc($result)){
      echo $players['playerName'].$players["TDs"]."</br>";
    }
?>