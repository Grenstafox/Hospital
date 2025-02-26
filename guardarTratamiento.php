<?php
include("abre.php");

$descripcion = $_POST['descripcion'];
$fecha_inicio = $_POST['fecha_inicio'];
$fecha_fin = $_POST['fecha_fin'];
$paciente_id = $_POST['paciente_id'];
$doctor_id = $_POST['doctor_id'];
$producto_id = $_POST['producto_id'];

$consulta = "INSERT INTO tratamientos (descripcion, fecha_inicio, fecha_fin, id_paciente, id_doctor, id_producto) 
             VALUES ('$descripcion', '$fecha_inicio', '$fecha_fin', '$paciente_id', '$doctor_id', '$producto_id')";

if ($conexion->query($consulta) === TRUE) {
    echo "Tratamiento registrado correctamente.";
} else {
    echo "Error: " . $conexion->error;
}

$conexion->close();
?>
