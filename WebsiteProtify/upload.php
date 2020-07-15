<?php
session_start();
include_once 'PHPLibrary/connectDB_protify.php';
include_once 'PHPLibrary/FunctionPHP.php';
$id = $_SESSION['id'];


if(isset($_POST['submit'])){
    $file = $_FILES['file'];
    $fileName = $_FILES['file']['name'];
    $fileTmpName = $_FILES['file']['tmp_name'];
    $fileSize = $_FILES['file']['size'];
    $fileError = $_FILES['file']['error'];
    $fileType = $_FILES['file']['type'];
    
    $fileExt = explode('.', $fileName);
    $fileActualExt = strtolower(end($fileExt));
    $allowed = array('jpg', 'jpeg', 'png', 'pdf');
    if(in_array($fileActualExt, $allowed)){
       if($fileError === 0){
           if($fileSize < 1000000){
              $fileNameNew = "profile".$id.".".$fileActualExt;
              $fileDestination = 'database/images/User/' .$fileNameNew;
              move_uploaded_file($fileTmpName,  $fileDestination);
              $sql = "UPDATE tb_user SET imageFile ='$fileNameNew' WHERE UserID = '$id' ";
              $result = mysqli_query($link, $sql);
              header("location: editProfile.php?uploadsuccess");
           }
           else{
              echo 'your file is too big !';  
           }
       } 
       else{
           echo 'There was an error uploading your file';
       }
    }
    else{
        echo 'you can not upload file of this type';
    }
}