<?php
class Alumno{
    private $id;
    private $nombre;
    private $apellidos;
    private $genero;
    private $edad;
    private $fecha_nacimiento;
    private $usuario;

    public function listarAlumnos(){
        return "SELECT * FROM alumno";
    }
} 