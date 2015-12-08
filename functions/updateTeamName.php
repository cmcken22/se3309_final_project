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
            $("#mydiv").show();
            $("#btn1").hide();
            $("#btn2").hide();
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
            <button id="btn1" class="btn btn-primary">Display my team</button>
            <button id="btn2" class="btn btn-primary">Hide my team</button>
            <a href="../login/login_success.php" class="btn btn-primary">Go back</a>
            </br>
            
            <div id='mydiv'>
                <?php include '../tables/simpleTeamTable.php'; ?>
            </div>
            <a href="../stats.php" class="btn btn-primary">Stats</a></br>
            <a href="logout.php" class="btn btn-primary">Log out</a>
        </div>
    </body>
</html>