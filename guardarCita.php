<?php
include("abre.php");

$fecha = $_POST['fecha'];
$hora = $_POST['hora'];
$paciente_id = $_POST['paciente_id'];
$doctor_id = $_POST['doctor_id'];

$consulta = "INSERT INTO citas (fecha, hora, id_paciente, id_doctor) 
             VALUES ('$fecha', '$hora', '$paciente_id', '$doctor_id')";

if ($conexion->query($consulta) === TRUE) {
    echo "Cita agendada correctamente.";
} else {
    echo "Error: " . $conexion->error;
}

$conexion->close();
?>
