<?php
    session_start();
    include_once("./php/config_BD.php");
?>

<!DOCTYPE html>
<html lang="es">
    <head>
        <?php include("./php/head_html.php"); ?>
        <title>Home - E-Store</title>
        <!-- icono pestaña -->
        <link rel="icon" type="image/x-icon" href="../img/favicon.ico"/>
        <!-- CSS -->
        <link rel="preload" href="./css/styles.css" as="style">
        <link rel="stylesheet" href="./css/styles.css">
        <link rel="preload" href="./css/estilo_generico.css" as="style">
        <link rel="stylesheet" href="./css/estilo_generico.css">
    </head>
    <body>
        <!-- Barra de navegación -->
        <header>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <!-- responsividad del header, marca -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- marca -->
                    <a class="navbar-brand" href="./index.php">E-Store</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <!-- menú -->
                    <?php if (!isset($_SESSION['sesion_personal'])):?>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="./php/registro.php"><span class="glyphicon glyphicon-user"></span>Registrarse
                            </a>
                        </li>
                        <li>
                            <a href="./php/sesion.php"><span class="glyphicon glyphicon-log-in">
                                </span> Ingresar</a>
                        </li>
                    </ul>
                    <?php else: ?>
                    <ul class="nav navbar-nav">
                        <li class="navbar-text quita_margen">
                            <a href="./php/perfil.php" class="navbar-link">
                                Usuario:  
                                <u><?=$_SESSION['sesion_personal']['nombre']?></u>
                            </a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="./php/cerrar_sesion.php"><span class="glyphicon glyphicon-log-out"></span> Cerrar sesión</a>
                        </li>
                        <li>
                            <a href="./php/carrito.php"><span class="glyphicon glyphicon-shopping-cart"></span> Carrito de compras</a>
                        </li>
                    </ul>
                    <?php endif ?>
                </div>
            </div>
        </nav>
        </header>
        
        <div style="padding: 40px;"></div>
        
        <!-- Lista de productos -->
        <main class="principal">
        
            <?php
                // Crear conexión
                $con = mysqli_connect($db_hostname, $db_username, $db_password, $db_name);
                
                // verificar conexion con la BD
                if (mysqli_connect_errno()) :
                    echo "Failed to connect to MySQL: " . mysqli_connect_error();
                else:
                    $result = mysqli_query($con, "SELECT * FROM productos;");
                    $vacios=0;
                    while ($row = mysqli_fetch_array($result)): 
                        if($row['Cantidad_almacen']==0){
                            $vacios++;
                            continue;
                        }
                        ?>
                    <div class="card text-center">
                        <img class="card-img-top" src="./img/productos/<?= $row['Fotos'] ?>" alt="Card image cap">
                        <div class="card-body">

                            <hr class="solid">
                            <div id="altura_caja">
                                <p class="card-text">
                                    <?= $row['Nombre'] ?>
                                </p>
                            </div>
    
                            <hr class="solid">
                            <p class="card-text">$
                                <?= number_format(floatval($row['Precio']), 2, '.', ',') ?>
                            </p>
                        </div>
                        <?php if (isset($_SESSION['sesion_personal'])):?>
                            <a href="./php/info_producto.php?id=<?= $row['ID_producto'] ?>" class="btn btn-sm comprar">Comprar</a>
                        <?php else: ?>
                            <a href="./php/sesion.php" class="btn btn-sm comprar">Comprar</a>
                        <?php endif ?>
                    </div>
                    <?php
                    endwhile;
                    $n_relleno=(((int)mysqli_num_rows($result))-$vacios)%5;
                    if($n_relleno != 0):
                        for ($x=0; $x < 5-$n_relleno; $x++):?>
                        <div class="card" style="border: solid 1px transparent;">
                        </div>
                        <?php
                        endfor;
                    endif;
                    // cerrar conexión
                    mysqli_close($con);
                endif;
                ?>
        </main>
        <!-- Pie de pagina-->
        <div class="footer">
            <a><br>Copyright &copy; 2023</a>
        </div>
    </body>
</html>