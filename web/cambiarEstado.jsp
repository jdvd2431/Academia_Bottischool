<%-- 
    Document   : cambiarEstado
    Created on : Jul 24, 2021, 12:12:46 PM
    Author     : Julian
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
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
        <title>Cambiar Estado</title>
    </head>
    <body>
        <nav>
            <ul>

        </nav>
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

                        </form>
                        <%
                            String idUsuario = request.getParameter("idUsuario");
                            String estado = request.getParameter("estado");
                        %>
                        <h2 for="usu">Actualizar Estado</h2>
                        <form method="POST" action="Usuario">

                            <div class="inputb">
                                <input type="hidden" name="txtId" placeholder="Nombre" value="<%=idUsuario%>">
                            </div>



                            <div class="inputb">
                                <select name="txtEstado">
                                    <option value="<%=estado%>"><%=estado%></option>
                                    <option value="Activo">Activo</option>
                                    <option value="Inactivo">Inactivo</option>
                                </select>
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
                                                window.location = "consultarUsuario.jsp";
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
                                                window.location = "consultarUsuario.jsp";
                                            });
                                </script>
                                <%}%>

                                <ul class="error" id="error"></ul>
                                <center>
                                    <div class="inputb">
                                        <input class="p-10px" type="submit" id="btn" value="Cambiar">
                                        <input type="hidden" value="5" name="opcion">
                                    </div></center>
                        </form>


                    </div>
                </div>
        </section>

    </body>
</html>

