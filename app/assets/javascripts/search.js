$(function() {
  $(".search-input").on("keyup", function() {
    var input = $(".search-input").val();
    $.ajax({
      type: 'GET',
      url: '/photos/search',
      data: { keyword: input},
      dataType: 'json'
    })
    .done(function(photo) {
      console.log(photo);
    })
  });
});