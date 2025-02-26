<?php
include("abre.php");

$nombre = $_POST['nombre'];
$especialidad = $_POST['especialidad'];
$telefono = $_POST['telefono'];

$consulta = "INSERT INTO doctores (nombre, especialidad, telefono) 
             VALUES ('$nombre', '$especialidad', '$telefono')";

if ($conexion->query($consulta) === TRUE) {
    echo "Doctor agregado correctamente.";
} else {
    echo "Error: " . $conexion->error;
}

$conexion->close();
?>
