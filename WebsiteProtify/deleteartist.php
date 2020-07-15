<?php
session_start();
include_once '../library/connectprotify.php';
if (isset($_SESSION["id"]) == FALSE) {
    header("location:signin.html");
    exit();
}
$id = $_SESSION["id"];
?>
<?php
    //Kiểm tra xem form điều chỉnh trang [admin.php]
    if (isset($_POST["id"]) == FALSE) {
        header("location:adminArtist.php");
        exit();
    }
    
    //Lấy connection
    include_once '../library/connectprotify.php';
    
    //Lấy  dữ liệu của form điều chỉnh để lưu lên databse
    $id=$_POST["id"];
    
    
    
    //Viết lệnh update
    $sql ="delete from tb_artist where ArtistID = '$id' ;";
    
    //Thi hành lệnh truy vấn từ biến connection
    $r= mysqli_query($link, $sql);
    
    if($r==FALSE){
        echo "<h3 style='color:blue'>Lỗi sai! Không thể xóa thông tin</h3>";
        exit();
    }
    else{
    //quay ve lai trang danh sach lop
    header("location:adminArtist.php");
    }
?>