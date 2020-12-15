<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="Лабораторна робота, MySQL, з'єднання з базою даних">
    <meta name="description" content="Лабораторна робота. З'єднання з базою даних">
    <title>Вставка даних</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <?php
        include("showsInvoice.php")    
    ?>

<form action="deleteinvoice.php" method="post">
        <label >Ключ рядка, який видаляємо</label><input name="invid" type="int"><br>
        <input type="submit" value="Видалити рядок">
</form>

</body>
</html>