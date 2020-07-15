$(document).ready(function () {

// if the user clicks on the like button ...
    $('.like-btn').on('click', function () {
        var trackid = $(this).data('id');
        $clicked_btn = $(this);
        if ($clicked_btn.hasClass('fa-heart-o')) {
            action = 'like';
        } else if ($clicked_btn.hasClass('fa-heart')) {
            action = 'unlike';
        }
        $.ajax({
            url : 'search.result.php',
            type: 'post',
            data: {
                'action': action,
  		'trackid': trackid
            },
            success: function (data) {
                res = JSON.parse(data);
                if (action == "like") {
                    $clicked_btn.removeClass('fa-heart-o');
                    $clicked_btn.addClass('fa-heart');
                } else if (action == "unlike") {
                    $clicked_btn.removeClass('fa-heart');
                    $clicked_btn.addClass('fa-heart-o');
                }
                // display the number of likes 
                $clicked_btn.siblings('span.likes').text(res.likes);


            }
        });

    });

});