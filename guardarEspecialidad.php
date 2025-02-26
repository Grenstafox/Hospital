<?php
// Conexión a la base de datos
include("abre.php");

// Obtener los datos del formulario
$nombre = $_POST['nombre'];
$fecha = $_POST['fecha'];
$duracion = $_POST['duracion'];
$carrera = $_POST['carrera'];

// Insertar los datos en la tabla "especialidades"
$consulta = "INSERT INTO especialidades (nombre, fecha, duracion, carrera) 
             VALUES ('$nombre', '$fecha', '$duracion', '$carrera')";

if ($conexion->query($consulta) === TRUE) {
    echo "Especialidad agregada correctamente.";
} else {
    echo "Error: " . $conexion->error;
}

// Cerrar la conexión
$conexion->close();
?>
