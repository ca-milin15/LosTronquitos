<?php
class Usuario{

    public $id;
    public $usuario;
    public $clave;
    public $nombre_usuario;
    public $fecha_creacion;

    public function setId($id){
        this.$id = $id;
    }

    public function setUsuario($usuario){
        this.$usuario = $usuario;
    }

    public function setClave($clave){
        this.$clave = $clave;
    }

    public function setNombreUsuario($nombre_usuario){
        this.$nombre_usuario = $nombre_usuario;
    }

    public function setFechaCreacion($fecha_creacion){
        this.$fecha_creacion = $fecha_creacion;
    }
    
    public function getId(){
        return this.$id;
    }

    public function getUsuario(){
        return this.$usuario;
    }

    public function getClave(){
        return this.$clave;
    }

    public function getNombreUsuario(){
       return this.$nombre_usuario;
    }

    public function getFechaCreacion(){
        return this.$fecha_creacion;
    }

    public function consultarUsuarioLogin($usuario, $clave){
        return "SELECT * FROM USUARIO WHERE usuario = '$usuario' AND clave = '$clave'";
    }

    public function listarUsuarios(){
        return "SELECT * FROM usuario";
    }
}