<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 8</title>
    <link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
    <div class="container">
        <h1>Juego de la loteria</h1><hr>
        <form action="practica8.php" method="POST">
            <input type="submit" value="Dar carta" name="carta" class="btns btn-primary"><hr>
            <div class="row">
                <div class="col-6">
                    <?php
                      //pintar carta 1
                        for($i=0; $i<16; $i++){
                                $numero = rand(1,54);
                                echo "<img src = 'fotos_loteria/".$numero.".jpeg' class='img-tumbnail' width='25%'>";
                        }
                    ?>
                </div>
                <div class="col-6">
                    <?php
                      //pintar carta 2
                        for($i=0; $i<16; $i++){
                                $numero = rand(1,54);
                                echo "<img src = 'fotos_loteria/".$numero.".jpeg' class='img-tumbnail' width='25%'>";
                        }
                    ?>
                </div>
            </div>
        </form>
    </div>
    
</body>
</html>