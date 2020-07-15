<?php
session_start();
include_once './PHPLibrary/connectDB_protify.php';

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
        // if user clicks like  button
        if (isset($_GET['btnLike'])) {
            $trackid = $_GET['txttrackid'];
            $action = $_GET['txtaction'];
            $search = $_GET['txtsearch'];
            $url = $_GET['txturl'];
            $urlid = $_GET['txturlid'];
            switch ($action) {
                case 'like':
                    $sql = "INSERT INTO tb_track_liked (userid, trackid, like_action) 
         	   VALUES ('$userid', $trackid, 'like') 
         	   ON DUPLICATE KEY UPDATE like_action='like'";
                    $r = mysqli_query($link, $sql);
                    if ($r == TRUE) {

                        header("location:$url");
                        exit();
                    }
                    break;

                case 'unlike':
                    $sql = "DELETE FROM tb_track_liked WHERE userid='$userid' AND trackid=$trackid";
                    $r = mysqli_query($link, $sql);

                    if ($r == TRUE) {
                        header("location:$url");
                        exit();
                    }
                    break;

                default:
                    break;
            }
        }
        ?>

    </body>
</html>    