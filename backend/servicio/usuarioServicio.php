<?php
require_once '../modelo/usuario.php';
require_once '../database/conexionDB.php';

class ServicioUsuario{

    public function consultarUsuario($usuario, $clave){
        $database = new ConexionBaseDatos();
        $instanciaUsuario = new Usuario();
        $query = $instanciaUsuario->consultarUsuarioLogin($usuario, $clave);
        $res = $database -> ejecutarSentencia($query);
        return $res;
        /*foreach($res["resultadoConsulta"] as $key => $value){
            echo "$key - $value \n";
        }*/
    }
}

if(isset($_POST["action"]) && $_POST["action"] == "login"){
    $r = new ServicioUsuario();
    echo json_encode($r -> consultarUsuario($_POST["usuario"], $_POST["clave"]));
}