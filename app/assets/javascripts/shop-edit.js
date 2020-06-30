$(function(){

  // 1枚目
  $('#previewImage1').click(function() {
    $("#shop_shop_images_attributes_0_image").click();
  });

  $("#shop_shop_images_attributes_0_image").on('change', function (e) {
    var reader = new FileReader();
    reader.onload = function (e) {
        $("#previewImage1").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });



  // 2枚目
  $('#previewImage2').click(function() {
    $("#shop_shop_images_attributes_1_image").click();
  });

  $("#shop_shop_images_attributes_1_image").on('change', function (e) {
    var reader = new FileReader();
    reader.onload = function (e) {
        $("#previewImage2").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });



  // 3枚目
  $('#previewImage3').click(function() {
    $("#shop_shop_images_attributes_2_image").click();
  });

  $("#shop_shop_images_attributes_2_image").on('change', function (e) {
    var reader = new FileReader();
    reader.onload = function (e) {
        $("#previewImage3").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });



  // 4枚目
  $('#previewImage4').click(function() {
    $("#shop_shop_images_attributes_3_image").click();
  });

  $("#shop_shop_images_attributes_3_image").on('change', function (e) {
    var reader = new FileReader();
    reader.onload = function (e) {
        $("#previewImage4").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  

  // 5枚目
  $('#previewImage5').click(function() {
    $("#shop_shop_images_attributes_4_image").click();
  });

  $("#shop_shop_images_attributes_4_image").on('change', function (e) {
    var reader = new FileReader();
    reader.onload = function (e) {
        $("#previewImage5").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });


});
