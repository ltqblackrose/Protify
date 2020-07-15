(function ($) {
    'use strict';

    // btn more
    $(document).on('click.site', '.btn-more', function (e) {
        var $dp = $(this).next('.dropdown-menu');
        var id = $(this).attr('data-id');
        localStorage.setItem('id', id);
        if ($dp.html() == "") {
            $dp.append('<a class="dropdown-item" href="" onclick = "ajaxqueue()"><i class="fa fa-plus fa-fw text-left"></i> Add to Queque</a><a class="dropdown-item" href=""><i class="fa fa-music fa-fw text-left"></i> Add to Playlist</a><div class="dropdown-divider"></div><a class="dropdown-item" href="#"><i class="fa fa-share-alt fa-fw text-left"></i> Share</a>');
        }


        if ((e.pageY + $dp.height() + 60) > $('body').height()) {
            $dp.parent().addClass('dropup');
        }

        if (e.pageX < $dp.width()) {
            $dp.removeClass('pull-right');
        }

    });

    $(document).on('click.site', '#search-result a', function (e) {
        $(this).closest('.modal').modal('hide');
    });

}

)(jQuery);
function ajaxqueue() {

    alert(localStorage.getItem('id'));
    $.ajax({

        url: "addtoqueue.php",
        type: "post",
        dateType: "text",
        data: {

            id: localStorage.getItem('id'),

        }

    });
}
;

