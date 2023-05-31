<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>practica  PHP-integracion con html</title>
</head>
<body>
    <h1>usando PHP dentro de un html</h1>
    <?php
    $alumno = "josepepe";
    $edad = 23;
    $escuela = "cetis107";
    $especialidad = "programacion";
    ?>

    <form action="">
        <label for="">Nombre del alumno</label>
        <input type="text" value=<?php echo $alumno; ?>>
        <label for="">Edad</label>
        <input type="number" value=<?php echo $edad; ?>>

        <input type="submit" value=<?php echo "incribirse a".$especialidad.""; ?>>
    </form>
    <br><br>

    <h2>Calificaciones</h2><hr>
    Calculo diferencial: <?php echo rand(5,10); ?> <br>
    fisica: <?php echo rand(5,10); ?> <br>
    Ecologia: <?php echo rand(5,10); ?> <br>
    ingles: <?php echo rand(5,10); ?> <br>
    programacion: <?php echo rand(5,10); ?> <br>

    promedio: <?php echo rand(5,10); ?> <br>
</body>
</html>