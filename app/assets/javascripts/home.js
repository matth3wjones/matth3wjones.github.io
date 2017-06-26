

$(document).ready(function() {
  $("#name").mouseover(function(){
    $("#name").css("color", "#fff");
    $("#headlineDiv").css("background-color", "#000");
  });

  $("#name").mouseout(function(){
    $("#name").css("color", "#000");
    $("#headlineDiv").css("background-color", "#fff")
  });

})
