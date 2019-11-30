<?php
require_once '../modelo/nivel.php';
require_once '../database/conexionDB.php';

class ServicioNivel{

    public function consultarNiveles(){
        $database = new ConexionBaseDatos();
        $instanciaNivel = new Nivel();
        $query = $instanciaNivel->listarNiveles();
        $res = $database -> ejecutarSentencia($query);
        return $res;
    }
}

if(isset($_POST["action"]) && $_POST["action"] == "listarNiveles"){
    $r = new ServicioNivel();
    echo json_encode($r -> consultarNiveles());
}