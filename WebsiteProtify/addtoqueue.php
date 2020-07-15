<?php
session_start();
include_once 'PHPLibrary/connectDB_protify.php';
include_once 'PHPLibrary/FunctionPHP.php';

if (isset($_SESSION["id"]) == FALSE) {
    header("location:index.html");
    exit();
}
$userid = $_SESSION["id"];

?>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>

        <?php

            $url= $_GET['url'];
            $trackid=$_GET['trackid'];
            
                    $sql = "INSERT INTO tb_queue_track (trackid, UserID) 
         	   VALUES ($trackid, '$userid') 
         	   ON DUPLICATE KEY UPDATE trackid=$trackid";
                    $r = mysqli_query($link, $sql);
                    if ($r == TRUE) {

                        header("location:$url");
                        exit();
                    }
        ?>

    </body>
</html>