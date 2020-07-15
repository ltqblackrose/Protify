<?php

/* 
    * Đây là hàm kết nối 
        * Cơ sở dữ liệu [1907DB], tài khoản đăng nhập : root , pass ko có
        * 
 */

    $serverDB= "localhost:3306";
    $dbName="protify";
    $username="root";
    $password="";

    $link= mysqli_connect($serverDB, $username, $password,$dbName);

    if (!$link) {
  die("Error connecting to database: " . mysqli_connect_error($link));
  header(".location:../404.html");
  exit();
}
    

?>
