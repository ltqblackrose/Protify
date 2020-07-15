<?php
session_start();
include_once 'PHPLibrary/connectDB_protify.php';

if (isset($_SESSION["id"]) == FALSE) {
    header("location:signin.php");
    exit();
}




$albumID = isset($_GET["albumID"]) ? $_GET["albumID"] : 1;
$search = isset($_GET["IPSearch"]) ? $_GET["IPSearch"] : 'test';

if(isset($_GET["btnComment"])==FALSE){
    header("location:album.php?albumID=$albumID");
    exit();
} 



$userid=$_SESSION["id"];
$content=$_GET["txtContent"];
$name=$_GET["txtName"];
$email=$_GET["txtEmail"];

$sql_reply="insert into tb_comment(userid,cmttype,albumid,name,email,content) values ('$userid','album',$albumID,'$name','$email','$content')";

$r= mysqli_query($link, $sql_reply);
if($r==TRUE){
    echo "r=$r";

    header("location:album.php?albumID=$albumID");
    exit();
}
header("location:505.html");

?> 

