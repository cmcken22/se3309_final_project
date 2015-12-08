<?php

$playerWanted = $_POST['playerID'];
$addPlayerQRY= "select playerId from players where playerID in (select playerID from playerSet where teamID> 101 and leagueID = $myLeague and playerID = $playerWanted)"; 
$result = mysqli_query($db, $addPlayerQRY);
$count = mysqli_num_rows($result);
echo '<h3 class="whiteText">Count '.$count.'</h3>';
if($count>1 || $count==0)
{
    echo "<script>alert('Player is not available');</script>";
}
else{
header("location:addPlayer.php");
}
?>