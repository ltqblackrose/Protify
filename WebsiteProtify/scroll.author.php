<?php
session_start();
include_once 'PHPLibrary/connectDB_protify.php';
?>          
                                 
                                             <?php
                                             $sql_artist = "select Artistid,artistname,ImageFile,totalTrack from vw_artist_info LIMIT 4,4";
                                             $r_artist = mysqli_query($link, $sql_artist);
                                             $a_artist = mysqli_fetch_all($r_artist);
                                             ?>

                                        <div class="row row-lg">
<?php
foreach ($a_artist as $key => $artist) {
    ?>
                                                <div class="col-xs-4 col-sm-4 col-md-3">   

                                                    <div class="item">
                                                        <div class="item-media rounded ">
                                                            
                                                            <a href="artist.detail.php?artistid=<?php echo $artist[0]; ?>" class="item-media-content" style="background-image: url('<?php echo $artist[2] ?>');"></a>
                                                        </div>
                                                        <div class="item-info text-center">
                                                            <div class="item-title text-ellipsis">
                                                                <a href="artist.detail.php?artistid=<?php echo $artist[0]; ?>"> <?php echo $artist[1] ?></a>
                                                                <div class="text-sm text-muted"><?php echo $artist[3] ?> songs</div>
                                                            </div>
                                                        </div>
                                                    </div> 

                                                </div>
    <?php
}
?>
                                        </div>
                                      <a href="scroll.author1.php" class="btn btn-sm white rounded jscroll-next">Show More</a>