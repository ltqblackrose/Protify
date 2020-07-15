<?php
function getCurURL()
{
    $pageURL = "..".$_SERVER["REQUEST_URI"];
    
    return $pageURL;
}






function checkTrackPlaylist($trackid){
    global $link;
    global $userid;
    global $playlistid;
    $sql = "SELECT * FROM tb_playlist_track left join tb_playlist on tb_playlist_track.playlistid=tb_playlist.playlistid WHERE tb_playlist.userid='$userid' AND tb_playlist_track.trackid = $trackid AND tb_playlist.playlistid=$playlistid";
    $result = mysqli_query($link, $sql);
    if (mysqli_num_rows($result) > 0) {
        return true;
    } else {
        return false;
    }
}

// Get total number of likes for a particular post
function getLikes($id) {
    global $link;
    $sql = "SELECT COUNT(*) FROM tb_track_liked
  		  WHERE trackid = $id AND like_action='like'";
    $rs = mysqli_query($link, $sql);
    $result = mysqli_fetch_array($rs);
    return $result[0];
}

// Get total number of likes and dislikes for a particular post
function getAction($id) {
    global $link;
    $liked = array();
    $likes_query = "SELECT COUNT(*) FROM tb_track_liked WHERE track_id = $id AND like_action='like'";
    $likes_rs = mysqli_query($link, $likes_query);
    $likes = mysqli_fetch_array($likes_rs);
    $liked = [
        'likes' => $likes[0],
    ];
    return json_encode($liked);
}

// Check if user already likes post or not
function userLiked($trackid) {
    global $link;
    global $userid;
    $sql = "SELECT * FROM tb_track_liked WHERE userid='$userid' 
  		  AND trackid=$trackid AND like_action='like'";
    $result = mysqli_query($link, $sql);
    if (mysqli_num_rows($result) > 0) {
        return true;
    } else {
        return false;
    }
}


// Get total number of queue for a user
function getQueue() {
    global $link;
    global $userid;
    $sql = "SELECT COUNT(*) FROM tb_queue_track" ;
  		  
    $rs = mysqli_query($link, $sql);
    $result = mysqli_fetch_array($rs);
    return $result[0];
}