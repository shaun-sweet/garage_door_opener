$(document).ready(function() {
  $(".garage-button").on("click", function(e) {
    e.preventDefault();
    $.ajax({
      url: 'http://pi.shaunsweet.com/open.php',

    }).done(function(){
      
    })
  })
})