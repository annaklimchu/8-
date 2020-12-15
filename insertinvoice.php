<?php

$mysqli = new mysqli('localhost', 'root', '', 'razhunki'); // Створюємо нове підключення з назвою $mysqli за допомогою створення об'єта класу mysqli. Параметри підключення по порядку: сервер, логін, пароль, БД
$mysqli->set_charset("utf8"); // Встановлюємо кодування utf8

if (mysqli_connect_errno()) {
    printf("Підключення до сервера не вдалось. Код помилки: %s\n", mysqli_connect_error());
    exit;
}

$id = $_POST['invid'];
$idusr = $_POST['iduser'];
$idp = $_POST['idp'];
$stoimost = $_POST['stoimost'];

$sql = "INSERT INTO `invoice`(`invid`, `iduser`, `idp`, `stoimost`) VALUES ('$id','$idusr','$idp','$stoimost')";


if($mysqli->query($sql)){
    echo "Рядок вставлено успішно";
    }
else
    {
        echo "Error" . $sql . "<br/>" . $mysqli->error;
    }



/*Закриваємо з'єднання*/
$mysqli->close();

include("showsInvoice.php")
?>
