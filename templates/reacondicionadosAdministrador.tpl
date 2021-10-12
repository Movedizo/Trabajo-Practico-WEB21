{include file='templates/header.tpl'}

<div>
        <table class="table">
            <tr>
                <td>Marca</td>
                <td>Modelo</td>
                <td>Precio</td>
                <td>Codigo</td>
                <td>Almacenamiento</td>
                <td>Tamaño de pantalla</td>
                <td>Velocidad</td>
                <td>Capacidad de bateria</td>
                <td>Stock</td> 
            </tr>

            {foreach from=$reacondicionados item=$reacondicionado}
                <tr>
                    
                    <td>{$reacondicionado->marca}</td>
                    <td>{$reacondicionado->modelo}</td>
                    <td>{$reacondicionado->precio}</td>
                    <td>{$reacondicionado->codigo}</td>
                    <td>{$reacondicionado->almacenamiento}</td>
                    <td>{$reacondicionado->pantalla}</td>
                    <td>{$reacondicionado->ram}</td>
                    <td>{$reacondicionado->bateria}</td>
                    <td>{$reacondicionado->stock}</td>
                    <td> <a href="editar/{$reacondicionado->id_reacondicionado}">Editar</a></button></td>
                    <td> <a href="eliminar/{$reacondicionado->id_reacondicionado}">Eliminar</a></button></td>
                </tr>
            {/foreach}  
        </table> 
</div>
<div class= "lis-group">
    <div>
        <h2>Añadir Celulares Reacondicionados</h2>
        <form action="createReacondicionado" method="post">
            <input type="text" placeholder="Marca" name="marca" id="marca">
            <input type="text" placeholder="Modelo" name="modelo" id="modelo">
            <input type="number" placeholder="Precio" name="precio" id="precio">
            <input type="text" placeholder="Codigo" name="codigo" id="codigo">
            <input type="text"  placeholder="Almacenamiento" name="almacenamiento" id="almacenamiento">
            <input type="text" placeholder="Tamaño de Pantalla" name="pantalla" id="pantalla">
            <input type="text" placeholder="Ram" name="ram" id="ram">
            <input type="text" placeholder="Bateria" name="bateria" id="bateria">
            <input type="number" placeholder="stock" name="stock" id="stock">
            <input type="submit" Enviar>
        </form>
    </div>
</div>

<a href="marca"> Volver</a>
{include file='templates/footer.tpl'}
