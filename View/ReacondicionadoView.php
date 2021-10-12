<?php

require_once './libs/smarty-3.1.39/smarty-3.1.39/libs/Smarty.class.php';

class ReacondicionadoView {

    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }

    function verAcceso(){
        $this->smarty->assign('titulo', 'Telefonos Reacondicionados Tandil');
        $this->smarty->display('templates/acceso.tpl');
    }

    function verUsuario($reacondicionados){
        $this->smarty->assign('reacondicionados', $reacondicionados);
        $this->smarty->display('templates/usuario.tpl');
    }

    function verAdmin($reacondicionados){
        $this->smarty->assign('reacondicionados', $reacondicionados);
        $this->smarty->display('templates/admin.tpl');
    }

    function verModeloPorMarca($marcas, $modeloPorMarca){
        $this->smarty->assign('titulo', "Lista de Celulares Por Marca");
        $this->smarty->assign('marcas', $marcas);
        $this->smarty->assign('reacondicionados', $modeloPorMarca);
        $this->smarty->display('templates/modelos.tpl');
    }

    function showHomeLocation($url){
        header("Location: ".BASE_URL."$url");
    }

    function verAlmacenamiento($porAlmacenamiento){
        $this->smarty->assign('titulo', "Lista de Celulares Por Almacenamiento");
        $this->smarty->assign('reacondicionados', $porAlmacenamiento);
        $this->smarty->display('templates/reacondicionadosItems.tpl');
    }

    function verRam($reacondicionados){
        $this->smarty->assign('titulo', "Lista de Celulares Por Velocidad de Procesamiento");

        $this->smarty->assign('reacondicionados', $reacondicionados);
        $this->smarty->display('templates/reacondicionadosItems.tpl');
    }

    function verReacondicionados($reacondicionado){
        $this->smarty->assign('reacondicionados', $reacondicionado);
        $this->smarty->display('templates/reacondicionadosAdministrador.tpl');
    }
 
    function verEdicion($reacondicionado){
        $this->smarty->assign('reacondicionados', $reacondicionado);
        $this->smarty->display('templates/editar.tpl');
    }
}