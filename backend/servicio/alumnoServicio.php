<?php
require_once '../modelo/alumno.php';
require_once '../database/conexionDB.php';

class ServicioAlumno{

    public function consultarAlumnos(){
        $database = new ConexionBaseDatos();
        $instanciaAlumno = new Alumno();
        $query = $instanciaAlumno->listarAlumnos();
        $res = $database -> ejecutarSentencia($query);
        return $res;
    }
}

if(isset($_POST["action"]) && $_POST["action"] == "listarAlumnos"){
    $r = new ServicioAlumno();
    echo json_encode($r -> consultarAlumnos());
}