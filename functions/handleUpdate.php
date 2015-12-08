<?php include '../initialize.php' ?>
<?php 
echo '<h1>Team id'.$_POST['thisTeam'].'</h1>';
$teamID = $_POST['thisTeam'];
$newName = $_POST['newName'];
$qry = "update team set teamName = '$newName' where teamID = $teamID";
echo '<h1 class="whiteText">'.$qry.'</h1>';
mysqli_query($db, $qry);
header("location:updateTeamName.php");
?>