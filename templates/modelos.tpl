{include file='templates/header.tpl'}

<div>

        <h1 class="h1">{$titulo}</h1>
        <table class="table">
            <tr>
                <td>Modelo</td>
            </tr>

            {foreach from=$reacondicionados item=$reacondicionado}
                <tr>
                <td><a href="caracteristicas/{$reacondicionado->modelo}">{$reacondicionado->modelo}</a></td>
                </tr>
            {/foreach}  
        </table> 
</div>


<a href="marca"> Volver</a>
{include file='templates/footer.tpl'}