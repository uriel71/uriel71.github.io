<?php

    $nombre = $_POST["nombre"];
    $calificacion = 0;

    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta6"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta8 = $_POST["pregunta8"];
    $pregunta9 = $_POST["pregunta9"];
    $pregunta10 = $_POST["pregunta10"];

    /* "<img src='correcta.png' width='3%'><hr>" */
    /* "<img src='incorrecta.png' width='3%'><hr>" */

    echo "<h3>Pregunta 1, respuesta seleccionado: (".$pregunta1.")</h3>";

    if($pregunta1 == "Sporting Lisboa"){
        $calificacion ++;
        echo "<img src='correcta.png' width='3%'><hr>";
    }else{
        echo "Tu respuesta es incorrecta, la correcta es la de Sporting Lisboa" . "<hr>";
        echo "<img src='incorrecta.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 2, respuesta seleccionado: (".$pregunta2.")</h3>";

    if($pregunta2 == "Paris Saint Germain"){
        $calificacion ++;
        echo "<img src='correcta.png' width='3%'><hr>";
    }else{
        echo "Tu respuesta es incorrecta, la correcta es la de Paris Saint Germain" . "<hr>";
        echo "<img src='incorrecta.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 3, respuesta seleccionado: (".$pregunta3.")</h3>";

    if($pregunta3 == "Todos los anteriores"){
        $calificacion ++;
        echo "<img src='correcta.png' width='3%'><hr>";
        
    }else{
        echo "Tu respuesta es incorrecta, la correcta es la de Todos los anteriores" . "<hr>";
        echo "<img src='incorrecta.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 4, respuesta seleccionado: (".$pregunta4.")</h3>";

    if($pregunta4 == "Dani Alves"){
        $calificacion ++;
        echo "<img src='correcta.png' width='3%'><hr>";
    }else{
        echo "Tu respuesta es incorrecta, la correcta es Dani Alves" . "<hr>";
        echo "<img src='incorrecta.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 5, respuesta seleccionado: (".$pregunta5.")</h3>";

    if($pregunta5 == "Club America"){
        $calificacion ++;
        echo "<img src='correcta.png' width='3%'><hr>";
    }else{
        echo "Tu respuesta es incorrecta, la correcta es la de Club America" . "<hr>";
        echo "<img src='incorrecta.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 6, respuesta seleccionado: (".$pregunta6.")</h3>";

    if($pregunta6 == "Queretaro"){
        $calificacion ++;
        echo "<img src='correcta.png' width='3%'><hr>";
    }else{
        echo "Tu respuesta es incorrecta, la correcta es la de Queretaro" . "<hr>";
        echo "<img src='incorrecta.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 7, respuesta seleccionado: (".$pregunta7.")</h3>";

    if($pregunta7 == "Italia"){
        $calificacion ++;
        echo "<img src='correcta.png' width='3%'><hr>";
    }else{
        echo "Tu respuesta es incorrecta, la correcta es la de Italia" . "<hr>";
        echo "<img src='incorrecta.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 8, respuesta seleccionado: (".$pregunta8.")</h3>";

    if($pregunta8 == "Mazatlan"){
        $calificacion ++;
        echo "<img src='correcta.png' width='3%'><hr>";
    }else{
        echo "Tu respuesta es incorrecta, la correcta es la de Mazatlan" . "<hr>";
        echo "<img src='incorrecta.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 9, respuesta seleccionado: (".$pregunta9.")</h3>";

    if($pregunta9 == "Mexico gano a Brasil"){
        $calificacion ++;
        echo "<img src='correcta.png' width='3%'><hr>";
    }else{
        echo "Tu respuesta es incorrecta, la correcta es la de Mexico gano a Brasil" . "<hr>";
        echo "<img src='incorrecta.png' width='3%'><hr>";
    }

    echo "<h3>Pregunta 10, respuesta seleccionado: (".$pregunta10.")</h3>";

    if($pregunta10 == "Uruguay a Argentina"){
        $calificacion ++;
        echo "<img src='correcta.png' width='3%'><hr>";
    }else{
        echo "Tu respuesta es incorrecta, la correcta es la de Uruguay a Argentina" . "<hr>";
        echo "<img src='incorrecta.png' width='3%'><hr>";
    }

    if($calificacion >= 0 && $calificacion<=5){
        echo "<h3>Calificacion:".$calificacion.", No aprobaste" .$nombre.", burro </h3>";
    }else if ($calificacion >= 6 && $calificacion<=10)
        echo "<h3>Calificacion: ".$calificacion." Felicidades Aprobaste :D";

?>
    