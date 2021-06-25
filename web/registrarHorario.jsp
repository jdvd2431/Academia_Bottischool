<%-- 
    Document   : registrarHorario
    Created on : 19/06/2021, 09:10:09 PM
    Author     : Julian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp" %>
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
        <title>Registrar Horario</title>
    </head>
    <body>
        <style>
            body{
                overflow: scroll;
            }
        </style>
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
                        <a class="boton-volver" href="menu.jsp" style="font-size: 40px;"><i class="fa fa-chevron-circle-left" id="cancel"></i></a>
                        </div>
                        <h2 for="usu">Registrar Horario</h2>
                        <form method="POST" action="HorarioControlador">
                            
                            <div class="inputb">
                                <p class="cuenta" for="usu">Fecha de Inicio</p>
                                <input type="date" name="txtFechaInicio" id="pass"
                                    value="2021-01-01"
                                    min="2021-01-01" max="2021-12-31">    
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Fecha de Fin</p>
                                <input type="date" name="txtFechaFin" id="pass"
                                    value="2021-01-01"
                                    min="2021-01-01" max="2021-12-31">    
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Hora de Inicio</p>
                                <input type="time" name="txtHoraInicio" id="pass"
                                    value="2021-01-01"
                                    min="2021-01-01" max="2021-12-31">    
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Hora de Fin</p>
                                <input type="time" name="txtHoraFin" id="pass"
                                    value="10:00 am"
                                    >    
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">dia</p>
                                <input type="date" name="txtDia" id="pass"
                                    value="2021-01-01"
                                    min="2021-01-01" max="2021-12-31">   
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Estado</p>
                                <select name="txtEstado">
                                    <option value="Activo">Activo</option>
                                    <option value="Inactivo">Inactivo</option>
                                </select>
                            </div>
                            <div class="inputb">
                                <p class="cuenta" for="usu">Aula</p>
                                <select name="txtClase">
                                    <option value="1">Merengue</option>
                                    <option value="2">Tango</option>
                                    <option value="3">Salsa</option>
                                    <option value="4">Bachata</option>
                                    <option value="5">Samba</option>
                                </select> 
                            </div>
                            
                            <ul class="error" id="error"></ul>
                            <center>
                                <div class="inputb">
                                    <input type="submit" id="btn" value="Registrar">
                                    <input type="hidden" value="1" name="opcion">
                                </div></center>

                        </form>
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
                                        window.location = "registrarGrupo.jsp";
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
                                        window.location = "registrarHorario.jsp";
                                    });
                        </script>
                        <%}%>
                    </div>
                </div>
            </div>
        </section>

    </body>
</html>

