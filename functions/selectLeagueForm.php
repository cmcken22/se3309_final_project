<form action="./addPlayerPage.php" method="post">
    <select name="thisLeague">
        <?php
        for($i=0;$i<$leagueCount;$i++){
            echo '<option>'.$leagues[$i].'</option>';
        }
        ?>
    </select>
    <input type="submit">
</form>