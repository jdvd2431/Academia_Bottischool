<%-- 
    Document   : ActualizarUsuario
    Created on : 24/07/2021, 11:28:01 AM
    Author     : David
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Css/registrarUsu.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
        <link href="Css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="Js/sweetalert.js" type="text/javascript"></script>
        <script src="Js/sweetalert.min.js" type="text/javascript"></script>
        <title>Actualizar Usuario</title>
    </head>
    <body>
        <section>
            <div class="entra"></div>
            <div class="entra"></div>
            <div class="entra"></div>
            <div class="box">


                <div class="container2">

                    <div class="form">
                        <div class="boton-volver">
                            <a class="boton-volver" href="consultarUsuario.jsp" style="font-size: 40px;"><i class="fa fa-chevron-circle-left" id="cancel"></i></a>
                        </div>
                        <form method="POST" action="Usuario">
                            <div class="inputb">
                                <h2>Documento</h2>

                                <input type="text" name="txtNumeroDocumento">
                                <input type="submit"  value="Buscar">
                                <input type="hidden" value="4" name="opcion">
                            </div>                
                        </form>
                        <%            UsuarioVO UsuVO = (UsuarioVO) request.getAttribute("documento");
                            if (UsuVO != null) {

                        %>
                        <h2 for="usu">Actualizar Usuario</h2>
                        <form method="POST" action="Usuario">
                            
                            <div class="inputb">
                                <input type="hidden" name="txtId" placeholder="Nombre" value="<%=UsuVO.getUsuId()%>">
                            </div>
                            
                            <div class="inputb">
                                <p class="cuenta" for="usu">Nombre</p>
                                <input type="text" name="txtNombre" placeholder="Nombre" value="<%=UsuVO.getNombre()%>">
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Apellido</p>
                                <input type="text" name="txtApellido" placeholder="Apellido" value="<%=UsuVO.getApellido()%>" >
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Tipo Documento</p>
                                <input type="text" name="txtTipoDocumento" placeholder="Apellido" value="<%=UsuVO.getTipoDocumento()%>">
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Numero Documento</p>
                                <input type="text" class="form-control" name="txtNumeroDocumento" placeholder="Tipo Usuario"  value="<%=UsuVO.getNumDocumento()%>" >
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Celular</p>
                                <input type="text" class="form-control" name="txtCelular"  placeholder="Celular" value="<%=UsuVO.getCelular()%>">
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Telefono</p>
                                <input type="text" class="form-control" name="txtTelefono"  placeholder="Telefono" value="<%=UsuVO.getTelefono()%>">
                            </div>
                            
                            <div class="inputb">
                                <input type="hidden" name="txtEstado" value="Activo" value="<%=UsuVO.getEstado()%>"> 
                            </div>

                            <div class="inputb">
                                <p class="cuenta" for="usu">Correo</p>
                                <input type="text" class="form-control" name="txtCorreo"  placeholder="Correo" value="<%=UsuVO.getCorreo()%>">
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Clave</p>
                                <input type="password" class="form-control" name="txtClave" placeholder="Clave" value="<%=UsuVO.getClave()%>">
                            </div>
                             <div class="inputb">
                                <p class="cuenta" for="usu">Tipo usuario</p>
                                <input type="text" class="form-control" name="txtRol" placeholder="Clave" value="<%=UsuVO.getIdTipoUsuario()%>">

                            </div>
                            <ul class="error" id="error"></ul>
                            <center>
                                <div class="inputb">
                                    <input type="submit" id="btn" value="Actualizar">
                                    <input type="hidden" value="2" name="opcion">
                                </div></center>
                        </form>
                        <%}%>
                    </div>
                    <div>
                        <% if (request.getAttribute("mensajeError") != null) {%>
                        <script  type="text/javascript">

                            swal({
                                title: "Error",
                                text: "${mensajeError}",
                                type: 'error',
                                confirmButtonClass: "btn-primary",
                                confirmButtonText: "OK",
                                closeOnConfirm: false
                            },
                                    function () {
                                        window.location = "actualizarUsuario.jsp";
                                    });
                        </script>

                        <%} else if (request.getAttribute("mensajeExito") != null) {%>
                        <script  type="text/javascript">

                            swal({
                                title: "Correcto",
                                text: "${mensajeExito}",
                                type: 'success',
                                confirmButtonClass: "btn-primary",
                                confirmButtonText: "OK",
                                closeOnConfirm: false
                            },
                                    function () {
                                        window.location = "actualizarUsuario.jsp";
                                    });
                        </script>
                        <%}%>
                    </div>
                </div>
            </div>
        </section>

    </body>
</html>
