<?php
// Definir las credenciales de la base de datos
$servername = "localhost"; // Dirección del servidor (localhost para la mayoría de los entornos locales)
$username = "root"; // Nombre de usuario de la base de datos
$password = ""; // Contraseña (vacía para XAMPP por defecto)
$dbname = "hospital"; // Nombre de la base de datos (asegúrate de que sea el nombre correcto)

// Crear la conexión
$conexion = new mysqli($servername, $username, $password, $dbname);

// Verificar si la conexión fue exitosa
if ($conexion->connect_error) {
    die("Conexión fallida: " . $conexion->connect_error);
}
?>
