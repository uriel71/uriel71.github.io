<?php
    $nombre = $_GET["nombre"];
    echo "nombre; " .$nombre . "<br><br>";

    $edad =$_GET["edad"];
    echo "edad; " . $edad . "<br><br>";
    
    $escuela = $_GET["escuela"];
    echo "escuela; " .$escuela . "<br><br>";

    $fecha_ingreso= $_GET["fecha_ingreso"];
    echo "fecha de ingreso " . $fecha_ingreso . "<br><br>";

    $direccion = $_GET["direccion"];
    echo "direccion; " . $direccion . "<br><br>";

    if($edad >= 18){
        echo "Es mayor de edad" . "<br><br>";
    }else {
        echo "Es menor de edad" . "<br><br>";
    }

    if($escuela == "CETIS107"){
    }
    
?>