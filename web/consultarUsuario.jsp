<%-- 
    Document   : ConsultarUsuario
    Created on : 25/06/2021, 11:22:07 AM
    Author     : Sebas
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.UsuarioVO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" />
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css"/>
        <link rel="stylesheet" href="../Css/consultar.css"/>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

        <!-- jQuery Modal -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Usuario</title>
    </head>
    <body >
        <style>
            .contenedor{
                width: 100%;
                max-width: 1500px;
                display: flex;
                justify-content: center;
                margin: auto;
                background:#fefefe;
                padding: 15px;
                margin-radius:5px; 
            }
            body{
                background:#ECECEC;
            }
            h2{
                width:100%;
                max-width: 300px;
                display: flex;
                justify-content: center;
                margin: auto;
                text-align: center;
                background: #007bff;
                border-radius:7px;
                padding: 5px;
                margin-bottom: 10px;
                color: white;
            }
            .modal-h2{
                width:100%;
                max-width: 300px;
                display: flex;
                justify-content: center;
                margin: auto;
                text-align: center;
                background: #007bff;
                border-radius:7px;
                padding: 5px;
                margin-bottom: 30px;
                color: white;
            }
            h2:hover{
                background: #4CA3FF;
                color: white;
            }
            .verde{
                background: green;
                color: white;
                border-radius:5px; 
            }
            .rojo{
                background:brown;
                color: white;
            }
            .modal{
                height: 100%;
                max-height: 210px;
            }
            .modal a.close-modal{
                top:1px;
                right: 1px;
            }
        </style>
        <div class="boton-volver">
            <a class="boton-volver" href="menu.jsp" style="font-size: 40px; margin-left: 50px;"><i class="fa fa-chevron-circle-left" id="cancel"></i></a>
        </div>
        <h2 class="text-center mt-20">Gestion de Usuarios</h2>

        <div class="contenedor">

            <table id="usuario" class="table table-striped" style="width:100%">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Tipo de Documento</th>
                        <th>Documento</th>
                        <th>Celular</th>
                        <th>Telefono</th>
                        <th>Estado</th>
                        <th>Correo</th>
                        <th>Clave</th>
                        <th>Tipo Usuario</th>
                        <th>Estado</th>
                        <th>Actualizar</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        UsuarioVO UsuVO = new UsuarioVO();
                        UsuarioDAO UsuDAO = new UsuarioDAO(UsuVO);
                        ArrayList<UsuarioVO> listaUsuario = UsuDAO.listar();
                        for (int i = 0; i < listaUsuario.size(); i++) {

                            UsuVO = listaUsuario.get(i);
                    %>               
                    <tr>
                        <td><%=UsuVO.getUsuId()%></td>
                        <td><%=UsuVO.getNombre()%></td>
                        <td><%=UsuVO.getApellido()%></td>
                        <td><%=UsuVO.getTipoDocumento()%></td>
                        <td><%=UsuVO.getNumDocumento()%></td>
                        <td><%=UsuVO.getCelular()%></td>
                        <td><%=UsuVO.getTelefono()%></td>
                        <td>
                            <a><%=UsuVO.getEstado()%></a>
                        </td>
                        <td><%=UsuVO.getCorreo()%></td>
                        <td><%=UsuVO.getClave()%></td>
                        <td><%=UsuVO.getIdTipoUsuario()%></td>  
                        <td>
                            <div id="ex1" class="modal">
                                <div class="inputb">
                                    <h2 class="modal-h">Estado</h2>
                                </div>
                                <form method="POST" action="Usuario">
                                    <div class="row">
                                        <div class="col">
                                            <input type="hidden" name="txtId" placeholder="Nombre" value="<%=UsuVO.getUsuId()%>">
                                            <select class="custom-select" name="txtEstado">
                                                <option selected>Seleciona el nuevo estado</option>
                                                <option value="Activo">Activo</option>
                                                <option value="Inactivo">Inactivo</option>
                                            </select>
                                            <center>
                                                <div class="inputb">
                                                    <button class="btn btn-primary mt-3" type="submit" id="btn" >Cambiar</button>
                                                    <input type="hidden" value="5" name="opcion">
                                                </div></center>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <p><a  class="btn btn-info" href="#ex1" rel="modal:open"><i class="fas fa-pen"></i></a></p>

                        </td>
                        <td><a href="actualizarUsuario.jsp?idUsuario=<%=UsuVO.getUsuId()%>" class="btn btn-success"><i class="fas fa-pen"></i></a></td>
                    </tr>
                    <%}%>  
                </tbody>
                <tfoot>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Tipo de Documento</th>
                        <th>Documento</th>
                        <th>Celular</th>
                        <th>Telefono</th>
                        <th>Estado</th>
                        <th>Correo</th>
                        <th>Clave</th>
                        <th>Tipo Usuario</th>
                        <th>Estado</th>
                        <th>Actualizar</th>
                    </tr>
                </tfoot>
            </table>
        </div>        
        <script>
            $('a.open-modal').click(function (event) {
                $(this).modal({
                    fadeDuration: 250
                });
                return false;
            });
            $(document).ready(function () {
                $('#usuario').DataTable({
                    scrollY: 400,
                    language: {
                        "sProcessing": "Procesando...",
                        "sLengthMenu": "Mostrar _MENU_ registros",
                        "sZeroRecords": "No se encontraron resultados",
                        "sEmptyTable": "NingÃºn dato disponible en esta tabla",
                        "sInfo": "Mostrando usuarios del _START_ al _END_ de un total de _TOTAL_ usuarios",
                        "sInfoEmpty": "Mostrando usuarios del 0 al 0 de un total de 0 usuarios",
                        "sInfoFiltered": "(filtrado de un total de _MAX_ usuarios)",
                        "sInfoPostFix": "",
                        "sSearch": "Buscar:",
                        "sUrl": "",
                        "sInfoThousands": ",",
                        "sLoadingRecords": "Cargando...",
                        "oPaginate": {
                            "sFirst": "Primero",
                            "sLast": "Ãšltimo",
                            "sNext": "Siguiente",
                            "sPrevious": "Anterior"
                        },
                        "oAria": {
                            "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                            "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                        },
                        "buttons": {
                            "copy": "Copiar",
                            "colvis": "Visibilidad"
                        }
                    }
                });
            });
        </script>
        <button class="abrir-registrar" id="abrir-registrar">Registrar</button>
        <div class="overlay activado " id="overlay">
            <form action="Usuario" method="POST" class="form-registro">
                <div class="tituloR">
                    <a href="#" class="cerrar-registro" id="cerrar-registro"><i class="fas fa-times"></i></a>
                    <h2>Registrar Usuario</h2>
                </div>
                <div class="cuerpo">
                    <div class="formulario">
                        <input type="text" id="nombre" name="txtNombre" placeholder="Nombre" required class="input-50">
                        <input type="text" id="apellido" name="txtApellido" placeholder="Apellido" required class="input-50">
                        <div class="selector">
                            <select id="TipoDocumento" name="txtTipoDocumento" class="estilo-selector">
                                <option selected>Tipo de Documento</option>
                                <option value="C.C">Cedula de Ciudadania</option>
                                <option value="T.I">Tarjeta de Identidad</option>
                                <option value="C.E">Cedula de Extranjeria</option>
                            </select>
                        </div>
                        <input type="number" id="numeroDocumento" name="txtNumeroDocumento" placeholder="Documento" required class="input-50">
                        <input type="number" id="celular" name="txtCelular" placeholder="Celular" required class="input-50">
                        <input type="number" id="telefono" name="txtTelefono" placeholder="Telefono" class="input-50">
                        <input type="hidden" value="Activo" name="txtEstado" required>
                        <input type="email" id="correo" name="txtCorreo" placeholder="Correo" required class="input-50">
                        <input type="password" name="txtClave" placeholder="Contraseña" required class="input-50">
                        <div class="selector">
                            <select name="txtGrupo" id="grupo" class="estilo-selector">
                                <option selected>Grupo</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <div class="selector">
                            <select id="tipoUsuario" name="txtRol" class="estilo-selector">
                                <option selected>Tipo Usuario</option>
                                <option value="3">Administrador</option>
                                <option value="2">Estudiante</option>
                                <option value="1">Profesor</option>
                            </select>
                        </div>
                        <input type="submit" class="btn" id="btn" value="Registrar">
                        <input type="hidden" value="1" name="opcion">
                    </div>
                </div>
            </form>
        </div>
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
        <script src="Js/consultarUsuario.js"></script>
    </body>
</html>
