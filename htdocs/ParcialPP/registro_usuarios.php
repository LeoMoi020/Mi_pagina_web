<?php
$servidor = "localhost";
$usuario = "root";
$password = "";
$baseDeDatos = "tienda_hardware";
$conexion = new mysqli($servidor, $usuario, $password, $baseDeDatos);
if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}
$nombre = $_POST['nombre'];
$email = $_POST['email'];
$contraseña = $_POST['contraseña'];
$sql="INSERT INTO usuarios (nombre, email, contraseña) VALUES ('$nombre', '$email', '$contraseña')";
$conexion->query($sql);
echo 'Registro completado';
echo '<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><h1>Tienda de Hardware y Periféricos</h1>
</title>
<link rel="stylesheet" href="index.html">
</head>
<body>
<button onclick="window.location.href=\'index.html\'">Ir a la Página Principal</button>
</body>
</html>';
?>