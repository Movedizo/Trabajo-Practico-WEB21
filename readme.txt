Prueba commit
function stockReacondicionado(){
        $this->accesoHelper->checkLoggedIn();

        if(!isset($_POST['stock'])){
            $stock = 0;
        }else{
            $stock = 1;
        }

        $this->model->insertReacondicionado($_POST['id'], $_POST['id_marca'], $_POST['modelo'], $_POST['precio'], $_POST['codigo'], $_POST['almacenamiento'], $_POST['pantalla'], $_POST['ram'], $_POST['bateria'], $stock);
        $this->view->showHomeLocation();
    }

       
 case 'stockReacondicionado': 
            $reacondicionadosController->stockReacondicionado(); 
            break;


Home 
    usuario
        lista de categorias (nav)

            Busqueda por:

            marca/modelo
            almacenamiento (4, 8, 16, 31, 64, 128)
            procesamiento (1, 2, 3, 4)

    administrador

        lista de categorias (nav)

            ingreso con usuario y contrasena

        Busqueda por:

            marca/modelo
            almacenamiento (4, 8, 16, 31, 64, 128)
            procesamiento (1, 2, 3, 4)
            cada item borrar/stock
            agregar reacondicionado por formulario.
        
<h1 class="title">{$titulo}</h1>
        <table class="list">
        
        

        <form action="createReacondicionado" method="post">
            <input type="text" name="marca" id="">
            
  table class="list">
        <thead>
                 <tr>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Precio</th>
                        <th>Codigo</th>
                        <th>Almacenamiento</th>
                        <th>Tamaño de pantalla</th>
                        <th>Velocidad de procesamiento</th>
                        <th>Capacidad de bateria</th>
                        <th>Stock</th>
                </tr>
        </thead>
        <body>
                <tr>
                        <td>{$reacondicionados->marca}</td>
                        <td>{$reacondicionados->modelo}</td>
                        <td>{$reacondicionados->precio}</td>
                        <td>{$reacondicionados->codigo}</td>
                        <td>{$reacondicionados->almacenamiento}</td>
                        <td>{$reacondicionados->pantalla}</td>
                        <td>{$reacondicionados>ram}</td>
                        <td>{$reacondicionados->bateria}</td>
                        <td>{$reacondicionados->stock}</td>
                </tr>
        </body>
</table>  
