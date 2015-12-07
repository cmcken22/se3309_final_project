<?php include 'initialize.php'; ?>
<?php 

$userID = $_SESSION['userID'];
$sql = "select * from players where playerID in (select playerID from playerSet where teamID in (select teamID from team where userID = '$userID') where allstar=1)";

$result = mysqli_query($db, $sql);
$count = mysqli_num_rows($result);
echo '<table id="playerSetTable"><tr>
<th>ID</th>
<th>Name</th>
<th>nflTeam</th>
<th>Position</th>
<th>yards</th>
<th>TDs</th>
<th>turnovers</th>
</tr>';
while ($tableRow = mysqli_fetch_assoc($result)) { // Loops 3 times if there are 3 returned rows... etc
    echo "<tr>
    <td>".$tableRow['playerID']."</td>
    <td>".$tableRow['playerName']."</td>
    <td>".$tableRow['nflTeam']."</td>
    <td>".$tableRow['playerPosition']."</td>
    <td>".$tableRow['yards']."</td>
    <td>".$tableRow['TDs']."</td>
    <td>".$tableRow['turnovers']."</td>
    </tr>";
}
echo '</table>';

?>