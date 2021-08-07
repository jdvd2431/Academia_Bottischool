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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
        <link href="Css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="Js/sweetalert.js" type="text/javascript"></script>
        <script src="Js/sweetalert.min.js" type="text/javascript"></script>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
 

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
            #ex1{
                height: 100%;
                max-height: 210px;
            }
            .modal2{
                height: 100%;
                max-height: 450px;
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
                                                <% if (request.getAttribute("mensajeError") == null) {%>
                                            <script  type="text/javascript">

                                                swal({
                                                title: "Error",
                                                        text: "${mensajeError}",
                                                        type: 'error',
                                                        confirmButtonClass: "btn-primary",
                                                        confirmButtonText: "OK",
                                                        closeOnConfirm: false
                                                }
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
                                                }
                                            </script>
                                            <%}%>
                                        </div>
                                    </div>
                                </form>

                            </div>
                            <p><a  class="btn btn-info" href="#ex1" rel="modal:open"><i class="fas fa-pen"></i></a></p>

                        </td>

                        <td>
                            <div id="editar" class="modal modal2" >
                                <div class="inputb">
                                    <h2 class="modal-h">Editar Usuario</h2>
                                </div>
                                <form class="row g-3" method="POST" action="Usuario">
                                    <input type="hidden" name="txtId" placeholder="Nombre" value="<%=UsuVO.getUsuId()%>">
                                    <div class="col-md-6">
                                        <label for="inputEmail4" class="form-label">Nombre</label>
                                        <input type="text"id="inputEmail4" name="txtNombre"class="form-control" placeholder="Nombre" value="<%=UsuVO.getNombre()%>">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputPassword4" class="form-label">Apellido</label>
                                        <input type="text"class="form-control" id="inputPassword4" name="txtApellido" placeholder="Apellido" value="<%=UsuVO.getApellido()%>" >

                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputEmail4" class="form-label">Tipo Docuemento</label>
                                        <input type="text" class="form-control" id="inputEmail4" name="txtTipoDocumento" placeholder="Apellido" value="<%=UsuVO.getTipoDocumento()%>">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputPassword4" class="form-label">Numero Documento</label>
                                        <input type="text"  class="form-control" id="inputPassword4" name="txtNumeroDocumento" placeholder="Tipo Usuario"  value="<%=UsuVO.getNumDocumento()%>" >
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputEmail4" class="form-label">Celular</label>
                                        <input type="text"  class="form-control" id="inputEmail4" name="txtCelular"  placeholder="Celular" value="<%=UsuVO.getCelular()%>">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputPassword4" class="form-label">Telefono</label>
                                        <input type="text" class="form-control" id="inputPassword4" name="txtTelefono"  placeholder="Telefono" value="<%=UsuVO.getTelefono()%>">
                                    </div>
                                    <input type="hidden" name="txtEstado" value="Activo" value="<%=UsuVO.getEstado()%>"> 
                                    <div class="col-md-6">
                                        <label for="inputEmail4" class="form-label">Correo</label>
                                        <input type="text" class="form-control" id="inputEmail4" name="txtCorreo"  placeholder="Correo" value="<%=UsuVO.getCorreo()%>">
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <label for="inputPassword4" class="form-label">Clave</label>
                                        <input type="password"class="form-control" id="inputPassword4" name="txtClave" placeholder="Clave" value="<%=UsuVO.getClave()%>">
                                    </div>
                                    <input type="hidden" class="form-control" name="txtRol" placeholder="Clave" value="<%=UsuVO.getIdTipoUsuario()%>">
                                    <div class="col-12">
                                        <input type="submit" class="btn btn-primary  d-flex justify-conted-center m-auto" id="btn" value="Actualizar">
                                    <input type="hidden" value="2" name="opcion">
                                    </div>
                                </form>

                            </div>
                            <p><a  class="btn btn-primary" href="#editar" rel="modal:open"><i class="fas fa-pen"></i></a></p>
                        </td>
                        
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
        
    </body>
</html>
