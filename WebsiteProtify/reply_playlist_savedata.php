<?php
session_start();
include_once 'PHPLibrary/connectDB_protify.php';

if (isset($_SESSION["id"]) == FALSE) {
    header("location:signin.php");
    exit();
}




$playlistID = isset($_GET["playlistID"]) ? $_GET["playlistID"] : 3;
$search = isset($_GET["IPSearch"]) ? $_GET["IPSearch"] : 'test';

if(isset($_GET["btnPost"])==FALSE){
    header("location:playlist.detail.php?playlistID=$playlistID");
    exit();
} 



$userid=$_SESSION["id"];
$cmtID=$_GET["txtCmtID"];
$content=$_GET["txtContent"];

$sql_reply="insert into tb_reply(cmtID,userid,content) values ($cmtID,'$userid','$content')";

$r= mysqli_query($link, $sql_reply);
if($r==TRUE){
    echo "r=$r";

    header("location:playlist.detail.php?playlistID=$playlistID#comment_$cmtID");
    exit();
}
header("location:505.html");

?> 

