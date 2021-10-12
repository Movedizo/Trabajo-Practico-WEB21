<?php

class ReacondicionadoModel{

    private $db;
    
    function __construct(){
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=csv_db 6;charset=utf8', 'root', '');
    }

    function getReacondicionados(){
        $sentencia = $this->db->prepare( "SELECT * FROM reacondicionados");
        $sentencia->execute();
        $reacondicionados = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $reacondicionados;
    } 

    function getModelosPorMarca($modelo){
        $sentencia = $this->db->prepare( "SELECT * FROM reacondicionados WHERE id_marca = ?" );
        $sentencia->execute(array($modelo));
        $modelo = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $modelo;
    }

    function getModelosPorAlmacenamiento(){
        $sentencia = $this->db->prepare( "SELECT * FROM `reacondicionados` ORDER BY `reacondicionados`.`almacenamiento` ASC" );
        $sentencia->execute();
        $porAlmacenamiento= $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $porAlmacenamiento;
    }
    
    function getModelosPorRam(){
        $sentencia = $this->db->prepare( "SELECT * FROM `reacondicionados` ORDER BY `reacondicionados`.`ram` ASC" );
        $sentencia->execute();
        $porRam= $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $porRam;
    }

    function createReacondicionado($marca, $modelo, $precio, $codigo, $almacenamiento, $pantalla, $ram, $bateria, $stock){
        $sentencia = $this->db->prepare("INSERT INTO reacondicionados(id_marca, modelo, precio, codigo, almacenamiento, pantalla, ram, bateria, stock) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)");
        $sentencia->execute(array($marca, $modelo, $precio, $codigo, $almacenamiento, $pantalla, $ram, $bateria, $stock));
    }

    function deleteReacondicionadoFromDB($id){
        $sentencia = $this->db->prepare("DELETE FROM reacondicionados WHERE id_reacondicionado=?");
        $sentencia->execute(array($id));
    }

    function updateReacondicionadoFromDB($id, $id_marca,  $modelo, $precio, $codigo, $almacenamiento, $pantalla, $ram, $bateria, $stock){
        $sentencia = $this->db->prepare("UPDATE reacondicionados SET id_marca='$id_marca', modelo='$modelo', precio='$precio', codigo='$codigo', almacenamiento='$almacenamiento', pantalla='$pantalla', ram='$ram', bateria='$bateria', stock='$stock' WHERE id_reacondicionado = '$id'");
        $sentencia->execute(array($id));
    }

    function getReacondicionado($id){
       $sentencia = $this->db->prepare( "SELECT * FROM `reacondicionados` WHERE id=?");
        $sentencia->execute(array($id));
        $reacondicionado = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $reacondicionado;
    }

    function getReacondicionadoMultitabla(){
        $sentencia = $this->db->prepare("SELECT * FROM reacondicionados as r INNER JOIN marcas as m ON r.id_marca=m.id_marca");
        $sentencia->execute();
        $reacondicionado= $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $reacondicionado;
        }
}