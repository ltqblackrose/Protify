<?php 
session_start();
include_once 'PHPLibrary/connectDB_protify.php';
include_once 'PHPLibrary/FunctionPHP.php'; 
session_start();

if(isset($_SESSION['id']) && $_SESSION['id'] != NULL){
    unset($_SESSION['id']);
    echo 'Bạn đã đăng xuất thành công.';
    header("location:index.php");
}
if(isset($_COOKIE[id])== NUll){
    unset($_COOKIE[id]);
}
?>
