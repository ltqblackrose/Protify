$(document).ready(function () {
    $("#addnew").click(function () {
        var id = $(this).attr('data-id');
        alert(id);
        $.ajax({

            url: "deleteMember.php",
            type: "post",
            dateType: "text",
            data: {

                id: id,

            }

        });
    });

});