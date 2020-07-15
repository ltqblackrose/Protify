<?php
session_start();
include_once 'PHPLibrary/connectDB_protify.php';

if (isset($_SESSION["id"]) == FALSE) {
    header("location:signin.php");
    exit();
}




$albumid = isset($_GET["albumid"]) ? $_GET["albumid"] : 1;
$search = isset($_GET["IPSearch"]) ? $_GET["IPSearch"] : 'test';

if(isset($_GET["btnPost"])==FALSE){
    header("location:album.php?albumid=$albumid");
    exit();
} 



$userid=$_SESSION["id"];
$cmtid=$_GET["txtCmtid"];
$content=$_GET["txtContent"];

$sql_reply="insert into tb_reply(cmtid,userid,content) values ($cmtid,'$userid','$content')";

$r= mysqli_query($link, $sql_reply);
if($r==TRUE){
    echo "r=$r";

    header("location:album.php?albumid=$albumid#comment_$cmtid");
    exit();
}
header("location:505.html");

?> 

