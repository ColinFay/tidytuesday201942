$(function(){
  $( ".row" ).hide();
  $( ".row" ).first().show();
  $( ".nav-link" ).first().addClass("active");
  var h = parseInt($('nav').outerHeight()) + 30;
  $(".row").css("padding-top", h + "px");
  
  
})