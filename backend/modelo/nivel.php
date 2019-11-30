<?php
class Nivel{
    private $id;
    private $codigo;
    private $nombre;
    private $fecha_creacion;
    private $usuario;

    public function listarNiveles(){
        return "SELECT * FROM nivel";
    }
} 