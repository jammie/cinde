$(document).ready(function() {
  $('body').prepend("<div id='notification'></div>");
  $('#errorExplanation').detach().appendTo("#notification").delay(2000).fadeOut('slow');
});
