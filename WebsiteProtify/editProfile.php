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
        <link rel="stylesheet" href="./css/styles/imageupload.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <style>


            input[type=text], select, textarea{
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                resize: vertical;
            }


            label {
                padding: 12px 12px 12px 0;
                display: inline-block;
            }

            input[type=submit] {
                background-color: #4CAF50;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                float: right;
            }
            input[type=password]{
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                resize: vertical;
            }

            input[type=submit]:hover {
                background-color: #45a049;
            }

            .col-25 {
                float: left;
                width: 25%;
                margin-top: 6px;
            }

            .col-75 {
                float: left;
                width: 75%;
                margin-top: 6px;
            }

            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
            @media screen and (max-width: 600px) {
                .col-25, .col-75, input[type=submit] {
                    width: 100%;
                    margin-top: 0;
                }
            }

        </style>
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
                                    <a href="discover.php">
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
                                            <!--                                            <b class="label"></b>-->
                                        </span>
                                        <span class="nav-icon">
                                            <i class="material-icons">
                                                queue
                                            </i>
                                        </span>
                                        <span class="nav-text">Queue</span>
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
                                    <span class="block _500 text-ellipsis"><?php echo $userid ?></span>
                                </span>
                            </a>
                            <div class="dropdown-menu w dropdown-menu-scale ">
                                <a class="dropdown-item" href="profile.php#profile">
                                    <span>Profile</span>
                                </a>
                                <a class="dropdown-item" href="profile.php#queue">
                                    <span>Queue</span>
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
                                <a class="dropdown-item" href="signin.html">Sign out</a>
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
                    <div class="page-bg" data-stellar-ratio="2" style="background-image: url('images/a3.jpg');"></div>
                    <div class="page-content">
                        <div class="padding b-b">
                            <?php
                            $sql = "SELECT * FROM tb_user WHERE UserID = '$userid'";
                            $query = mysqli_query($link, $sql);
                            $user = mysqli_fetch_row($query);
                            ?>
                            <div class="row-col">
                                <div class="col-sm w w-auto-xs m-b">
                                    <div class="item w rounded">
                                        <div class="item-media">
                                            <div class="item-media-content" style="background-image: url('database/images/User/<?php echo $user[7] ?>');"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm">
                                    <div class="p-l-md no-padding-xs">
                                        <h1 class="page-title">
                                            <span class="h1 _800"><?php echo $userid ?></span>
                                        </h1>
                                        <div class="item-action m-b">                                            
                                            <button class="btn btn-sm rounded primary" id="uploadimage">UPLOAD IMAGE</button>
                                          
                                        </div> 
                                        <div id="imageshow"  >
                                            <form class="formupload" action='upload.php' method='post' id="formupload" enctype='multipart/form-data'>
                                                <input type='file' id='fileUpload' class='hidden' name='file'/>
                                                <label for='fileUpload' class="btn btn-sm rounded primary">Select your image</label> 
                                                <button type = "button" class = "btn dark-white p-x-md" data-dismiss = "modal" id="cancel">Cancel</button>

                                                <div id="image-holder"  data-toggle="modal" data-target="#myModal"></div><button type='submit' name='submit' class="btn btn-sm rounded primary" style="display: none" id="upload">Upload</button>
                                            </form>

                                        </div>
                                        <div class="block clearfix m-b">                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row-col">
                            <div class="col-lg-9 b-r no-border-md">
                                <div class="padding p-y-0 m-b-md">

                                    <div class="tab-content">

                                        <div class="container">
                                            <form action="saveEditProfile.php
                                                  " method="POST">
                                                <div class="row">
                                                    <div class="col-25">
                                                        <label for="mail">Email</label>
                                                    </div>
                                                    <div class="col-75">
                                                        <input type="text" id="mail" name="mail" placeholder="Enter your new mail" value="<?php echo $user[2] ?>">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-25">
                                                        <label for="location">Location</label>
                                                    </div>
                                                    <div class="col-75">
                                                        <input type="text" id="location" name="location" placeholder="Enter your location" value="<?php echo $user[4] ?>">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-25">
                                                        <label for="story">Note
                                                        </label>
                                                    </div>
                                                    <div class="col-75">
                                                        <input type="text" id="story" name="story" placeholder="Enter your story" value="<?php echo $user[8] ?>">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-25">
                                                        <label for="web">Website</label>
                                                    </div>
                                                    <div class="col-75">
                                                        <input type="text" id="web" name="web" placeholder="Enter your website" value="<?php echo $user[5] ?>">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-25">
                                                        <label for="musicType">Music Type</label>
                                                    </div>
                                                    <div class="col-75">
                                                        <select id="musicType" name="musicType">
                                                            <option value="">Select type</option>
                                                            <?php
                                                            $sql = "SELECT typeName from tb_type";
                                                            $result = mysqli_query($link, $sql);
                                                            $type = mysqli_fetch_all($result);
                                                            foreach ($type as $music) {
                                                                ?>
                                                                <option value="<?php echo $music[0] ?>"><?php echo $music[0] ?></option>
                                                                <?php
                                                            }
                                                            ?>

                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-25">
                                                        <label for="Password">Password</label>
                                                    </div>
                                                    <div class="col-75">
                                                        <input type="password" id="Password" name="Password" placeholder="Enter your new password">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-25">
                                                        <label for="ConfirmPassword">Confirm Password</label>
                                                    </div>
                                                    <div class="col-75">
                                                        <input type="password" id="ConfirmPassword" name="ConfirmPassword" placeholder="Confirm your password">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-25">
                                                        <label for="old">Old Password</label>
                                                    </div>
                                                    <div class="col-75">
                                                        <input type="password" id="old" name="old" placeholder="Plaese enter your password to change !">
                                                    </div>
                                                </div>


                                                <div class="row" >
                                                    <input type="submit" name="btnSubmit" value="Change Profile">
                                                </div>
                                            </form>
                                        </div>


                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 w-xxl w-auto-md">
                                <div class="padding" style="bottom: 60px;" data-ui-jp="stick_in_parent">

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
                                <?php if ($search != 'KhongCoDuLieu') : ?>
                                    <div id="search-result" class="animated fadeIn">
                                        <p class="m-b-md"><strong><?php echo $total_track + $total_album + $total_artist ?></strong>  Results found for: <strong><?php echo $search ?></strong></p>
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
                                                                        <a href="album.php?albumid=<?php echo $track[5] ?>" class="item-media-content" style="background-image: url(<?php echo '$track[2]' ?>);"></a>
                                                                    </div>
                                                                    <div class="item-info">
                                                                        <div class="item-title text-ellipsis">
                                                                            <a href="album.php?albumid=<?php echo $track[5] ?>"><?php echo $track[0]; ?></a>
                                                                        </div>
                                                                        <div class="item-author text-sm text-ellipsis ">
                                                                            <a href="artist.detail.php?artistid=<?php echo $track[6] ?>" class="text-muted"><?php echo $track[1]; ?></a>
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
                                                                        <a href="artist.detail.php?artistid=<?php echo $artist[3]?>" style="background-image: url('<?php echo $artist[1]; ?>');"></a>
                                                                    </div>
                                                                    <div class="item-info ">
                                                                        <div class="item-title text-ellipsis">
                                                                            <a href="artist.detail.php?artistid=<?php echo $artist[3]?>"><?php echo $artist[0]; ?></a>
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

                                <?php endif; ?>

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
            <!-- ############ SEARCH END -->
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
        <script>
            $(document).ready(function () {
                $("#cancel").click(function () {
                    $("#imageshow").hide();
                });
                $("#uploadimage").click(function () {
                    $("#imageshow").show();

                });

            });
            $("#fileUpload").on('change', function () {

                if (typeof (FileReader) != "undefined") {

                    var image_holder = $("#image-holder");
                    image_holder.empty();

                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $("<img />", {
                            "src": e.target.result,
                            "class": "thumb-image image-responsive",
                            "style": "width:90%; margin: 5% auto 15px auto; "
                        }).appendTo(image_holder);

                    }
                    image_holder.show();
                    reader.readAsDataURL($(this)[0].files[0]);
                } else {
                    alert("This browser does not support FileReader.");
                }
                $("#upload").show();
            });
        </script>
        <script src="libs/jquery/dist/jquery.js"></script>
        <!-- Bootstrap -->
        <script src="libs/tether/dist/js/tether.min.js"></script>
<!--        <script src="libs/bootstrap/dist/js/bootstrap.js"></script>-->
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
