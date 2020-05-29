$(function() {
  
  var search_list = $(".contents__list-image");

  $(".search-input").on("keyup", function() {
    var input = $(".search-input").val();
    $.ajax({
      type: "GET",
      url: "/photos",
      data: { keyword: input },
      dataType: "json"
    })
    .done(function(photos) {
      search_list.empty();
      if (photos.length !== 0){
        photos.forEach(function (photo) {
          appendPhoto(photo);
        });
      }
      else {
        NoHTML("一致するツイートがありません");
      }
    })
  });
});