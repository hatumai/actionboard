$( document ).ready(function() {
    $("#comment_form").on('ajax:success', addComment);
});

function addComment(event, data) {

    var data = event.detail[0];
    $("#comment_form")[0].reset();
    $('#comment_container').prepend(data.comment);
}
