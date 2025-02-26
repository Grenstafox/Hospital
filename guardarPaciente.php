<?php
include("abre.php");

$nombre = $_POST['nombre'];
$edad = $_POST['edad'];
$telefono = $_POST['telefono'];

$consulta = "INSERT INTO pacientes (nombre, edad, telefono) 
             VALUES ('$nombre', '$edad', '$telefono')";

if ($conexion->query($consulta) === TRUE) {
    echo "Paciente agregado correctamente.";
} else {
    echo "Error: " . $conexion->error;
}

$conexion->close();
?>
