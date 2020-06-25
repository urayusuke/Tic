$(function() {
  
  var search_list = $(".contents__list-image");

  function appendPhoto(photo) {
    var html =`<a href="/photos/${photo.id}">
      <img src = ${photo.image.url}>
      </a>`
    search_list.append(html);
  }
  function NoHTML(miss) {
    var html = `<div class="name">${miss}</div>`
    search_list.append(html);
  }

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
        NoHTML("一致する画像がありません");
      }
    })
    .fail(function() {
      alert('error');
    });
  });
});