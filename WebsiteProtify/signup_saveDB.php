<?php
session_start();
include_once 'PHPLibrary/connectDB_protify.php';
include_once 'PHPLibrary/FunctionPHP.php';

//Check id
if (isset($_SESSION["id"]) == TRUE) {
    header("location:index.php?status='true'");
    $message = "You have logined ! Please sign out first !";
    echo "<script type='text/javascript'>alert('$message');</script>";
}
?>
<!DOCTYPE html>

<html>
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
        <?php
        if (isset($_GET["btnOK"]) == FALSE) :
            header("location:signup.php");
            exit();
        endif;

        $userid = $_GET["txtUserID"];
        $pass = $_GET["txtUserPass"];
        $email = $_GET["txtUserEmail"];


        $sql_check = "select userid,email from tb_user where userid='$userid' or email='$email'";
        $r_check = mysqli_query($link, $sql_check);
        $total_check = mysqli_num_rows($r_check);
        if ($total_check > 0) :
            ?>
            <div class="app dk" id="app">

                <!-- ############ LAYOUT START-->

                <div class="padding">
                    <div class="navbar">
                        <div class="pull-center">
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
                    </div>
                </div>
                <div class="b-t">
                    <div class="center-block w-xxl w-auto-xs p-y-md text-center">
                        <div class="p-a-md">
                            <div>
                                <a href="#" class="btn btn-block indigo text-white m-b-sm">
                                    <i class="fa fa-facebook pull-left"></i>
                                    Sign up with Facebook
                                </a>
                                <a href="#" class="btn btn-block red text-white">
                                    <i class="fa fa-google-plus pull-left"></i>
                                    Sign up with Google+
                                </a>
                            </div>
                            <div class="m-y text-sm">
                                OR 
                            </div>
                            <div class="m-y text-sm">
                                <?php
                                $sql_check_id = "select userid from tb_user where userid='$userid'";
                                $r_check_id = mysqli_query($link, $sql_check_id);
                                $total_check_id = mysqli_num_rows($r_check_id);
                                if ($total_check_id > 0):
                                    ?>
                                    <span style='color:white;font-weight:700;font-size:15px;width:296px;height:70px;margin-bottom:50px;width:296px;padding:5px 0px;background-color:red;'>&nbsp;&nbsp;&nbsp;UserID is exist! Please type again!&nbsp;&nbsp;&nbsp; </span>
                                <?php endif; ?>
                            </div>
                            <div class="m-y text-sm">            
                                <?php
                                $sql_check_email = "select userid from tb_user where email='$email'";
                                $r_check_email = mysqli_query($link, $sql_check_email);
                                $total_check_email = mysqli_num_rows($r_check_email);
                                if ($total_check_email > 0):
                                    ?>


                                    <span style='color:white;font-weight:700;font-size:15px;width:296px;height:70px;margin-bottom:50px;width:296px;padding:5px 0px;background-color:red;'>&nbsp;&nbsp;&nbsp;Email is exist! Please type again!&nbsp;&nbsp;&nbsp; </span>
                                <?php endif; ?>
                            </div>

                            <form name="form_signup" action="signup_saveDB.php">
                                <div class="form-group">
                                    <input type="text" id="txtUserID" name="txtUserID" class="form-control" placeholder="UserName" v autofocus required pattern="[a-zA-z0-9]{6,30}"title="Must be contain only letters,numbers, at least 6 and less than 30 characters">
                                </div>
                                <div class="form-group">
                                    <input type="email" id="txtUserEmail" name="txtUserEmail" class="form-control" placeholder="Email"  required>
                                </div>
                                <div class="form-group">
                                    <input type="password" id="txtUserPass" name="txtUserPass" class="form-control" placeholder="password"  required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,30}"title="Must contain at least one  number and one uppercase and lowercase letter, and at least 6 and less than 30 character">
                                </div>
                                <div class="m-b-md text-sm">
                                    <span class="text-muted">By clicking Sign Up, I agree to the</span> 
                                    <a href="#">Terms of service</a> 
                                    <span class="text-muted">and</span> 
                                    <a href="#">Policy Privacy.</a>
                                </div>
                                <button type="submit" name="btnOK" class="btn btn-lg black p-x-lg" onclick="return confirm('Are you sure ?')">Sign Up</button>
                            </form>
                            <div class="p-y-lg text-center">
                                <div>Already have an account? <a href="signin.html" class="text-primary _600">Sign in</a></div>
                            </div>
                        </div>
                    </div>
                </div>

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

        <?php
        else :
            //Register new Account
            $sql_user = "insert into tb_user(userid,password,email,role) values ('$userid','$pass','$email',0)";
            $r_user = mysqli_query($link, $sql_user);
            
            if ($r_user == TRUE ) :
                //Add 3 playlist for new account
                $playlistname1 = $userid . "\'s first playlist";
                $playlistname2 = $userid . "\'s second playlist";
                $playlistname3 = $userid . "\'s third playlist";

                $sql_playlist1 = "insert into tb_playlist (userid,playlistname) values ('$userid','$playlistname1')";
                $r_playlist1 = mysqli_query($link, $sql_playlist1);

                $sql_getplaylistID1= "select playlistid from tb_playlist where userid='$userid' and playlistname='$playlistname1'" ;
                $q1= mysqli_query($link, $sql_getplaylistID1);
                $r1= mysqli_fetch_all($q1);
                $playlist1=$r1[0];
                $playlistid1=$playlist1[0];
                $sql_add_playlist1 = "insert into tb_playlist_track (playlistid,trackid) values ($playlistid1,1)";
                $q_add_playlist1= mysqli_query($link, $sql_add_playlist1);
                
                $sql_playlist2 = "insert into tb_playlist (userid,playlistname) values ('$userid','$playlistname2')";
                $r_playlist2 = mysqli_query($link, $sql_playlist2);

                $sql_getplaylistID2= "select playlistid from tb_playlist where userid='$userid' and playlistname='$playlistname2'" ;
                $q2= mysqli_query($link, $sql_getplaylistID2);
                $r2= mysqli_fetch_all($q1);
                $playlist2=$r2[0];
                $playlistid2=$playlist2[0];
                $sql_add_playlist2 = "insert into tb_playlist_track (playlistid,trackid) values ($playlistid2,1)";
                $q_add_playlist2= mysqli_query($link, $sql_add_playlist2);
                
                $sql_playlist3 = "insert into tb_playlist (userid,playlistname) values ('$userid','$playlistname3')";
                $r_playlist3 = mysqli_query($link, $sql_playlist3);

                $sql_getplaylistID3= "select playlistid from tb_playlist where userid='$userid' and playlistname='$playlistname1'" ;
                $q3= mysqli_query($link, $sql_getplaylistID3);
                $r3= mysqli_fetch_all($q3);
                $playlist3=$r3[0];
                $playlistid3=$playlist3[0];
                $sql_add_playlist3 = "insert into tb_playlist_track (playlistid,trackid) values ($playlistid3,1)";
                $q_add_playlist3= mysqli_query($link, $sql_add_playlist3);
                
                //Add the Default Website Track to queue for new account
                $sql_queue = "insert into tb_queue_track (userid,trackid) values ('$userid',1)";
                $r_queue = mysqli_query($link, $sql_queue);

                //kiem tra xem co dong du lieu dc tra ve tu cau linh Select SQL ?
                if ($r_playlist1 == TRUE && $r_playlist2 == TRUE && $r_playlist3 == TRUE && $r_queue == TRUE) :
                    header("location:signin.php");
                    exit();
                else :
                    
                    header("location:505.html");
                    exit();
                endif;
                exit();
            else :
                
                header("location:505.html");
                exit();
            endif;
        endif;
        ?>


    </body>
</html>    