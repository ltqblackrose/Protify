<?php
session_start();
include_once 'PHPLibrary/connectDB_protify.php';

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
        
        if (isset($_GET['playlistid'])) {
            $playlistid = $_GET['playlistid'];
            $url= $_GET['url'];
            $trackid=$_GET['trackid'];
            
                    $sql = "INSERT INTO tb_playlist_track (playlistid, trackid) 
         	   VALUES ($playlistid, $trackid) 
         	   ON DUPLICATE KEY UPDATE trackid=$trackid";
                    $q = mysqli_query($link, $sql);
                    if ($q == TRUE) {

                        header("location:$url");
                        exit();
                    }
                   
                    
                
            }
        
        ?>

    </body>
</html>    