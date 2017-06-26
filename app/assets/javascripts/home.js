$(document).ready(function() {
  $("#name").mouseover(function(){
    $("#name").css("color", "#fff");
    $("#headlineDiv").css("background-color", "#000");
    $("#description").css("color", "#64B5F6");
  });

  $("#name").mouseout(function(){
    $("#name").css("color", "#000");
    $("#headlineDiv").css("background-color", "#fff")
    $("#description").css("color", "#2196F3");
  });
})
