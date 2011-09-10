$(document).ready(function() {
  if($('#login_box').size() > 0){
    $('body').prepend("<div id='notification'></div>");
    $('#errorExplanation').detach().appendTo("#notification").delay(2000).fadeOut('slow');
  }
});
