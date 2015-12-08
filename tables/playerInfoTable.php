<?php 

$qry = "select playerSet.playerID,playerName,nflTeam,playerPosition,yards,TDs,turnovers,allstar,count(*) as teams 
from (playerSet) inner join players
on players.playerID = playerSet.playerID 
where teamID <101 group by playerSet.playerID";
$result = mysqli_query($db, $qry);
$count = mysqli_num_rows($result);
$points;

echo '<table id="freeAgentTable"><tr>
    <th>ID</th>
    <th>Name</th>
    <th>nflTeam</th>
    <th>Position</th>
    <th>yards</th>
    <th>TDs</th>
    <th>turnovers</th>
    <th>all star</th>
    <th>Number of teams player is on</th>
    <th>Points</th>
    </tr>';
    while ($tableRow = mysqli_fetch_assoc($result)) { // Loops 3 times if there are 3 returned rows... etc
    $points = $tableRow['yards']/10 + $tableRow['TDs']*6 - $tableRow['turnovers']*4; 
        echo "<tr>
        <td>".$tableRow['playerID']."</td>
        <td>".$tableRow['playerName']."</td>
        <td>".$tableRow['nflTeam']."</td>
        <td>".$tableRow['playerPosition']."</td>
        <td>".$tableRow['yards']."</td>
        <td>".$tableRow['TDs']."</td>
        <td>".$tableRow['turnovers']."</td>
        <td>".$tableRow['allstar']."</td>
        <td>".$tableRow['teams']."</td>
        <td>".$points."</td>
        </tr>";
    }
    echo '</table>';

?>
