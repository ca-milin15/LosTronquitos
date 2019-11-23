<?php
require_once '../modelo/usuario.php';
require_once '../database/conexionDB.php';

class ServicioUsuario{

    public function consultarUsuario($usuario, $clave){
        $database = new ConexionBaseDatos();
        $query = "SELECT * FROM USUARIO WHERE usuario = '$usuario' AND clave = '$clave'";
        $res = $database -> ejecutarSentencia($query);
        foreach($res["resultadoConsulta"] as $key => $value){
            echo "$key - $value \n";
        }
    }
}

$r = new ServicioUsuario();
echo $r -> consultarUsuario("camilo.rivera", "camilo.rivera");