<?php include 'header.php';
?>
<div class="row">
    <div id="user_select_div" class="container col-2 my-4">
        <select id="user_select" name="user_select" class="container gap-2 btn btn-outline-light text-dark">
            <?php
            include 'db.php';
            $query = "SELECT * FROM ajax_data ";
            // Execute the query
            $result = mysqli_query($connection, $query);
            // Check if any data is found
            if (mysqli_num_rows($result) > 0) {
                // Initialize the ID counter
                $i = 1;
                // Loop through the data and create an option for each row
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<option id='$i' class=''>" . $row["username"] . '</option>';
                    $i++;
                }
                // End the select dropdown
            } else {
                echo "No data found";
            }
            mysqli_close($connection);
            ?>
        </select>
    </div>
    <?php include 'getuserdetails.php';
    ?>
    <div id="user_details_div" class="container col-8 my-4">
        <table class="container table gap-1 table-bordered">
            <thead>
                <tr class="table-dark">
                    <th>Username</th>
                    <th>UUID</th>
                    <th>Date</th>
                </tr>
            </thead>
            <tbody id="user_details"></tbody>
        </table>
    </div>
</div>
<?php
include 'scripts.php';
?>