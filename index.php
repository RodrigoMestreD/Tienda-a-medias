<!DOCTYPE html>
<html lang="es">
    <?php
        session_start();
        include_once("./php/config_BD.php");
    ?>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Home - E-Store</title>
        <!-- icono pestaña-->
        <link rel="icon" type="image/x-icon" href="img/favicon.ico"/>
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- CSS-->
        <link rel="preload" href="./css/styles.css" as="style">
        <link rel="stylesheet" href="./css/styles.css">
        <link rel="preload" href="./css/index_styles.css" as="style">
        <link href="./css/index_styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Barra de navegación-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="./index.php">E-Store</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">About</a></li>
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Carrito
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!--Banner-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">E-Store</h1>
                    <p class="lead fw-normal text-white-50 mb-0">La tienda Electronica para comprar tus Electronicos</p>
                </div>
            </div>
        </header>
        <!--Contenido-->
        <h3></h3>
        <main class="principal">
            <!-- lista de productos automatica -->
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
        <footer class="py-5 bg-dark">
        <div class="container"><a class="m-0 text-white" href="">Contactanos</a></div>
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/index_scripts.js"></script>
    </body>
</html>
