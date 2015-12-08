<?php include '../initialize.php'; ?>
<?php 

$userID = $_SESSION['userID'];
$sql = "select leagueid, teamName, teamID from team where userID ='$userID'";
$result = mysqli_query($db, $sql);
$index = 0;
$count = mysqli_num_rows($result);
$teams = array();
$teamNames = array();
$teamLeague = array();
$totalPoints = 0;


echo '<table id="playerSetTable"><tr>
<th>Team Name</th>
<th>Team ID</th>
</tr>';
while ($tableRow = mysqli_fetch_assoc($result)) { // Loops 3 times if there are 3 returned rows... etc
    $teams[$index] = $tableRow['teamID'];
    $teamNames[$index] = $tableRow['teamName'];
    $teamLeague[$index] = $tableRow['leagueid'];
    $index++;
    echo "<tr>
    <td>".$tableRow['teamName']."</td>
    <td>".$tableRow['teamID']."</td>
    </tr>";
}
echo '</table><br>';

$queries = array(); // one user may have multiple teams therefore we need to have multiple queries
                    //for example if there are two teams there will need to be two queries performed
for($i=0;$i<$count;$i++){
    
    $queries[$i] = "select 
                        team.leagueid, team.teamID,teamName, playerSet.leagueID, players.playerID,nflTeam,playerPosition, playerName,yards,TDs,turnovers 
                            from (players) 
                                INNER JOIN 
                                    playerSet 
                                        on players.playerID = playerSet.playerID 
                                            Inner join team 
                                                on team.teamID = playerSet.teamID
                                                    where team.teamID = $teams[$i]";
}

$results = array(); 

for($i=0;$i<$count;$i++) { 
     $results[$i] = mysqli_query($db, $queries[$i]);
}

//$count = mysqli_num_rows($result);
//echo 'count = '.$count;

for($i=0;$i<$count;$i++){
    echo '<table id="playerSetTable"><tr>';
    echo '<tr><th>League: '.$teamLeague[$i].'</th><th colspan="8">Team Name: '.$teamNames[$i].'</th></tr><tr>
    <th>ID</th>
    <th>League</th>
    <th>Name</th>
    <th>nflTeam</th>
    <th>Position</th>
    <th>yards</th>
    <th>TDs</th>
    <th>turnovers</th>
    <th>Points</th>
    </tr>';
    while ($tableRow = mysqli_fetch_assoc($results[$i])) { // Loops 3 times if there are 3 returned rows... etc
        $points = $tableRow['yards']/10 + $tableRow['TDs']*6 - $tableRow['turnovers']*4; 
        $totalPoints += $points;
        echo "<tr>
        <td>".$tableRow['playerID']."</td>
        <td>".$tableRow['leagueid']."</td>
        <td>".$tableRow['playerName']."</td>
        <td>".$tableRow['nflTeam']."</td>
        <td>".$tableRow['playerPosition']."</td>
        <td>".$tableRow['yards']."</td>
        <td>".$tableRow['TDs']."</td>
        <td>".$tableRow['turnovers']."</td>
        <td>".$points."</td>
        </tr>";
       
    }
    echo "<tr>
        <th colspan=8>Total Team Points :</th>
        <th>".$totalPoints."
    </tr>
    </table><br>";
    $totalPoints = 0;
}

?>