<?php
class ConexionBaseDatos{
    /* Connect to a MySQL database using driver invocation */
    public $dsn = 'mysql:dbname=tronquitos_db;host=127.0.0.1';
    public $user = 'root';
    public $password = '';

    public function ejecutarSentencia($query){
        try {
            $conexion = new PDO($this->dsn, $this->user, $this->password);
            $conexion -> beginTransaction();
            $result = $conexion->query($query);
            if($result->rowCount() > 1){
                return [
                    "resultadoConsulta" => $result ->fetchAll(),
                    "filas" => $result->rowCount()
                ];
            } else {
                return [
                    "resultadoConsulta" => $result ->fetch(PDO::FETCH_ASSOC),
                    "filas" => $result->rowCount()
                ];
            }
        } catch (PDOException $e) {
            echo 'Connection failed: ' . $e->getMessage();
        }
    }
}