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
echo '</table>';
echo "<h1 class='whiteText'>count = $count</h1>";
echo "<h1 class='whiteText'>TEAMS</h1>";
$queries = array();
for($i=0;$i<$count;$i++){
    echo "<h1 class='whiteText'>teams[$i] = ".$teams[$i]."</h1>";
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
for($i=0;$i<$count;$i++){
     echo "<h4 class='whiteText'>$queries[$i]</h4>";
}
$results = array();
for($i=0;$i<$count;$i++){
     $results[$i] = mysqli_query($db, $queries[$i]);
}

//$count = mysqli_num_rows($result);
//echo 'count = '.$count;

for($i=0;$i<$count;$i++){
    echo '<table id="playerSetTable"><tr>
    <th colspan="7">Team Name: '.$teamNames[$i].'</th><th>League: '.$teamLeague[$i].'</th></tr><tr>
    <th>ID</th>
    <th>League</th>
    <th>Name</th>
    <th>nflTeam</th>
    <th>Position</th>
    <th>yards</th>
    <th>TDs</th>
    <th>turnovers</th>
    </tr>';
    while ($tableRow = mysqli_fetch_assoc($results[$i])) { // Loops 3 times if there are 3 returned rows... etc
        echo "<tr>
        <td>".$tableRow['playerID']."</td>
        <td>".$tableRow['leagueid']."</td>
        <td>".$tableRow['playerName']."</td>
        <td>".$tableRow['nflTeam']."</td>
        <td>".$tableRow['playerPosition']."</td>
        <td>".$tableRow['yards']."</td>
        <td>".$tableRow['TDs']."</td>
        <td>".$tableRow['turnovers']."</td>
        </tr>";
    }
    echo '</table>';
}

?>