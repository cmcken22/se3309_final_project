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

?>

<form action="handleUpdate.php" method="post">
    <select name="thisTeam">
        <?php
        for($i=0;$i<$count;$i++){
            echo '<option value = '.$teams[$i].'>'.$teams[$i].': '.$teamNames[$i].'</option>';
        }
        ?>
    </select>
    <input type="text" name="newName" value="Enter New Name">
    <input id="submitBTN" type="submit">
</form>