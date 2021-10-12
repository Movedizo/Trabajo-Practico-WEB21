<?php

require_once "./Model/IngresoModel.php";
require_once "./View/IngresoView.php";

class IngresoController {

    private $model;
    private $view;

    function __construct(){
        $this->model = new IngresoModel();
        $this->view = new IngresoView();
    }

    function logout(){ //En uso
        session_start();
        session_destroy();
        $this->view->showHome("Sesion Terminada");
    }

    function ingresoAdmin(){ //En uso
        $this->view->showIngreso();
    }

    function verificacionIngreso(){ //En uso
        if (!empty($_POST['usuario']) && !empty($_POST['password'])) {
            $usuario = $_POST['usuario'];
            $password = $_POST['password'];
            $user = $this->model->getAcceso($usuario);
 
            if ($user && password_verify($password, $user->password)) {
                session_start();
                $_SESSION["usuario"] = $usuario;
                $this->view->showAdmin();
            } 
            else {
                $this->view->showIngreso("Verificar datos ingresados");
            }
        }
    }
}

