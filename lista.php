<?php
require_once("autoloader.php");
$lista = new Listado("David","Todo","tareas.csv");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
<table class="greenTable">
    <thead>
        <tr>
            <th>ID</th>
            <th>título</th>
            <th>Vencimiento</th>
            <th colspan="2">&nbsp;</th>
        </tr>
    </thead>
    <tfoot>
        <tr>
            <td colspan="5">
            <a href="nueva.php">Añadir</a>
            </td>
        </tr>
    </tfoot>
    <tbody>
        <?php $lista->filas() ?>
    </tbody>
</table>

</body>
</html>
