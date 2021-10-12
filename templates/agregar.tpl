{include file='templates/header.tpl'}

<div>
    <div class= "lis-group">
        <h2>Añadir Celulares Reacondicionados</h2>
        <form action="createReacondicionado" method="post">
            <input type="number" name="id" id="id">
            <input type="text" name="marca" id="marca">
            <input type="text" name="modelo" id="modelo">
            <input type="number" name="precio" id="precio">
            <input type="text" name="codigo" id="codigo">
            <input type="text" name="almacenamiento" id="almacenamiento">
            <input type="text" name="pantalla" id="pantalla">
            <input type="text" name="ram" id="ram">
            <input type="text" name="bateria" id="bateria">
            <input type="checkbox" name="stock" id="stock">
        </form>
    </div>
</div>

<a href="marca"> Volver</a>

{include file='templates/footer.tpl'}