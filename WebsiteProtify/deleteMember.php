<?php
if(isset($_GET['id'])==FALSE){
    header("location: manageUser.php");
    exit();
}
session_start();
include_once 'PHPLibrary/connectDB_protify.php';
include_once 'PHPLibrary/FunctionPHP.php';
$id = $_GET['id'];
$sql = "SELECT Role FROM tb_user WHERE UserID = '$id'";
$query = mysqli_query($link, $sql);
$result = mysqli_fetch_row($query);
if($result[0]==0){
    echo 'You can not delete an admin';
}
else{
    $sql2 = "DELETE FROM tb_user WHERE UserID = '$id'";
    $query2 = mysqli_query($link, $sql2);
    header("location: manageUser.php");
}
?>