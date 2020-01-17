<!DOCTYPE html>
<head>
  <title>Image Preview Upload</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="mycss.css"></script>

</head>
<body>
  <h4>1.hello</h4>
  <!--上傳圖片的按鈕-->
  <input id="file" type="file"/>

  <!--預覽區塊-->
  <div id="myid">
    hello
  </div>
  <img id="demo"/ >

  <script>
    $('#file').change(function() {
      var file = $('#file')[0].files[0];
      var reader = new FileReader;
      reader.onload = function(e) {
        $('#demo').attr('src', e.target.result);
      };
      reader.readAsDataURL(file);
    });
  </script>

  <h4>2.</h4>
  <input accept="image/*" id="uploadImage" type="file">
  <img id="img" src="" style="filter: drop-shadow(rgb(255, 255, 255) 0px 0px 1px) drop-shadow(rgb(255, 255, 255) 0px 0px 1px) brightness(0.75);">
  <script>
    $("#uploadImage").change(function(){
      readImage( this );
    });

    function readImage(input) {
      if ( input.files && input.files[0] ) {
        var FR= new FileReader();
        FR.onload = function(e) {
        //e.target.result = base64 format picture
        $('#img').attr( "src", e.target.result );
      };       
      FR.readAsDataURL( input.files[0] );
    }
  }
</script>

<h4>3.</h4>

<form method="post" action="image_proc.php">
  <input type="hidden" name="imagestring">
  <input accept="image/*" id="previewImage" type="file">
  <input type="submit" name="submit" id="submit"  />
  <br />
  <img id="show_image" src="">
</form>


<script>
  var imageProc = function (input) {
    if (input.files && input.files[0]) {
// 建立一個 FileReader 物件
var reader = new FileReader();
// 當檔案讀取完後，所要進行的動作
reader.onload = function (e) {
  // 顯示圖片
  $('#show_image').attr("src", e.target.result).css("height", "500px").css("width", "500px");
  // 將 DataURL 放到表單中
  $("input[name='imagestring']").val(e.target.result);
};
reader.readAsDataURL(input.files[0]);
}
}
$(document).ready(function() {
// 綁定事件
$("#previewImage").change(function () {
 readImage(this);
});
});

</script>

</body>