<?php include '../initialize.php' ?>

<form action="selectPlayerForm.php" method="post">
    <h3 class="whiteText">Select player by ID: </h3><input type="text" name="playerID">
    <input type="hidden" name="LEAGUE" value='<?php echo $myLeague; ?>'>
    <input type="submit">
</form>

<?php
if(isset($_REQUEST['playerID'])){
    
    $playerWanted = $_POST['playerID'];
    $myLeague2 = $_POST['LEAGUE'];
    $userID = $_SESSION['userID'];
    $addPlayerQRY= "select playerID from players where playerID in (select playerID from playerSet where teamID> 101 and leagueID = $myLeague2 and playerID = $playerWanted)"; 
    echo '<h3 class="whiteText">myLeague = '.$myLeague2.'</h3>';
    echo '<h3 class="whiteText">Query = '.$addPlayerQRY.'</h3>';
    $result = mysqli_query($db, $addPlayerQRY);
    $count = mysqli_num_rows($result);
    echo '<h3 class="whiteText">Count '.$count.'</h3>';
    if($count>1 || $count==0)
    {
        echo '<img src="../images/redirecting.giff" height="900"; width="1100">';
        echo "<script>alert('Player is not available);</script>";
        echo "<script>setTimeout(\"location.href = 'addPlayer.php';\",1000);</script>";
    }
    else{
        $qry = "select teamID from team where leagueID = $myLeague2 and userID = $userID";
        $result = mysqli_query($db, $qry);
        $tableRow = mysqli_fetch_assoc($result);
        echo '<h3 class="whiteText">guy is on team = '.$tableRow['teamID'].'</h3>';
        $teamID = $tableRow['teamID'];
        $qry ="update playerSet set teamID = $teamID where playerID = $playerWanted and leagueID = $myLeague2";
        $result = mysqli_query($db, $qry);
        header("location:addPlayer.php");
    }
}
?>