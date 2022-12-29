<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="style.css">
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Dongle:wght@700&display=swap');
  </style>
  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
  <title>Document</title>
</head>

<body>
  <img onclick="showHide()" id="category" src="images/logo.svg" alt="">
  <div class="jal_base">
    <div class="section" onclick="ccc()">
      <div id="img_count">
        <div id="text_coutn"></div>
      </div>
      <img class="section_item item1" src="images/1.svg" alt="">
    </div>
  </div>

  <div id="set"></div>
  <div id="chain"></div>
  <div id="bracelets"></div>
  <div id="name"></div>
  <div id="other"></div>

  <br><a href="save.php"><img id="go_home" src="images/search.svg" alt=""></a><br><br>
</body>
<script src="app.js"></script>

</html>