<?php
include("abre.php");

$nombre = $_POST['nombre'];
$cantidad = $_POST['cantidad'];

$consulta = "INSERT INTO inventario (nombre_producto, cantidad) 
             VALUES ('$nombre', '$cantidad')";

if ($conexion->query($consulta) === TRUE) {
    echo "Producto agregado al inventario.";
} else {
    echo "Error: " . $conexion->error;
}

$conexion->close();
?>
