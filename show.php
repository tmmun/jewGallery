<?php
//header("Content-type=text/html;charset=utf-8");
//header('Content-type:text/json');
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tmmun";

//$servername = "sql109.byetcluster.com";
//$username = "b14_33231855";
//$password = "898989ttt";
//$dbname = "b14_33231855_tmmun";

// Создать соединение
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Ошибка подключения:" . $conn->connect_error);
} 

mysqli_query($conn, 'set names utf8');
$sql = "SELECT urll, category FROM base";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // вывод данных
    while($row = $result->fetch_assoc()) {
        echo json_encode($row,JSON_UNESCAPED_UNICODE).' ';
    }
} else {
    echo "0 результатов";
}
$conn->close();
?>