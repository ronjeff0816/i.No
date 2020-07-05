$(function() {
  $('.small-pics__five').on('click', function(e){
    e.preventDefault()
    var i = $(this).attr('src');
    $('.shop-pic').attr('src', i);
  })
});