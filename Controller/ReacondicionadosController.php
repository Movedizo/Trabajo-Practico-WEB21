<?php

require_once "./Model/ReacondicionadoModel.php";
require_once "./View/ReacondicionadoView.php";
require_once "./Helpers/AccesoHelper.php";

class ReacondicionadosController{

    private $model;
    private $view;
    private $accesoHelper;

    function __construct(){
        $this->model = new ReacondicionadoModel();
        $this->view = new ReacondicionadoView();
        $this->marcasModel = new MarcasModel();
        $this->marcasView = new MarcasView();
        $this->accesoHelper = new AccesoHelper();
    }

    function verHome(){
       $this->view->verAcceso();
    }

    function verUsuario(){

        $reacondicionados = $this->model->getReacondicionados();
        $this->view->verUsuario($reacondicionados);
    }

    function verModeloPorMarca($id){

        $marcas = $this->marcasModel->getMarcas($id);
        $modeloPorMarca = $this->model->getModelosPorMarca($id);
        $this->view->verModeloPorMarca($marcas, $modeloPorMarca);
    }  

    function verAlmacenamiento(){
        $porAlmacenamiento= $this->model->getModelosPorAlmacenamiento();
        $this->view->verAlmacenamiento($porAlmacenamiento);
    }

    function verRam(){

        $porRam = $this->model->getModelosPorRam();
        $this->view->verRam($porRam);
    }

    function deleteReacondicionado($id){
        $this->accesoHelper->checkLoggedIn();
        $this->model->deleteReacondicionadoFromDB($id);
        $this->view->showHomeLocation("verReacondicionados");

    }

    function updateReacondicionado(){
        $this->accesoHelper->checkLoggedIn();
        $this->model->updateReacondicionadoFromDB($_POST['id_reacondicionado'], $_POST['marca'],$_POST['modelo'],$_POST['precio'],$_POST['codigo'], $_POST['almacenamiento'], $_POST['pantalla'], $_POST['ram'], $_POST['bateria'], $_POST['stock']);
        $this->view->showHomeLocation("verReacondicionados");

    }  
    function verReacondicionados(){ //Ahora trae tambien la marca de la otra tabla
        $this->accesoHelper->checkLoggedIn();
        $reacondicionado = $this->model->getReacondicionadoMultitabla();
        $this->view->verReacondicionados($reacondicionado);
    }

    function verEditar($reacondicionado){
        $this->accesoHelper->checkLoggedIn();
        $this->view->verEdicion($reacondicionado);
    }
    function createReacondicionado(){
        $this->accesoHelper->checkLoggedIn();
        $this->model->createReacondicionado($_POST['marca'],$_POST['modelo'],$_POST['precio'],$_POST['codigo'], $_POST['almacenamiento'], $_POST['pantalla'], $_POST['ram'], $_POST['bateria'], $_POST['stock']);
        $this->view->showHomeLocation("verReacondicionados");

    }
}


    

    

        

    





