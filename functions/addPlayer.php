<html>
    <head>
        <?php include "../initialize.php"; ?>
        <?php
        $user = $_SESSION['userName'];
        $userID = $_SESSION['userID'];
        $qry = "select * from team where userID = '$userID'";
        $result = mysqli_query($db, $qry);
        $leagueCount = mysqli_num_rows($result);
        $leagues = array();
        $index = 0;
        while($row = mysqli_fetch_assoc($result)){
            $leagues[$index] = $row['leagueid'];
            $index++;
        }
        if(!isset($_SESSION['userName'])){
            //session was not set correctly, user is redirected to the main page
            header("location:/index.php");
        }
        ?>
        <title><?php echo $user; ?></title>
        <?php include "../initStyles.php"; ?>
        
        <script>
        $(document).ready(function(){
            $("#mydiv").hide();
            $("#btn2").hide();
            // $("#selectPlayer").hide();
            $("#btn1").click(function(){
                $("#mydiv").show();
                $("#btn2").show();
                $("#btn1").hide();
            });
            $("#btn2").click(function(){
                $("#mydiv").hide();
                $("#btn2").hide();
                $("#btn1").show();
            });
            $("#submitBTN").click(function(){
                $("#selectPlayer").show();
            });
        });
        </script>
    </head>
    <body>
        <div id="login_success_content">
            <h1 class="whiteText">logged in as: <?php echo $user; ?></h1>
            <?php 
            $myLeague = $_POST['thisLeague'];
            ?>
            <h2 class="whiteText">Leauge: <?php echo $myLeague; ?></h2>
            <button id="btn1" class="btn btn-primary">Display my team</button>
            <button id="btn2" class="btn btn-primary">Hide my team</button>
            <a href="../login/login_success.php" class="btn btn-primary">Go back</a>
            
            </br>
            <h4 class="whiteText">Select a League: </h4>
            <form action="addPlayer.php" method="post">
                <select name="thisLeague">
                <?php
                $displayFreeAgentTable = 0;
                for($i=0;$i<$leagueCount;$i++){
                echo '<option>'.$leagues[$i].'</option>';
                }
                ?>
                </select>
                <input id="submitBTN" type="submit">
            </form>
            <?php
                if(isset($_REQUEST['thisLeague'])){
                    $myLeague = $_POST['thisLeague'];
                    $displayFreeAgentTable = 1;
                }
            ?> 
            
            <?php 
                if($displayFreeAgentTable == 1){
                    echo '<h3 class="whiteText">Free agents available in league: '.$myLeague.'</h3>';
                    include 'selectPlayerForm.php';
                    include '../tables/freeAgentTable.php';
                }
            ?>
            <div id='mydiv'>
                <a href="../functions/updateTeamName.php" class="btn btn-primary">Update Team Name</a>
                <?php include '../tables/playerSetTable.php'; ?>
                <?php 
                // include '../allstars.php'; 
                ?>
            </div>
            <a href="../stats.php" class="btn btn-primary">Stats</a></br>
            <a href="logout.php" class="btn btn-primary">Log out</a>
        </div>
    </body>
</html>