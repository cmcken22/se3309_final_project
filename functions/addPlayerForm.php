<form action="addPlayerPage" method="post">
    <select name="leagues">
        <?php
        for($i=0;$i<$leagueCount;$i++){
            echo '<option value='.$i.'>'.$leagues[$i].'</option>';
        }
        ?>
    </select>
    <input type="submit">
</form>