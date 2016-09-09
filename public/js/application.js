$(document).ready(function() {

  $("#search-form").on("submit", function(e){
    e.preventDefault();
    $("#search-status").text("Searching")
    $form = $(this)
    data = $(this).serialize();
    console.log(data);
    $.get( "/searches", data )
      .done(function( response ) {
        $("#search-status").text("Results:")
        $("#search-list").html(response).show('slow');
      });
    });
});
