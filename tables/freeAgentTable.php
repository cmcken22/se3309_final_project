<?php 

$qry = "select * from players where playerID in (select playerID from playerSet where teamID> 101 and leagueID = $myLeague) order by -yards";
$result = mysqli_query($db, $qry);
$count = mysqli_num_rows($result);

echo '<table id="freeAgentTable"><tr>
    <th>ID</th>
    <th>Name</th>
    <th>nflTeam</th>
    <th>Position</th>
    <th>yards</th>
    <th>TDs</th>
    <th>turnovers</th>
    <th>all star</th>
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
        <td>".$points."</td>
        </tr>";
    }
    echo '</table>';

?>


