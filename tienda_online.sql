-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2023 a las 00:10:28
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_compras`
--

CREATE TABLE `carrito_compras` (
  `ID_carrito` int(5) NOT NULL,
  `Usuario` int(5) NOT NULL,
  `Producto` int(5) NOT NULL,
  `Cantidad_producto` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_compras`
--

CREATE TABLE `historial_compras` (
  `ID_compra` int(5) NOT NULL,
  `Usuario` int(5) NOT NULL,
  `Producto` int(5) NOT NULL,
  `Cantidad_producto` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial_compras`
--

INSERT INTO `historial_compras` (`ID_compra`, `Usuario`, `Producto`, `Cantidad_producto`) VALUES
(1, 7, 3, 1),
(2, 3, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_producto` int(5) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(500) NOT NULL,
  `Fotos` varchar(20) NOT NULL,
  `Precio` int(10) NOT NULL,
  `Cantidad_almacen` int(5) NOT NULL,
  `Fabricante` varchar(20) NOT NULL,
  `Origen` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_producto`, `Nombre`, `Descripcion`, `Fotos`, `Precio`, `Cantidad_almacen`, `Fabricante`, `Origen`) VALUES
(1, 'Echo Dot (3ra generación) - negro', 'Bocina inteligente que se controla con la voz y te conecta con Alexa a través de red Wi-Fi.', 'Echo_Dot_3G.jpg', 999, 50, 'Amazon', 'Amazon México'),
(2, 'Echo Dot (5ta generación)', 'Bocina inteligente de ultima generación, con el mejor sonido hasta la fecha. Se controla con la voz y te conecta con Alexa a través de red Wi-Fi.', 'Echo_Dot_5G.jpg', 1299, 49, 'Amazon', 'Amazon México'),
(3, 'Kingstone USB DTX 128GB', 'USB marca Kingston con capacidad de almacenamiento de memoria de 128GB, con rendimiento USB 3.2 Gen 1, anillo para enganchar a llaveros y una práctica tapa para proteger el conector USB. ', 'Kingston_128GB.jpg', 164, 29, 'Kingston', 'SVENSKA'),
(4, 'Audífonos Inalámbricos Xiaomi 36103 Color Negro', 'Audífonos inalámbricos que se conectan con bluetooth, dispone de batería de larga duración en una solo carga para disfrutar de ellos al máximo. Además cuenta con estuche de carga USB C.', 'Audif_Xiaomi.jpg', 299, 20, 'Xiaomi', 'CLSM Direct'),
(5, 'TP-Link Tapo TC70, Cámara Wi-Fi de Seguridad Interior,1080P', 'La Tapo TC70 captura cada detalle con alta definición (Full HD1080P). Además cuenta con visión nocturna y detección de movimiento que puede ser notificada directamente a su Smartphone.', 'Cam_Tapo_TC70.jpg', 599, 30, 'TP-Link', 'Amazon México'),
(6, 'ROKU - Dispositivo de transmisión HD Express (Nuevo, 2022)', 'Cuenta con Cable HDMI de Alta Velocidad y Control Remoto Simple, configuración guiada y Wi-Fi rápido para conectarte a tus servicios de streaming favoritos.', 'ROKU_Express.jpg', 599, 100, 'ROKU', 'Amazon EU'),
(7, 'ADATA 128 GB Tarjeta de Memoria Micro SDXC con Adaptador', 'Memoria flash Micro SD, serie Premier, con 128 GB de capacidad de almacenamiento de memoria y transferencia rápida de hasta 100MD/s.', 'MicroSDXC_128GB.jpg', 179, 25, 'ADATA', 'Amazon México'),
(8, 'JBL Bocina Portátil GO 3 Bluetooth', 'Bocina inalámbrica  ultra portátil e impermeable para que disfrutes de tu música en todos partes.', 'BocinaPort_JBL.jpg', 799, 10, 'JBL', 'HQTech MX'),
(9, 'HUAWEI Band 8, Batería de Larga Duración - Negro', 'Reloj inteligente, cuenta con una pantalla de 1.47 Pulgadas y batería que dura hasta 14 días.', 'HUAWEI_Band8.jpg', 1199, 25, 'Huawei', 'Amazon México'),
(10, 'INIU Power Bank 20000mAh, Pila portátil USB C de 3 salidas', 'Batería portátil con carga rápida, cuenta con linterna y 3 salidas para cargar varios dispositivos al mismo tiempo.', 'PowerBank_INIU.jpg', 1399, 40, 'INIU', 'EAFU Technology'),
(11, 'Nuevo Apple AirTag', 'Dispositivo que gracias a la tecnología de banda ultra ancha te permite rastrear tus cosas y dispositivos en cuestión de segundos.', 'Apple_AirTag.jpg', 749, 60, 'Apple', 'Amazon México'),
(12, 'Logitech G203 Mouse Gaming con iluminación RGB Personalizable', 'Mouse para gaming con sensor de alta precisión con DPI ajustable. LYCGHTSYNC RGB personalizable con aprox. 16,8 millones de colores.', 'Mouse_Logitech.jpg', 599, 12, 'Logitech', 'Amazon México'),
(13, 'Sony EX14AP Audífonos con micrófono In-Ear manos libres, Negro', 'Audífonos alámbricos, ligeros para disfrutar de la experiencia definitiva de movilidad con música.', 'Audif_Sony.jpg', 228, 5, 'Sony', 'Amazon México'),
(14, 'Xiaomi Router Mi Wifi Range Extender Pro', 'Es un amplificador / repetidor WiFi con el que aprovecharás al máximo tu conexión de fibra de alta velocidad, ya que permitirá una transferencia de hasta 300Mbps.', 'Router_Xiaomi.jpg', 449, 15, 'Xiaomi', 'better pricer'),
(15, 'TESSAN Adaptador a enchufe europeo', 'Cargador de viaje tipo C con 4 salidas CA y 3 puertos USB.', 'Enchufe_TESSAN.jpg', 359, 30, 'TESSAN', 'Tessan Direct'),
(16, 'Soporte portátil de aluminio para Laptop ', 'Es plegable y ajustable, y cuenta con altura ergonómica para favorecer al ventilado de la Laptop.', 'Soporte_Laptop.jpg', 259, 7, 'Límite', 'COOLMX'),
(17, 'JBL Tune 510BT - Auriculares in-Ear inalámbricos con Sonido Purebass, Color Azul', 'Auriculares inalámbricos con sonido JBL Pure Bass y Wireless Bluetooth 5.0. Su batería puede durar hasta 40 horas y se recarga en tan solo 2 horas.', 'Auric_JBL.jpg', 1249, 55, 'JBL', 'HQTech MX'),
(18, 'Google Chromecast 3ra gen, Negro', 'Controla la TV desde tu tablet o Smartphone y convierte tu dispositivo Android o iOS en un centro de entretenimiento aún mejor.', 'Google_CC.jpg', 345, 125, 'Google', 'Amazon México'),
(19, 'TP-Link TL-WA850RE Repetidor de WiFi Extensor de Cobertura Inalámbrico Universal', 'Repetidor de señal WiFi para enchufe de pared, también cuenta con puerto Ethernet.', 'Rep_wifi.jpg', 295, 25, 'TP-Link', 'Amazon México'),
(20, 'ADATA Powerbank Batería Portátil Recargable P20000QCD, Color Negro', 'Cuenta con entradas USB tipo A y C, y con una gran batería de 20000 mAh.', 'PowerBank_ADATA.jpg', 519, 45, 'ADATA', 'imobile mexico'),
(21, 'Televisión inteligente Amazon Fire TV Serie 2 de 40” en HD de 1080p para ver la TV en vivo', 'Televisión de alta definición (HD) que permite ver tus películas y series favoritas en resolución 1080p, con HDR 10, HLG y audio Dolby Digital.', 'TV_int.jpg', 5649, 13, 'Amazon', 'Amazon México'),
(22, 'Laptop HP EliteBook 830 G6, Windows 11 Pro 64 bits (reacondicionada)', 'Laptop HP con pantalla FHD de 13.3 pulgadas, procesador Intel Core i7-8665U hasta 3.8 GHz, 16 GB DDR4 RAM, 512 GB SSD, HDMI, y SO Windows 11 Pro.', 'Laptop_HP.jpg', 7299, 34, 'HP', 'GoldenRice Computer'),
(23, 'Asus Laptop Gamer ROG Strix G16 (2023), GeForce RTX 4060, Intel Core i7-13650HX', 'Laptop gamer con pantalla de 16 pulgadas, tarjeta gráfica GeForce RTX 4060, y procesador Intel Core i7, entre varias novedades.', 'LaptopG_Asus.jpg', 28336, 20, 'Asus', 'Amazon EU'),
(24, 'SAMSUNG Galaxy A34 5G Verde', 'Cuenta con SO Android 13.0 one, capacidad de almacenamiento de 128 GB y RAM de 6 GB.', 'SAMSUNG_Gal.jpg', 7499, 30, 'SAMSUNG', 'Amazon México'),
(25, 'Sony Audífonos inalámbricos on-Ear WH-CH520 hasta 50 Horas de duración de batería, Beige', 'Una experiencia de escucha diseñada para ti. Digital Sound Enhancement Engine (DSEE) restaura los tonos armónicos y la intensidad que se pierden durante la compresión normal de la música, para ofrecer un rendimiento más auténtico. Y con hasta 50 horas de duración de bateria.', 'Audif_In_Sony.jpg', 999, 45, 'Sony', 'Amazon México'),
(26, 'Xiaomi Celular Redmi Note 12S Ice Blue 8GB Ram 256GB ROM', 'Cuenta con pantalla de 6.43 pulgadas, Capacidad de almacenamiento de 256 GB y SO Android 12.0.', 'Cel_Xiaomi.jpg', 4759, 66, 'Xiaomi', 'celulandia'),
(27, 'Lenovo IdeaPad 3i - Laptop de 15.6 pulgadas con Windows 11, procesador Intel Core i3-1215U', 'Además cuenta con memoria RAM de 8 GB, y memoria de almacenamiento de 512 GB.', 'Laptop_Lenovo.jpg', 13230, 24, 'Lenovo', 'PCDIGITALCOMMX'),
(28, 'KINGONE Pencil para iPad, Stylus Pen para iPad con Sensor magnético y de inclinación', 'Lápiz Stylus Compatible con Apple iPad Pro 11 Pulgadas 2/3, iPad Pro 12.9 Pulgadas 3/4/5 generación iPad 6/7/8/9', 'Lapiz_stylus.jpg', 349, 30, 'KINGONE', 'KINGONE-MX'),
(29, 'Hisense Pantalla 32\" Pulgadas Smart TV VIDAA 32A4KV (2023)', 'Pantalla con alto contraste que te brinda reflejos más brillantes, colores negros más profundos y colores más vibrantes.', 'Hisense_STV.jpg', 4499, 10, 'Hisense', 'Amazon México'),
(30, 'Lenovo Tab P11 Pro, 11.5\'\' RAM 6GB, 128 GB de Almacenamiento con Teclado y Precision Pen 2, procesad', 'Exclusivo diseño de una sola pieza de aluminio con pantalla de OLED de 11.5” multitouch, y sonido cinematográfico en cuatro altavoces JBL estéreo con Dolby Atmos.', 'Lenovo_Tab_P11.jpg', 17999, 15, 'Lenovo', 'Amazon México'),
(31, 'Wacom CTL472 Tableta One by Wacom Chica Rojo con Negro', 'Tableta para dibujo digital con lápiz sensible, ergonómico y sensible a la presión que le ofrece una forma natural de dibujar, dibujar, pintar o editar fotos, inalámbrico y sin batería.', 'Wacom.jpg', 1099, 55, 'Wacom', 'Wacom Store'),
(32, 'SAMSUNG Monitor LF24T350FHLXZX Plano 24\" FHD - Sin Bordes con Experiencia Gaming Inmersiva, Dark Blu', 'Monitor sin bordes que ofrece confort visual, interfaz dual y una vista completamente expansiva para gaming inmersivo.', 'Monitor_SAMSUNG.jpg', 4298, 23, 'SAMSUNG', 'Amazon México'),
(33, 'LG 24GQ50F-B Ultragear Gaming Monitor 24\" VA FHD 165Hz 1ms MBR AMD FreeSync HDMI 1.4 X 2, DP 1.2 X 1', 'Cuenta con pantalla de 24 pulgadas Full HD (1920 x 1080) y frecuencia de actualización de 165 Hz, para movimiento más fluido en videojuegos.', 'Monitor_LG.jpg', 5699, 25, 'LG', 'Amazon México');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_usuario` int(5) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Contraseña` varchar(15) NOT NULL,
  `Fecha_nacimiento` date NOT NULL,
  `Num_tarjeta_bancaria` int(20) NOT NULL,
  `Direccion_postal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_usuario`, `Nombre`, `Correo`, `Contraseña`, `Fecha_nacimiento`, `Num_tarjeta_bancaria`, `Direccion_postal`) VALUES
(1, 'Admin1', 'a@correo.com', 'a123', '2023-05-04', 123456789, 'Mexico 52783'),
(3, 'Rodrigo', 'rokimestre@gmail.com', 'R123', '2001-06-18', 1234565432, '52783'),
(4, 'Ricardo', 'ricardo@correo.com', 'R456', '2000-03-15', 123344556, '52725'),
(5, 'Ricardo2', 'ricardo@correo.com', 'R4567', '2000-03-15', 1233445565, '52725'),
(7, 'Jose', 'jose@correo.com', 'j123', '1998-05-19', 13579864, 'Mexico');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito_compras`
--
ALTER TABLE `carrito_compras`
  ADD PRIMARY KEY (`ID_carrito`),
  ADD KEY `carrito_FK` (`Usuario`) USING BTREE,
  ADD KEY `carrito_FK_1` (`Producto`) USING BTREE;

--
-- Indices de la tabla `historial_compras`
--
ALTER TABLE `historial_compras`
  ADD PRIMARY KEY (`ID_compra`),
  ADD KEY `historial_compras_FK` (`Usuario`) USING BTREE,
  ADD KEY `historial_compras_FK_1` (`Producto`) USING BTREE;

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito_compras`
--
ALTER TABLE `carrito_compras`
  MODIFY `ID_carrito` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `historial_compras`
--
ALTER TABLE `historial_compras`
  MODIFY `ID_compra` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_producto` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_usuario` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito_compras`
--
ALTER TABLE `carrito_compras`
  ADD CONSTRAINT `Producto` FOREIGN KEY (`Producto`) REFERENCES `productos` (`ID_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Usuario` FOREIGN KEY (`Usuario`) REFERENCES `usuarios` (`ID_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `historial_compras`
--
ALTER TABLE `historial_compras`
  ADD CONSTRAINT `Producto2` FOREIGN KEY (`Producto`) REFERENCES `productos` (`ID_producto`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Usuario2` FOREIGN KEY (`Usuario`) REFERENCES `usuarios` (`ID_usuario`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
