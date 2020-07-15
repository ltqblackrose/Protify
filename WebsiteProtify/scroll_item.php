<?php
include './PHPLibrary/connectDB_protify.php';
include_once 'PHPLibrary/FunctionPHP.php';
$search = isset($_GET["IPSearch"]) ? $_GET["IPSearch"] : 'KhongCoDuLieu';
?>

<?php
$sql_tracktype = "SELECT DISTINCT TrackID, TrackName, Length, TrackFile, ImageFile, ArtistID, ArtistName, AlbumID FROM vw_track_info ORDER BY RAND() LIMIT 8";
$r_list_tracktype = mysqli_query($link, $sql_tracktype);
$a_list_tracktype = mysqli_fetch_all($r_list_tracktype);
?>
<div class="row row-lg">
    <?php
    foreach ($a_list_tracktype as $key_tracktype => $tracktype) {
        $number_tracktype = $key_tracktype + 1;
        ?>
        <div class="col-xs-4 col-sm-4 col-md-3">
            <div class="item r" data-id="item-<?php echo $number_tracktype + 6 ?>" data-src="<?php echo $tracktype[3] ?>">
                <div class="item-media ">
                    <a href="album.php?AlbumID=<?php echo $tracktype[7] ?>" class="item-media-content" style="background-image: url('<?php echo $tracktype[4] ?>');"></a>
                    <div class="item-overlay center">
                        <button  class="btn-playpause">Play</button>
                    </div>
                </div>
                <div class="item-info">
                    <div class="item-overlay bottom text-right">
                        <!-- Like Button-->
                        <form class= "btn-favorite" action="Like_Track_savedata.php" id='like_track_<?php echo $tracktype[0] ?>' >
                            <input style = "display:none" type="text" name="txtaction" <?php if (userLiked($tracktype[0])): ?> value= "unlike" <?php else : ?>value= "like" <?php endif ?> readonly>
                            <input style = "display:none" type="text" name="txttrackid" value="<?php echo $tracktype[0] ?>" readonly>
                            <input style = "display:none" type="text" name="txtsearch" value="<?php echo $search ?>" readonly>
                            <input style = "display:none" type="text" name="txturl" value="<?php echo getCurURL() ?>" readonly>
                            <input style = "display:none" type="text" name="txturlid" value="like_track_<?php echo $tracktype[0] ?>" readonly>           

                            <button type="submit " name="btnLike" style="background:transparent;border:none;"
                            <?php if (userLiked($tracktype[0])): ?> 
                                        class="likes fa fa-heart like-btn" 
                                    <?php else: ?> 
                                        class="likes fa fa-heart-o like-btn" 
                                    <?php endif ?> 
                                    data-id="<?php echo $tracktype[0] ?>"> 
                            </button>

                            <!--  Like Counter-->
        <!--                                                                            <span class="likes counter"><?php echo getLikes($tracktype[0]); ?> </span>-->
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
                                                <a class="dropdown-item" href="add_to_playlist_savedata.php?playlistid=<?php echo $list_playlist[0] ?>&url=<?php echo getCurURL() ?>&trackid=<?php echo $ $tracktype[0] ?>">Add to <?php echo $list_playlist[1] ?></a>

                                                <?php
                                            endforeach;
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
                        <a href="album.php?AlbumID=<?php echo $tracktype[7] ?>"><?php echo $tracktype[1] ?></a>
                    </div>
                    <div class="item-author text-sm text-ellipsis ">
                        <a href="artist.detail.php?ArtistID=<?php echo $tracktype[5] ?>" class="text-muted"><?php echo $tracktype[6] ?></a>
                    </div>

                </div>
            </div>
        </div>
        <?php
    }
    ?>
</div>


<div class="text-center">
    <a href="scroll_item.php" class="btn btn-sm white rounded jscroll-next">Show More</a>
</div>
