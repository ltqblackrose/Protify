<?php
session_start();
include_once 'PHPLibrary/connectDB_protify.php';
include_once 'PHPLibrary/FunctionPHP.php';
//Check id
if (isset($_SESSION["id"]) == FALSE) {
    header("location:signin.php");
    exit();
}
$userid = $_SESSION["id"];
//Check Search
$search = isset($_GET["IPSearch"]) ? $_GET["IPSearch"] : 'KhongCoDuLieu';
$albumid = isset($_GET["albumid"]) ? $_GET["albumid"] : 1;

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>protify - Music, Audio and Radio web application</title>
        <meta name="description" content="Music, Musician, Bootstrap" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimal-ui" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- for ios 7 style, multi-resolution icon of 152x152 -->
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent">
        <link rel="apple-touch-icon" href="images/logo.png">
        <meta name="apple-mobile-web-app-title" content="Flatkit">
        <!-- for Chrome on Android, multi-resolution icon of 196x196 -->
        <meta name="mobile-web-app-capable" content="yes">
        <link rel="shortcut icon" sizes="196x196" href="images/logo.png">

        <!-- style -->
        <link rel="stylesheet" href="css/animate.css/animate.min.css" type="text/css" />
        <link rel="stylesheet" href="css/glyphicons/glyphicons.css" type="text/css" />
        <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css" type="text/css" />
        <link rel="stylesheet" href="css/material-design-icons/material-design-icons.css" type="text/css" />
        <link rel="stylesheet" href="css/bootstrap/dist/css/bootstrap.min.css" type="text/css" />

        <!-- build:css css/styles/app.min.css -->
        <link rel="stylesheet" href="css/styles/app.css" type="text/css" />
        <link rel="stylesheet" href="css/styles/style.css" type="text/css" />
        <link rel="stylesheet" href="css/styles/font.css" type="text/css" />

        <link rel="stylesheet" href="libs/owl.carousel/dist/assets/owl.carousel.min.css" type="text/css" />
        <link rel="stylesheet" href="libs/owl.carousel/dist/assets/owl.theme.css" type="text/css" />
        <link rel="stylesheet" href="libs/mediaelement/build/mediaelementplayer.min.css" type="text/css" />
        <link rel="stylesheet" href="libs/mediaelement/build/mep.css" type="text/css" />

        <!-- endbuild -->
    </head>
    <body>
        <div class="app dk" id="app">

            <!-- ############ LAYOUT START-->

            <!-- aside -->
            <div id="aside" class="app-aside modal fade nav-dropdown">
                <!-- fluid app aside -->
                <div class="left navside grey dk" data-layout="column">
                    <div class="navbar no-radius">
                        <!-- brand -->
                        <a href="index.html" class="navbar-brand md">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" width="32" height="32">
                            <circle cx="24" cy="24" r="24" fill="rgba(255,255,255,0.2)"/>
                            <circle cx="24" cy="24" r="22" fill="#1c202b" class="brand-color"/>
                            <circle cx="24" cy="24" r="10" fill="#ffffff"/>
                            <circle cx="13" cy="13" r="2"  fill="#ffffff" class="brand-animate"/>
                            <path d="M 14 24 L 24 24 L 14 44 Z" fill="#FFFFFF" />
                            <circle cx="24" cy="24" r="3" fill="#000000"/>
                            </svg>

                            <img src="images/logo.png" alt="." class="hide">
                            <span class="hidden-folded inline">protify</span>
                        </a>
                        <!-- / brand -->
                    </div>
                    <div data-flex class="hide-scroll">
                        <nav class="scroll nav-stacked nav-active-primary">

                            <ul class="nav" data-ui-nav>
                                <li class="nav-header hidden-folded">
                                    <span class="text-xs text-muted">Main</span>
                                </li>
                                <li>
                                    <a href="player.php">
                                        <span class="nav-icon">
                                            <i class="material-icons">
                                                play_circle_outline
                                            </i>
                                        </span>
                                        <span class="nav-text">Discover</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="browse.php">
                                        <span class="nav-icon">
                                            <i class="material-icons">
                                                sort
                                            </i>
                                        </span>
                                        <span class="nav-text">Browse</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="chart.php">
                                        <span class="nav-icon">
                                            <i class="material-icons">
                                                trending_up
                                            </i>
                                        </span>
                                        <span class="nav-text">Charts</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="artist.php">
                                        <span class="nav-icon">
                                            <i class="material-icons">
                                                portrait
                                            </i>
                                        </span>
                                        <span class="nav-text">Artist</span>
                                    </a>
                                </li>
                                <li>
                                    <a data-toggle="modal" data-target="#search-modal">
                                        <span class="nav-icon">
                                            <i class="material-icons">
                                                search
                                            </i>
                                        </span>
                                        <span class="nav-text">Search</span>
                                    </a>
                                </li>


                                <li class="nav-header hidden-folded m-t">
                                    <span class="text-xs text-muted">Your collection</span>
                                </li>
                                <li>
                                    <a href="profile.php#queue">
                                        <span class="nav-label">
                                            <b class="label"><?php echo getQueue()?></b>
                                        </span>
                                        <span class="nav-icon">
                                            <i class="material-icons">
                                                list
                                            </i>
                                        </span>
                                        <span class="nav-text">Tracks</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="profile.php#playlists">
                                        <span class="nav-icon">
                                            <i class="material-icons">
                                                queue_music
                                            </i>
                                        </span>
                                        <span class="nav-text">Playlists</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="profile.php#likes">
                                        <span class="nav-icon">
                                            <i class="material-icons">
                                                favorite_border
                                            </i>
                                        </span>
                                        <span class="nav-text">Likes</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div data-flex-no-shrink>
                        <div class="nav-fold dropup">
                            <a data-toggle="dropdown">
                                <span class="pull-left">
                                    <img src="images/a3.jpg" alt="..." class="w-32 img-circle">
                                </span>
                                <span class="clear hidden-folded p-x p-y-xs">
                                    <span class="block _500 text-ellipsis"><?php echo $userid?></span>
                                </span>
                            </a>
                            <div class="dropdown-menu w dropdown-menu-scale ">
                                <a class="dropdown-item" href="profile.php#profile">
                                    <span>Profile</span>
                                </a>
                                <a class="dropdown-item" href="profile.php#queue">
                                    <span>Tracks</span>
                                </a>
                                <a class="dropdown-item" href="profile.php#playlists">
                                    <span>Playlists</span>
                                </a>
                                <a class="dropdown-item" href="profile.php#likes">
                                    <span>Likes</span>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="docs.html">
                                    Need help?
                                </a>
                                <a class="dropdown-item" href="signin.php">Sign out</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- / -->

            <!-- content -->
            <div id="content" class="app-content white bg box-shadow-z2" role="main">
                <div class="app-header hidden-lg-up white lt box-shadow-z1">
                    <div class="navbar">
                        <!-- brand -->
                        <a href="index.html" class="navbar-brand md">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" width="32" height="32">
                            <circle cx="24" cy="24" r="24" fill="rgba(255,255,255,0.2)"/>
                            <circle cx="24" cy="24" r="22" fill="#1c202b" class="brand-color"/>
                            <circle cx="24" cy="24" r="10" fill="#ffffff"/>
                            <circle cx="13" cy="13" r="2"  fill="#ffffff" class="brand-animate"/>
                            <path d="M 14 24 L 24 24 L 14 44 Z" fill="#FFFFFF" />
                            <circle cx="24" cy="24" r="3" fill="#000000"/>
                            </svg>

                            <img src="images/logo.png" alt="." class="hide">
                            <span class="hidden-folded inline">protify</span>
                        </a>
                        <!-- / brand -->
                        <!-- nabar right -->
                        <ul class="nav navbar-nav pull-right">
                            <li class="nav-item">
                                <!-- Open side - Naviation on mobile -->
                                <a data-toggle="modal" data-target="#aside" class="nav-link">
                                    <i class="material-icons">menu</i>
                                </a>
                                <!-- / -->
                            </li>
                        </ul>
                        <!-- / navbar right -->
                    </div>
                </div>
                <div class="app-footer app-player grey bg">
                    <div class="playlist" style="width:100%"></div>
                </div>
                <div class="app-body" id="view">

                    <!-- ############ PAGE START-->

                    <!-- ############ PHP START-->
                    <?php
                    $sql_album = "select Albumid,albumname,ArtistName,ImageFile,Note,totalListen,totalLiked,totalTrack,totalLength,artistid from vw_album_info where Albumid=$albumid;";
                    $r_list_album = mysqli_query($link, $sql_album);
                    $a_list_album = mysqli_fetch_all($r_list_album);
                    $album = $a_list_album[0];
                    $artistid = $album[9];
                    $artistName = $album[2];
                    ?>

                    <div class="pos-rlt">

                        <div class="page-bg" data-stellar-ratio="2" style="background-image: url('database/images/Artist/TaeYeon.jpg');"></div>
                    </div>
                    <div class="page-content">
                        <div class="padding b-b">
                            <div class="row-col">
                                <div class="col-sm w w-auto-xs m-b">
                                    <div class="item w r">
                                        <div class="item-media">
                                            <div class="item-media-content" style="background-image: url('<?php echo $album[3] ?>');"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm">
                                    <div class="p-l-md no-padding-xs">
                                        <div class="page-title">
                                            <h1 class="inline"><?php echo $album[1] ?></h1>
                                        </div>

                                        <p class="item-desc text-ellipsis text-muted" data-ui-toggle-class="text-ellipsis"><?php echo $album[4] ?></p>
                                        <div class="item-action m-b">
                                            <a class="btn btn-icon white rounded btn-share pull-right" data-toggle="modal" data-target="#share-modal"><i class="fa fa-share-alt"></i></a>
                                            <button class="btn-playpause text-primary m-r-sm"></button> 
                                            <span class="text-muted"><?php echo $album[5] ?></span>
                                            <a class="btn btn-icon rounded btn-favorite"><i class="fa fa-heart-o"></i></a> 
                                            <span class="text-muted"><?php echo $album[6] ?></span>
                                            <div class="inline dropdown m-l-xs">

                                            </div>
                                        </div>
                                        <div class="item-meta">
                                            <a class="btn btn-xs rounded white">Pop</a> <a class="btn btn-xs rounded white">Happy</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row-col">
                            <div class="col-lg-9 b-r no-border-md">
                                <div class="padding">

                                    <h6 class="m-b">
                                        <span class="text-muted">by</span> 
                                        <a href="artist.detail.php" data-pjax class="item-author _600"><?php echo $album[2] ?></a> 
                                        <span class="text-muted text-sm">- <?php echo $album[7] ?> song, <?php echo date('i', strtotime($album[8])) ?> minutes <?php echo date('s', strtotime($album[8])) ?> seconds </span>
                                    </h6>





                                    <div id="tracks" class="row item-list item-list-xs item-list-li m-b">
                                        <?php
                                        $sql_track = "select Trackid, TrackName, Length, TrackFile, ImageFile, Artistid, Albumid, ArtistName from vw_track_info where Albumid=$albumid;";
                                        $r_list_track = mysqli_query($link, $sql_track);
                                        $a_list_track = mysqli_fetch_all($r_list_track);
                                        foreach ($a_list_track as $key_track => $track) {
                                            $number_track = $key_track + 1;
                                            ?>
                                            <div class="col-xs-12">

                                                <div class="item r" data-id="item-<?php echo $number_track + 7 ?>" data-src="<?php echo $track[3] ?>">
                                                    <div class="item-media ">
                                                        <a href="album.php?albumid=<?php echo $albumid?>" class="item-media-content" style="background-image: url('<?php echo $track[4] ?>');"></a>
                                                        <div class="item-overlay center">
                                                            <button  class="btn-playpause">Play</button>
                                                        </div>
                                                    </div>
                                                    <div class="item-info">
                                                        <div class="item-overlay bottom text-right">
                                                           <!-- Like Button-->
                                                            <form class= "btn-favorite" action="Like_Track_savedata.php" id='like_track_<?php echo $track[0] ?>' >
                                                                <input style = "display:none" type="text" name="txtaction" <?php if (userLiked($track[0])): ?> value= "unlike" <?php else : ?>value= "like" <?php endif ?> readonly>
                                                                <input style = "display:none" type="text" name="txttrackid" value="<?php echo $track[0] ?>" readonly>
                                                                <input style = "display:none" type="text" name="txtsearch" value="<?php echo $search ?>" readonly>
                                                                <input style = "display:none" type="text" name="txturl" value="<?php echo getCurURL() ?>" readonly>
                                                                <input style = "display:none" type="text" name="txturlid" value="like_track_<?php echo $track[0] ?>" readonly>           

                                                                <button type="submit " name="btnLike" style="background:transparent;border:none"
                                                                <?php if (userLiked($track[0])): ?> 
                                                                            class="likes fa fa-heart like-btn" 
                                                                            
                                                                        <?php else: ?> 
                                                                            class="likes fa fa-heart-o like-btn" 
                                                                            
                                                                        <?php endif ?> 
                                                                        data-id="<?php echo $track[0] ?>"> 
                                                                </button>

                                                                <!--  Like Counter-->
    <!--                                                                            <span class="likes counter"><?php echo getLikes($track[0]); ?> </span>-->
                                                                <!-- Button MORE -->
                                                                <a href="#" class="btn-more" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a>
                                                                <div class="dropdown-menu pull-right black lt">
                                                                    <a class="dropdown-item" href="#"><i class="fa fa-plus fa-fw text-left"></i> Add to Queque</a>
                                                                    <div class="dropdown-item dropdown-submenu">
                                                                        <a tabindex="-1" href="#"><i class="fa fa-music fa-fw text-left"></i> Add to Playlist</a>
                                                                        <div class="dropdown-menu pull-left dark" role="menu">

                                                                            <?php
                                                                            $sql_list_playlist = "select playlistid,playlistname,userid from vw_playlist_info where userid ='$userid' ";
                                                                            $r_list_playlist = mysqli_query($link, $sql_list_playlist);
                                                                            $total_list_playlist = mysqli_num_rows($r_list_playlist);
                                                                            if ($total_list_playlist > 0):
                                                                                $a_list_playlist = mysqli_fetch_all($r_list_playlist);
                                                                                foreach ($a_list_playlist as $list_playlist):
                                                                                    ?>
                                                                                    <a class="dropdown-item" href="add_to_playlist_savedata.php?playlistid=<?php echo $list_playlist[0] ?>&url=<?php echo getCurURL() ?>&trackid=<?php echo $track[0] ?>">Add to <?php echo $list_playlist[1] ?></a>

                                                                                <?php endforeach;
                                                                            endif;
                                                                            ?>

                                                                        </div>
                                                                    </div>
                                                                    <div class="dropdown-divider"></div><a class="dropdown-item" href="#"><i class="fa fa-share-alt fa-fw text-left"></i> Share</a>
                                                                </div>


                                                                <!-- Button MORE END-->
                                                            </form>
                                                            <!-- Like END-->
                                                        </div>
                                                        <div class="item-title text-ellipsis">
                                                            <a href="album.php?albumid=<?php echo $track[6] ?>"><?php echo $track[1] ?></a>
                                                        </div>
                                                        <div class="item-author text-sm text-ellipsis hide">
                                                            <a href="artist.detail.php?Artistid=<?php $artistid ?>" class="text-muted"><?php echo $track[7] ?></a>
                                                        </div>
                                                        <div class="item-meta text-sm text-muted">
                                                            <span class="item-meta-right"><?php echo $track[2] ?></span>
                                                        </div>


                                                    </div>
                                                </div>
                                            </div>
<?php } ?>

                                    </div>


                                    <?php
                                    $sql_artist_album = "select artistid,artistname,albumid,albumname,trackfile,imagefile,totallisten,totalliked from vw_album_info where Artistid=$artistid;";
                                        $r_list_artist_album = mysqli_query($link, $sql_artist_album);
                                        $total_list_playlist = mysqli_num_rows($r_list_artist_album);
                                        if($total_list_playlist>0) :
                                    ?>
                                    
                                    

                                    <h5 class="m-b"> <?php echo $artistName ?> </h5>
                                    <div class="row m-b">
                                        <?php
                                        
                                        $a_list_artist_album = mysqli_fetch_all($r_list_artist_album);
                                        foreach ($a_list_artist_album as $key_artist_album => $artist_album) {

                                            $number_artist_album = $key_artist_album + 1;
                                            ?>

                                            <div class="col-xs-6 col-sm-6 col-md-3">
                                                <div class="item r" data-id="item- <?php echo $number_artist_album + 12 ?>" data-src="<?php echo $artist_album[4] ?>">
                                                    <div class="item-media  ">
                                                        <a href="album.php?albumid=<?php echo $artist_album[2] ?>" class="item-media-content" style="background-image: url('<?php echo $artist_album[5] ?>');"></a>
                                                        <div class="item-overlay center">
                                                            <button  class="btn-playpause">Play</button>
                                                        </div>
                                                    </div>
                                                    <div class="item-info">
                                                        <div class="item-overlay bottom text-right">

                                                            <div class="dropdown-menu pull-right black lt"></div>
                                                        </div>
                                                        <div class="item-title text-ellipsis">
                                                            <a href="album.php?albumid=<?php echo $artist_album[2] ?>"><?php echo $artist_album[3] ?></a>
                                                        </div>
                                                        <div class="item-author text-sm text-ellipsis hide">
                                                            <a href="artist.detail.php?artistid=<?php echo $artistid ?>" class="text-muted"><?php echo $artist_album[1] ?></a>
                                                        </div>
                                                        <div class="item-meta text-sm text-muted">
                                                            <span class="item-meta-stats text-xs ">
                                                                <i class="fa fa-play text-muted"></i> <?php echo $artist_album[6] ?> 
                                                                <i class="fa fa-heart m-l-sm text-muted"></i> <?php echo $artist_album[7] ?>
                                                            </span>
                                                        </div>


                                                    </div>
                                                </div>

                                            </div>
                                            <?php
                                        }
                                        ?>
                                    </div>
                                    <?php endif ?>
                                    <h5 class="m-b">Comments</h5>



                                    <div class="streamline m-b m-l">
                                        <?php
                                        $page_comment = 1;
                                        $limit_comment = 5;
                                        $sql_checkcomment = "select Cmtid from vw_cmt_info where Albumid=$albumid order by datetime desc ;";
                                        $r_checkcomment = mysqli_query($link, $sql_checkcomment);

                                        $total_comment = mysqli_num_rows($r_checkcomment);

                                        if ($total_comment > 0) {
                                            $total_page_comment = ceil($total_comment / $limit_comment);

                                            if (isset($_GET["page"]))
                                                $page_comment = $_GET["page"]; //nếu biến $_GET["page"] tồn tại thì trang hiện tại là trang $_GET["page"]
                                            if ($page_comment < 1)
                                                $page_comment = 1; //nếu trang hiện tại nhỏ hơn 1 thì gán bằng 1
                                            if ($page_comment > $total_page_comment)
                                                $page_comment = $total_page_comment; //nếu trang hiện tại vượt quá số trang được chia thì sẽ bằng trang cuối cùng


                                            $start_comment = ($page_comment - 1) * $limit_comment; //tính start (vị trí bản ghi sẽ bắt đầu lấy)


                                            $sql_comment = "select Cmtid, Albumid,Userid,Name,CmtEmail,RealEmail,Content,DateTime,ImageFile from vw_cmt_info where Albumid=$albumid order by datetime desc limit $start_comment,$limit_comment ;";
                                            $r_comment = mysqli_query($link, $sql_comment);
                                            $a_comment = mysqli_fetch_all($r_comment);
                                            foreach ($a_comment as $key_comment => $comment) :
                                                $Cmtid = $comment[0];
                                                $number_comment = $key_comment + 1;
                                                ?>
                                                <div class="sl-item">
                                                    <div class="sl-left ">

                                                        <img src="<?php echo $comment[8] ?>" alt="." class="img-circle">
                                                    </div>
                                                    <div class="sl-content">

                                                        <div class="sl-author m-b-0">
                                                            <a href="#"><?php echo $comment[3] ?></a>


                                                            <span class="sl-date text-muted"><?php echo date('D', strtotime($comment[7])) ?>, <?php echo date('d', strtotime($comment[7])) ?> <?php echo date('M', strtotime($comment[7])) ?> at <?php echo date('H', strtotime($comment[7])) ?> : <?php echo date('i', strtotime($comment[7])) ?></span>
                                                        </div>
                                                        <div>
                                                            <p><?php echo $comment[6] ?></p>
                                                            <?php
                                                            $sql_reply = "select Replyid,Cmtid,Content,Datetime,Imagefile from vw_reply_info where Cmtid=$Cmtid order by datetime desc;";
                                                            $r_reply = mysqli_query($link, $sql_reply);
                                                            $a_reply = mysqli_fetch_all($r_reply);
                                                            foreach ($a_reply as $key_reply => $reply) :
                                                                $number_reply = $key_reply + 1;
                                                                ?>
                                                                <div class="sl-item">
                                                                    <div class="sl-left">
                                                                        <img src="<?php echo $reply[4] ?>" alt="." class="img-circle">
                                                                    </div>

                                                                    <div class="sl-content">
                                                                        <div class="sl-date text-muted"><?php echo date('D', strtotime($reply[3])) ?>, <?php echo date('d', strtotime($reply[3])) ?> <?php echo date('M', strtotime($reply[3])) ?> at <?php echo date('H', strtotime($reply[3])) ?> : <?php echo date('i', strtotime($reply[3])) ?></div>
                                                                        <p><?php echo $reply[2] ?></p>
                                                                    </div>
                                                                </div>
        <?php endforeach ?>
                                                        </div>
                                                        <div class="sl-footer">
                                                            <a href="#" data-toggle="collapse" data-target="#reply-<?php echo $number_comment ?>">
                                                                <i class="fa fa-fw fa-mail-reply text-muted"></i> Reply
                                                            </a>
                                                        </div>
                                                        <div class="box collapse m-a-0 b-a" id="reply-<?php echo $number_comment ?>">
                                                            <form action="reply_album_savedata.php?albumid=<?php echo $albumid ?>">

                                                                <input type="number" style="display:none" name="txtCmtid" id="txtCmtid" value=<?php echo $Cmtid; ?> class="text" readonly="">
                                                                <textarea id="txtContent" name="txtContent" class="form-control no-border" rows="3" placeholder="Type something... "></textarea>

                                                                <div class="box-footer clearfix">
                                                                    <button class="btn btn-info pull-right btn-sm" type="submit" name="btnPost" >Post</button>
                                                                    <ul class="nav nav-pills nav-sm">
                                                                        <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-camera text-muted"></i></a></li>
                                                                        <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-video-camera text-muted"></i></a></li>
                                                                    </ul>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>


                                                </div>
    <?php endforeach ?>
                                        </div>
                                        <ul class="pagination">
                                            <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                                            <?php for ($i = 1; $i <= $total_page_comment; $i++) { ?>
                                                <li <?php if ($page_comment == $i) echo "class='active'"; ?> ><a href="album.php?page=<?php echo $i; ?>"><?php echo $i; ?></a></li>
    <?php } ?>
                                            <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                                        </ul>
                                        <?php
                                    }
                                    ?>
                                    <hr>    



                                    <h5 class="m-t-lg m-b">Leave a comment</h5>
                                    <form action="comment_album_savedata.php?albumid=<?php echo $albumid ?>">
                                        <input type="number" style="display:none" name="txtAlbumid" id="txtCmtid" value=<?php echo $albumid; ?> class="text" readonly="">
                                        <div class="form-group row">
                                            <div class="col-sm-6">
                                                <label>Your name</label>
                                                <input type="text" name='txtName' class="form-control" placeholder="Name">
                                            </div>
                                            <div class="col-sm-6">
                                                <label >Email</label>
                                                <input type="email" name='txtEmail' class="form-control" placeholder="Enter email">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Comment</label>
                                            <textarea class="form-control" name='txtContent' rows="5" placeholder="Type your comment"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" name='btnComment' class="btn btn-sm white rounded">Submit comment</button>
                                        </div>
                                    </form>

                                </div>
                            </div>

                            <!-- / LIKE CONTENT -->
                            <div class="col-lg-3 w-xxl w-auto-md">
                                <div class="padding" style="bottom: 60px;" data-ui-jp="stick_in_parent">
                                    <h6 class="text text-muted"> Top 5 Likes</h6>


                                    <div class="row item-list item-list-sm m-b">
                                        <?php
                                        $sql_like = "select trackid,trackname,artistid,artistname,albumid,trackfile,imagefile,totalliked from vw_track_listen_like_info order by totalliked desc limit 0,5;";
                                        $r_like = mysqli_query($link, $sql_like);
                                        $total_like = mysqli_num_rows($r_like);
                                        if ($total_like > 0):
                                            $a_like = mysqli_fetch_all($r_like);
                                            foreach ($a_like as $key_like => $like) :
                                                $number_like = $key_like + 1;
                                                ?>
                                                <div class="col-xs-12">
                                                    <div class="item r" data-id="item-<?php echo $number_like + 12 ?>" data-src="<?php echo $like[6] ?>">
                                                        <div class="item-media ">
                                                            <a href="album.php?albumID=<?php echo $like[4] ?>" class="item-media-content" style="background-image: url('<?php echo $like[6] ?>');"></a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-title text-ellipsis">
                                                                <a href="album.php?albumID=<?php echo $like[4] ?>"><?php echo $like[1] ?></a>
                                                            </div>
                                                            <div class="item-author text-sm text-ellipsis ">
                                                                <a href="artist.detail.php?artistID=<?php echo $like[2] ?>" class="text-muted"><?php echo $like[3] ?></a>
                                                            </div>


                                                        </div>
                                                    </div>
                                                </div>
                                                <?php
                                            endforeach;
                                        endif;
                                        ?>
                                    </div>
                                    <h6 class="text text-muted">Go mobile</h6>
                                    <div class="btn-groups">
                                        <a href="" class="btn btn-sm dark lt m-r-xs" style="width: 135px">
                                            <span class="pull-left m-r-sm">
                                                <i class="fa fa-apple fa-2x"></i>
                                            </span>
                                            <span class="clear text-left l-h-1x">
                                                <span class="text-muted text-xxs">Download on the</span>
                                                <b class="block m-b-xs">App Store</b>
                                            </span>
                                        </a>
                                        <a href="" class="btn btn-sm dark lt" style="width: 133px">
                                            <span class="pull-left m-r-sm">
                                                <i class="fa fa-play fa-2x"></i>
                                            </span>
                                            <span class="clear text-left l-h-1x">
                                                <span class="text-muted text-xxs">Get it on</span>
                                                <b class="block m-b-xs m-r-xs">Google Play</b>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="b-b m-y"></div>
                                    <div class="nav text-sm _600">
                                        <a href="#" class="nav-link text-muted m-r-xs">About</a>
                                        <a href="#" class="nav-link text-muted m-r-xs">Contact</a>
                                        <a href="#" class="nav-link text-muted m-r-xs">Legal</a>
                                        <a href="#" class="nav-link text-muted m-r-xs">Policy</a>
                                    </div>
                                    <p class="text-muted text-xs p-b-lg">&copy; Copyright 2016</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- ############ PAGE END-->

            </div>
        </div>
        <!-- / -->


        <!-- ############ SWITHCHER START-->
        <div id="switcher">
            <div class="switcher white" id="sw-theme">
                <a href="#" data-ui-toggle-class="active" data-ui-target="#sw-theme" class="white sw-btn">
                    <i class="fa fa-gear text-muted"></i>
                </a>
                <div class="box-header">
                    <strong>Theme Switcher</strong>
                </div>
                <div class="box-divider"></div>
                <div class="box-body">
                    <p id="settingLayout" class="hidden-md-down">
                        <label class="md-check m-y-xs" data-target="folded">
                            <input type="checkbox">
                            <i class="green"></i>
                            <span>Folded Aside</span>
                        </label>
                        <label class="m-y-xs pointer" data-ui-fullscreen data-target="fullscreen">
                            <span class="fa fa-expand fa-fw m-r-xs"></span>
                            <span>Fullscreen Mode</span>
                        </label>
                    </p>
                    <p>Colors:</p>
                    <p data-target="color">
                        <label class="radio radio-inline m-a-0 ui-check ui-check-color ui-check-md">
                            <input type="radio" name="color" value="primary">
                            <i class="primary"></i>
                        </label>
                        <label class="radio radio-inline m-a-0 ui-check ui-check-color ui-check-md">
                            <input type="radio" name="color" value="accent">
                            <i class="accent"></i>
                        </label>
                        <label class="radio radio-inline m-a-0 ui-check ui-check-color ui-check-md">
                            <input type="radio" name="color" value="warn">
                            <i class="warn"></i>
                        </label>
                        <label class="radio radio-inline m-a-0 ui-check ui-check-color ui-check-md">
                            <input type="radio" name="color" value="success">
                            <i class="success"></i>
                        </label>
                        <label class="radio radio-inline m-a-0 ui-check ui-check-color ui-check-md">
                            <input type="radio" name="color" value="info">
                            <i class="info"></i>
                        </label>
                        <label class="radio radio-inline m-a-0 ui-check ui-check-color ui-check-md">
                            <input type="radio" name="color" value="blue">
                            <i class="blue"></i>
                        </label>
                        <label class="radio radio-inline m-a-0 ui-check ui-check-color ui-check-md">
                            <input type="radio" name="color" value="warning">
                            <i class="warning"></i>
                        </label>
                        <label class="radio radio-inline m-a-0 ui-check ui-check-color ui-check-md">
                            <input type="radio" name="color" value="danger">
                            <i class="danger"></i>
                        </label>
                    </p>
                    <p>Themes:</p>
                    <div data-target="bg" class="text-u-c text-center _600 clearfix">
                        <label class="p-a col-xs-3 light pointer m-a-0">
                            <input type="radio" name="theme" value="" hidden>
                            <i class="active-checked fa fa-check"></i>
                        </label>
                        <label class="p-a col-xs-3 grey pointer m-a-0">
                            <input type="radio" name="theme" value="grey" hidden>
                            <i class="active-checked fa fa-check"></i>
                        </label>
                        <label class="p-a col-xs-3 dark pointer m-a-0">
                            <input type="radio" name="theme" value="dark" hidden>
                            <i class="active-checked fa fa-check"></i>
                        </label>
                        <label class="p-a col-xs-3 black pointer m-a-0">
                            <input type="radio" name="theme" value="black" hidden>
                            <i class="active-checked fa fa-check"></i>
                        </label>
                    </div>
                </div>
            </div>
        </div>
        <!-- ############ SWITHCHER END-->
