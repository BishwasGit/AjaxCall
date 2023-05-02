<?php
if (isset($_POST['user_id'])) {
    include 'db.php';
    $user_id = mysqli_real_escape_string($connection, $_POST['user_id']);
    $getQuery = "SELECT * FROM ajax_data WHERE user_id = $user_id";
    $execute = mysqli_query($connection, $getQuery);
    if (mysqli_num_rows($execute) > 0) {
        ?>
        <?php
        while ($row = mysqli_fetch_assoc($execute)) {
            ?>
            <tr class="table-primary">
                <td>
                    <?php echo $row['username'] ?>
                </td>
                <td>
                    <?php echo $row['uuid'] ?>
                </td>
                <td>
                    <?php echo $row['date'] ?>
                </td>
            </tr>
            <?php
        }
    } else {
        echo 'No data found in database';
    }
    ?>
    <?php
    mysqli_close($connection);
}
?>