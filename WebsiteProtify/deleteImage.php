<?php
session_start();
include_once './connectProtify.php';
$userid  = $_SESSION['id'];

$filename = "assets/profile".$userid."*";
$fileinfo = glob($filename);
$fileext = explode(".", $fileinfo[0]);
$fileActualExt = $fileext[1];

$file = "assets/profile".$userid.".".$fileActualExt;

if(!unlink($flile)){
    echo 'file was not deleted!';
}
else{
    echo 'file was deleted!'; 
}
$sql = "UPDATE profileImg SET status = 1 where userid = '$userid'";
mysqli_query($link, $sql);
header("location: editProfile.php?deletesuccess");