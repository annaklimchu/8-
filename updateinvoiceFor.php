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

<form action="updateinvoice.php" method="post">
        <label>ІД рядка який вставляємо</label><input name="invid" type="int"><br>
        <label>Змінюємо значення iд користувача</label><input name="iduser" type="int"><br>
        <label>Змінюємо значення ід продукта</label><input name="idp" type="int"><br>
		<label>Змінюємо значення cтоімості</label><input name="stoimost" type="decimal"><br>
	
        <input type="submit" value="Змінюємо рядок">
</form>

</body>
</html>