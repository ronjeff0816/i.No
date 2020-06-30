$(function(){

  var html1 = `<img id="preview1"></img>`
  var html2 = `<img id="preview2"></img>`
  var html3 = `<img id="preview3"></img>`
  var html4 = `<img id="preview4"></img>`
  var html5 = `<img id="preview5"></img>`

  $('#image1').on('change', function (e) {
    var reader = new FileReader();
    reader.onload = function (e) {
        $("#preview1").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
    $( "#deleteBox1" ).prop( "checked", false );
  });

  $('#image2').on('change', function (e) {
    var reader = new FileReader();
    reader.onload = function (e) {
        $("#preview2").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
    $( "#deleteBox2" ).prop( "checked", false );
  });

  $('#image3').on('change', function (e) {
    var reader = new FileReader();
    reader.onload = function (e) {
        $("#preview3").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
    $( "#deleteBox3" ).prop( "checked", false );
  });

  $('#image4').on('change', function (e) {
    var reader = new FileReader();
    reader.onload = function (e) {
        $("#preview4").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
    $( "#deleteBox4" ).prop( "checked", false );
  });

  $('#image5').on('change', function (e) {
    var reader = new FileReader();
    reader.onload = function (e) {
        $("#preview5").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
    $( "#deleteBox5" ).prop( "checked", false );
  });

  // 削除機能

  // $('#delete1').click(function() {
  //   $("#preview1").remove();
  //   $("#image1").after(html1);
  //   $( "#deleteBox1" ).prop( "checked", true );
  // });

  // $('#delete2').click(function() {
  //   $("#preview2").remove();
  //   $("#image2").after(html2);
  //   $( "#deleteBox2" ).prop( "checked", true );
  // });

  // $('#delete3').click(function() {
  //   $("#preview3").remove();
  //   $("#image3").after(html3);
  //   $( "#deleteBox3" ).prop( "checked", true );
  // });

  // $('#delete4').click(function() {
  //   $("#preview4").remove();
  //   $("#image4").after(html4);
  //   $( "#deleteBox4" ).prop( "checked", true );
  // });

  // $('#delete5').click(function() {
  //   $("#preview5").remove();
  //   $("#image5").after(html5);
  //   $( "#deleteBox5" ).prop( "checked", true );
  // });

});
