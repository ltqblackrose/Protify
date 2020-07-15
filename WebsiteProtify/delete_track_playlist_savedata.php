
<?php
session_start();
include_once 'PHPLibrary/connectDB_protify.php';

if (isset($_SESSION["id"]) == FALSE) {
    header("location:index.html");
    exit();
}
$url= $_GET['url'];
$trackid=$_GET['trackid'];
$playlistid=$_GET['playlistid'];


$sql = "DELETE FROM tb_playlist_track WHERE playlistid= '$playlistid' AND TrackID = $trackid";
$q = mysqli_query($link, $sql);
 if($q == true){
       header("location:$url");
     exit();
 }