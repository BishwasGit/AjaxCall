<?php
$db_name = "ajax";
$db_user = "root";
$db_pass = "";
$db_host = "localhost";

$connection = mysqli_connect($db_host, $db_user, '', $db_name);

if (!$connection) {
    echo 'Error connecting DB';
}
?>