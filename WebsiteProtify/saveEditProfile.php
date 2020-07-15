<?php
session_start();
include_once 'PHPLibrary/connectDB_protify.php';
include_once 'PHPLibrary/FunctionPHP.php';
if(isset($_POST['btnSubmit'])==FALSE){
    header("location: editProfile.php");
    exit();
}

$userid = $_SESSION["id"];
$mail=$_POST['mail'];
$location = $_POST['location'];
$story = $_POST['story'];
$web = $_POST['web'];
$type = $_POST['musicType'];
$pass = $_POST['Password'];
$old = $_POST['old'];
$confirm = $_POST['ConfirmPassword'];
$sql = "SELECT Password FROM tb_user where UserID = '$userid'";
$query = mysqli_query($link, $sql);
$result = mysqli_fetch_row($query);
//if($old == NULL){
//    echo "<script>alert('Error !!!')</script>";
//    exit();
//}
if($result[0] != $old){
    echo $result[0];
    echo $old;
    echo "<script>alert('Your password is fail, please enter true password !!!')</script>";
    exit();
}

if($pass != $confirm){
    echo "<script>alert('Error 1 !!!')</script>"; 
    exit();
}
if($pass === $result[0]){
    echo "<script>alert('Error 2 !!!')</script>";
    exit();
}
$sql2 = "UPDATE tb_user SET Password='$pass',Email='$mail',Locaiton='$location',Website='$web',MusicType='$type',Note='$story' WHERE UserID = '$userid'";
$query2 = mysqli_query($link, $sql2);
if($query2==FALSE){
    echo "<script>alert('Your profile is changed !')</script>";
    exit();
}
else{
   echo "<script>alert('Error !!!')</script>";
   exit();
}
