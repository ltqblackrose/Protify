<?php

session_start();
include_once 'PHPLibrary/connectDB_protify.php';
include_once 'PHPLibrary/FunctionPHP.php';
//Check id
$url = $_GET['url'];
if (isset($_SESSION["id"]) == FALSE) {
    header("location:signin.php");
    exit();
}
if (isset($_GET['trackid'])) {
    $id = $_GET['trackid'];
}
$time = date('m/d/Y');
$sql = "SELECT date_format(max(date),'%m/%d/%Y'), ListenTimes FROM tb_track_listen WHERE TrackID = $id";
$query = mysqli_query($link, $sql);
$result = mysqli_fetch_row($query);
if (strcmp($result[0], $time) != 0) {
    $sql2 = "INSERT INTO tb_track_listen(trackID, ListenTimes, Date) VALUES ($id ,1, CURRENT_DATE)";
    $result2 = mysqli_query($link, $sql2);
    header("location: $url");
    exit();
} else {
    if ($result[1] == NULL) {
        $sql4 = "INSERT tb_track_listen(TrackID, Date, ListenTimes) VALUES($id, CURRENT_DATE, 1)";
        $result4 = mysqli_query($link, $sql4);
        header("location: $url");
        exit();
    } else {
        $sql3 = "UPDATE tb_track_listen set ListenTimes = ListenTimes+1, Date = CURRENT_TIME WHERE TrackID = $id AND date_format(Date,'%m/%d/%Y') = Date_format(CURRENT_TIMESTAMP,'%m/%d/%Y')";
        $result3 = mysqli_query($link, $sql3);
        header("location: $url");
        exit();
    }
}
?>