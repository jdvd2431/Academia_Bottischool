<%-- 
    Document   : registrarUsuario
    Created on : 18/06/2021, 08:41:45 PM
    Author     : Julian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
                <link href="Css/usuario.css" rel="stylesheet" type="text/css"/>

        <title>JSP Page</title>
    </head>
    <body>
        <div class="contenedor">

            <form method="POST" action="usuario" class="login">
                <a href="menu.jsp" style="font-size: 40px;"><i class="fa fa-chevron-circle-left" id="cancel"></i></a>
                <h3 class="text-center">Regisrar Vehiculo</h3>
                <div class="form-group">
                    <label for="Placa">Placa</label>
                    <input type="text" class="form-control" name="txtPlaca" id="Placa" placeholder="Escribe la placa del vehiculo">
                </div>
                <div class="form-group">
                    <input type="hidden" name="txtDatos" value="">
                </div>
                <div class="form-group">
                    <label for="Categoria">Categoria ID</label>
                    <select name="txtCategoria">
                        <option value="0">Seleciona un opcion</option>
                        
                    </select>
                </div>
                <div class="form-group">
                    <label for="Modelo">Modelo</label>
                    <input type="text" class="form-control" name="txtModelo" id="Modelo" placeholder="Escribe el modelo">
                </div>
                <div class="form-group">
                    <label for="Marca">Marca</label>
                    <input type="text" class="form-control" name="txtMarca" id="Marca" placeholder="Escribe la marca">
                </div>
                <div class="form-group">
                    <label for="Estado">Estado</label>
                    <input type="text" class="form-control" name="txtEstado" id="Estado" placeholder="Escribe estado del vehiculo">
                </div>
                <div class="form-group">
                    <label for="Precio">Precio</label>
                    <input type="text" class="form-control" name="txtPrecio" id="Precio" placeholder="Escribe el precio">
                </div>
                <div class="text-center">
                    <button class="btn btn-primary btn-block">Ingresar</button>
                </div>
                <input type="hidden" value="1" name="opcion">
            </form>
            <div>
                <% if (request.getAttribute("mensajeError") != null) {%>
                <div  class="alert alert-danger" role="alert">
                    <p>${mensajeError} </p> 
                </div>
                <%} else {%>
                <div style="color:green;">
                    ${mensajeExito}
                </div>
                <%}%>
            </div>
    </body>
</html>
