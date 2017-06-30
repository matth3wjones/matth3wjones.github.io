$(document).ready(function() {
  $(".post").click(function(){
    window.location = $(this).find(".postTitle").find("a").attr("href");
  })
})
