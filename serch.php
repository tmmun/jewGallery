<?php
//header("Content-type=text/html;charset=utf-8");
//header('Content-type:text/json');
//$servername = "sql212.byetcluster.com";
//$username = "b32_33243846";
//$password = "89889178456t";
//$dbname = "b32_33243846_tmmun";

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tmmun";

// Создать соединение
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Ошибка подключения:" . $conn->connect_error);
} 

mysqli_query($conn, 'set names utf8');
$sql = "SELECT urll, category, weightt, gems, metal FROM baseSerch";
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