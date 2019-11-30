<?php
require_once '../modelo/matricula.php';
require_once '../database/conexionDB.php';

class ServicioMatricula{

    public function consultarMatriculas(){
        $database = new ConexionBaseDatos();
        $instanciaMatricula = new Matricula();
        $query = $instanciaMatricula->listarMatriculas();
        $res = $database -> ejecutarSentencia($query);
        return $res;
    }
}

if(isset($_POST["action"]) && $_POST["action"] == "listarMatriculas"){
    $r = new ServicioMatricula();
    echo json_encode($r -> consultarMatriculas());
}