$(function(){
    $(".post-rating").on("click",function(){
        var post_id=$(this).data("id");
        $.ajax({
            url: "/post/rating/"+post_id,
            method: "GET"
        }).done(function(response){
            console.log(response);
        })
    })

});