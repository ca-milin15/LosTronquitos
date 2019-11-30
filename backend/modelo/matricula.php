<?php
class Matricula{
    private $id;
    private $nivel;
    private $alumno;
    private $anio;
    private $valor;
    private $fecha_matricula;
    private $usuario;

    public function listarMatriculas(){
        return "SELECT * FROM matricula";
    }
} 