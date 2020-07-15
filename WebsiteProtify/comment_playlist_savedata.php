<?php
session_start();
include_once 'PHPLibrary/connectDB_protify.php';

if (isset($_SESSION["id"]) == FALSE) {
    header("location:signin.php");
    exit();
}




$playlistID = isset($_GET["playlistID"]) ? $_GET["playlistID"] : 1;
$search = isset($_GET["IPSearch"]) ? $_GET["IPSearch"] : 'test';

if(isset($_GET["btnComment"])==FALSE){
    header("location:playlist.php?playlistID=$playlistID");
    exit();
} 



$userid=$_SESSION["id"];
$content=$_GET["txtContent"];
$name=$_GET["txtName"];
$email=$_GET["txtEmail"];

$sql_reply="insert into tb_comment(userid,cmttype,playlistid,name,email,content) values ('$userid','playlist',$playlistID,'$name','$email','$content')";

$r= mysqli_query($link, $sql_reply);
if($r==TRUE){
    echo "r=$r";

    header("location:playlist.php?playlistID=$playlistID");
    exit();
}
header("location:505.html");

?> 

