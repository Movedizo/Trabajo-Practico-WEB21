<?php

    require_once 'Controller/ReacondicionadosController.php';
    require_once 'Controller/IngresoController.php';
    require_once 'Controller/MarcasController.php';

    define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');   

    if (!empty($_GET['action'])){
                $action = $_GET['action'];
        } 
        else {
                $action = 'home';
    }

    $params = explode('/', $action);

    $marcasController = new MarcasController();
    $reacondicionadosController = new ReacondicionadosController();
    $ingresoController = new IngresoController();

    switch ($params[0]){
        case 'logout': 
            $ingresoController->logout(); 
            break; 
        case 'verificacion': 
            $ingresoController->verificacionIngreso(); 
            break;  
        case 'home': 
            $reacondicionadosController->verHome(); 
            break;
        case 'usuario': 
            $reacondicionadosController->verUsuario(); 
            break;
        case 'admin': 
            $ingresoController->ingresoAdmin();  
            break;
        case 'marca': 
            $marcasController->verMarcas();
            break;
            //categorias
        case 'sistemaoperativo': 
            $marcasController->verSistemaOperativo();
            break;
        case 'modelo': 
            $reacondicionadosController->verModeloPorMarca($params[1]);
            break;
            //items
        case 'almacenamiento': 
            $reacondicionadosController->verAlmacenamiento();
            break;
        case 'ram': 
            $reacondicionadosController->verRam();
            break;    
        case 'eliminar': 
            $reacondicionadosController->deleteReacondicionado($params[1]); 
            break;
        case 'updateReacondicionado': 
            $reacondicionadosController->updateReacondicionado($params[1]); 
            break;
        case 'verReacondicionados': 
            $reacondicionadosController->verReacondicionados(); 
            break;
        case 'editar':
            $reacondicionadosController->verEditar($params[1]);
            break;
        case 'createReacondicionado':
            $reacondicionadosController->createReacondicionado();
                break;
            default: 
            echo('404 Pagina no encontrada'); 
            break;
    }

?>