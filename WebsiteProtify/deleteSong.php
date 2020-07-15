<?php
session_start();
$userid = $_SESSION["id"];
$id = $_GET['id'];
include_once 'PHPLibrary/connectDB_protify.php';

$sql = "DELETE FROM tb_queue_track WHERE UserID = '$userid' AND TrackID = $id";
$query = mysqli_query($link, $sql);
 if($query == true){
     header("location: profile.php#queue");
     exit();
 }