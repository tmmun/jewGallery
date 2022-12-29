<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Oswald&display=swap');
    </style>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <title>Document</title>
</head>

<body>
    <a href="index.php"><img id="go_home" src="images/logo0.png" alt=""></a>

    <div class="base_block">

        <div class="section" onclick="ccc()">
            <div id="img_count">
                <div id="text_coutn"></div>
            </div>
            <img class="section_item item1" src="images/1.svg" alt="">
        </div>
        <input placeholder="ВЕС" class="jew_input" id="weight">
        <div id="metal_jew" class="jewSwich" onclick="SerchMetalImg()">металл</div>
        <div id="type_jew" class="jewSwich" onclick="SerchTupeImg()">категория</div>
        <div id="gem_jew" class="jewSwich" onclick="SerchGemImg()">камень</div>
        <div id="jew_but" onclick="SerchJew()">поиск</div>
        <div id="img_create"></div>
    </div>

    <script src="appserch.js"></script>

</body>

</html>