<!-- ############ SEARCH START -->
        <div class="modal white lt fade" id="search-modal" data-backdrop="false">
            <a data-dismiss="modal" class="text-muted text-lg p-x modal-close-btn">&times;</a>
            <div class="row-col">
                <div class="p-a-lg h-v row-cell v-m">
                    <div class="row">
                        <div class="col-md-8 offset-md-2">
                             <form action="search.result.php" class="m-b-md">
                                    <div class="input-group input-group-lg">
                                        <input name="IPSearch" id="IPSearch" type="text" class="form-control" placeholder="Type keyword" data-ui-toggle-class="hide" data-ui-target="#search-result">
                                        <span class="input-group-btn">
                                            <input class="btn b-a no-shadow white" type="submit" value='Search' name='btnSearch'>
                                        </span>
                                    </div>
                                </form>

                                <!-- ############ SQL PHP-->
                               <?php
                        //Track
                        $page_track = 1;
                        $limit_track = 10;
                        $sql_track = "select trackid from vw_track_info where trackname like '%$search%'";
                        $r_track = mysqli_query($link, $sql_track);
                        $a_track = mysqli_fetch_all($r_track);
                        $total_track = mysqli_num_rows($r_track);
                        
                        
                        //Album
                        $page_album = 1;
                        $limit_album = 10;
                        $sql_album = "select albumid from vw_album_info where albumName like '%$search%'";
                        $r_album = mysqli_query($link, $sql_album);
                        $a_album = mysqli_fetch_all($r_album);
                        $total_album = mysqli_num_rows($r_album);
                        
                        //Artist
                        $page_artist = 1;
                        $limit_artist = 10;
                        $sql_artist = "select ArtistID from vw_artist_info where Artistname like '%$search%' ";
                        $r_artist = mysqli_query($link, $sql_artist);
                        $a_artist = mysqli_fetch_all($r_artist);
                        $total_artist = mysqli_num_rows($r_artist);
                        ?>
                                <?php if ($search!='KhongCoDuLieu') :?>
                                <div id="search-result" class="animated fadeIn">
                                    <p class="m-b-md"><strong><?php echo $total_track+$total_album+$total_artist ?></strong>  Results found for: <strong><?php echo $search ?></strong></p>
                                    <div class="row">
                                        <?php
                                        if ($total_track > 0) {
                                            $sql_listsearch_track = "select trackname,ArtistName,ImageFile,Note,TrackFile from vw_track_info where trackname like '%$search%' limit 0,4;";
                                            $r_list_track = mysqli_query($link, $sql_listsearch_track);
                                            $a_list_track = mysqli_fetch_all($r_list_track);
                                            ?>
                                            <div class="col-sm-6">
                                                <div class="row item-list item-list-sm item-list-by m-b">
                                            <?php
                                            foreach ($a_list_track as $key_track => $track) {
                                                $number_track = $key_track + 1 - ($page_track - 1) * $limit_track;
                                                ?> 
                                                        <div class="col-xs-12">
                                                            <div class="item r" data-id=<?php echo "item-$number_track"; ?> data-src=<?php echo "$track[4]"; ?>>
                                                                <div class="item-media ">
                                                                    <a href="track.detail.html" class="item-media-content" style="background-image: url(<?php echo '$track[2]' ?>);"></a>
                                                                </div>
                                                                <div class="item-info">
                                                                    <div class="item-title text-ellipsis">
                                                                        <a href="track.detail.html"><?php echo $track[0]; ?></a>
                                                                    </div>
                                                                    <div class="item-author text-sm text-ellipsis ">
                                                                        <a href="artist.detail.html" class="text-muted"><?php echo $track[1]; ?></a>
                                                                    </div>
                                                                    <div class="item-meta text-sm text-muted">
                                                                    </div>


                                                                </div>
                                                            </div>
                                                        </div>
                                                        <?php
                                                    }
                                                    ?>
                                                </div>
                                            </div>

                                            <?php
                                        }
                                        ?>


                                        <?php
                                        if ($total_artist > 0) {
                                            $sql_listsearch_artist = "select artistname,ImageFile,TotalTrack from vw_artist_info where Artistname like '%$search%' limit 0,4;";
                                            $r_list_artist = mysqli_query($link, $sql_listsearch_artist);
                                            $a_list_artist = mysqli_fetch_all($r_list_artist);
                                            ?>          
                                            <div class="col-sm-6">
                                                <div class="row item-list item-list-sm item-list-by m-b">
                                            <?php
                                            foreach ($a_list_artist as $key_artist => $artist) {
                                                $number_artist = $key_artist + 1 - ($start_artist - 1) * $limit_artist;
                                                ?> 
                                                        <div class="col-xs-12">
                                                            <div class="item">
                                                                <div class="item-media rounded ">
                                                                    <a href="artist.detail.html" class="item-media-content" style="background-image: url('<?php echo $artist[1]; ?>');"></a>
                                                                </div>
                                                                <div class="item-info ">
                                                                    <div class="item-title text-ellipsis">
                                                                        <a href="artist.detail.html"><?php echo $artist[0]; ?></a>
                                                                        <div class="text-sm text-muted"><?php echo $artist[2]; ?> songs</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <?php
                                                    }
                                                    ?>

                                                </div>
                                            </div>
                                            <?php
                                        }
                                        ?>
                                    </div>
                                </div>
                                
                                <?php endif;?>
                                
                             <div id="top-search" class="btn-groups">
                                    <strong class="text-muted">Hot searches: </strong>
                                    <?php
                                    $sql_type = "select typeid,typename from tb_type";
                                    $r_type = mysqli_query($link, $sql_type);
                                    $total_type = mysqli_num_rows($r_type);
                                    if ($total_type > 0):
                                        $a_type = mysqli_fetch_all($r_type);
                                        foreach ($a_type as $type) :
                                            ?>
                                            <a href="search.result.php?IPSearch=<?php echo $type[1] ?>" class="btn btn-xs white"><?php echo $type[1] ?></a> 
                                            <?php
                                        endforeach;
                                    endif;
                                    ?>


                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!-- ############ SEARCH END <--></-->
        <!-- ############ SHARE START -->
        <div id="share-modal" class="modal fade animate">
            <div class="modal-dialog">
                <div class="modal-content fade-down">
                    <div class="modal-header">

                        <h5 class="modal-title">Share</h5>
                    </div>
                    <div class="modal-body p-lg">
                        <div id="share-list" class="m-b">
                            <a href="" class="btn btn-icon btn-social rounded btn-social-colored indigo" title="Facebook">
                                <i class="fa fa-facebook"></i>
                                <i class="fa fa-facebook"></i>
                            </a>

                            <a href="" class="btn btn-icon btn-social rounded btn-social-colored light-blue" title="Twitter">
                                <i class="fa fa-twitter"></i>
                                <i class="fa fa-twitter"></i>
                            </a>

                            <a href="" class="btn btn-icon btn-social rounded btn-social-colored red-600" title="Google+">
                                <i class="fa fa-google-plus"></i>
                                <i class="fa fa-google-plus"></i>
                            </a>

                            <a href="" class="btn btn-icon btn-social rounded btn-social-colored blue-grey-600" title="Trumblr">
                                <i class="fa fa-tumblr"></i>
                                <i class="fa fa-tumblr"></i>
                            </a>

                            <a href="" class="btn btn-icon btn-social rounded btn-social-colored red-700" title="Pinterst">
                                <i class="fa fa-pinterest"></i>
                                <i class="fa fa-pinterest"></i>
                            </a>
                        </div>
                        <div>
                            <input class="form-control" value="http://plamusic.com/slug"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ############ SHARE END -->

        <!-- ############ LAYOUT END-->
    </div>

    <!-- build:js scripts/app.min.js -->
    <!-- jQuery -->
    <script src="libs/jquery/dist/jquery.js"></script>
    <!-- Bootstrap -->
    <script src="libs/tether/dist/js/tether.min.js"></script>
    <script src="libs/bootstrap/dist/js/bootstrap.js"></script>
    <!-- core -->
    <script src="libs/jQuery-Storage-API/jquery.storageapi.min.js"></script>
    <script src="libs/jquery.stellar/jquery.stellar.min.js"></script>
    <script src="libs/owl.carousel/dist/owl.carousel.min.js"></script>
    <script src="libs/jscroll/jquery.jscroll.min.js"></script>
    <script src="libs/PACE/pace.min.js"></script>
    <script src="libs/jquery-pjax/jquery.pjax.js"></script>

    <script src="libs/mediaelement/build/mediaelement-and-player.min.js"></script>
    <script src="libs/mediaelement/build/mep.js"></script>
    <script src="scripts/player.js"></script>

    <script src="scripts/config.lazyload.js"></script>
    <script src="scripts/ui-load.js"></script>
    <script src="scripts/ui-jp.js"></script>
    <script src="scripts/ui-include.js"></script>
    <script src="scripts/ui-device.js"></script>
    <script src="scripts/ui-form.js"></script>
    <script src="scripts/ui-nav.js"></script>
    <script src="scripts/ui-screenfull.js"></script>
    <script src="scripts/ui-scroll-to.js"></script>
    <script src="scripts/ui-toggle-class.js"></script>
    <script src="scripts/ui-taburl.js"></script>
    <script src="scripts/app.js"></script>
    <script src="scripts/site.js"></script>
    <script src="scripts/ajax.js"></script>
    <!-- endbuild -->
</body>
</html>
