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
        <link href="Css/registrarUsu.css" rel="stylesheet" type="text/css"/>

        <title>JSP Page</title>
    </head>
    <body>
        <nav>
            <ul>
                <li><a href="index.jsp" class="btn-bk">Atrás</a></li>
        </nav>
        <section>
            <div class="entra"></div>
            <div class="entra"></div>
            <div class="entra"></div>
            <div class="box">

                <div class="container2">
                    <div class="form">
                        <h2 for="usu">Registrar Usuario</h2>
                        <form method="POST" action="Usuario">
                            <div class="inputb">
                                <p class="cuenta" for="usu">Nombre</p>
                                <input type="text" name="txtNombre" placeholder="Nombre" id="usu">
                            </div>
                             <div class="inputb">
                                <p class="cuenta" for="usu">Apellido</p>
                                <input type="password" name="txtApellido" placeholder="Apellido"  id="pass">
                            </div>
                           <div class="inputb">
                                <p class="cuenta" for="usu">Tipo Documento</p>
                                <input type="text" class="form-control" name="txtTipoDocumento" id="Placa" placeholder="Tipo Documento" id="pass">
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Numero Documento</p>
                                <input type="text" class="form-control" name="txtNumeroDocumento" id="Placa" placeholder="Tipo Usuario" id="pass">
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Tipo Usuario</p>
                                <input type="text" class="form-control" name="txtTipoUsuario" id="Placa" placeholder="Tipo Usuari" id="pass">
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Celular</p>
                                <input type="text" class="form-control" name="txtCelular" id="Placa" placeholder="Celular" id="pass">
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Telefono</p>
                                <input type="text" class="form-control" name="txtTelefono" id="Placa" placeholder="Telefono" id="pass">
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Correo</p>
                                <input type="text" class="form-control" name="txtCorreo" id="Placa" placeholder="Correo" id="pass">
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Clave</p>
                                <input type="text" class="form-control" name="txtClave" id="Placa" placeholder="Clave" id="pass">
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Estado</p>
                                <input type="text" class="form-control" name="txtEstado" id="Placa" placeholder="Estado" id="pass">
                            </div>
                            <ul class="error" id="error"></ul>
                            <center><div class="inputb">
                                <input type="submit" id="btn" value="Registrar">
                                <input type="hidden" value="1" name="opcion">
                                </div></center>

                        </form>
                    </div>
                    <div>
                        <% if (request.getAttribute("mensajeError") != null) {%>
                        <div style="color: red;">
                            ${mensajeError}
                        </div>
                        <%} else {%>
                        <div style="color:green;">
                            ${mensajeExito}
                        </div>
                        <%}%>
                    </div>
                </div>
            </div>
        </section>

    </body>
</html>
