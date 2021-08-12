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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <!-- jQuery Modal -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
        <link href="Css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="Js/sweetalert.js" type="text/javascript"></script>
        <script src="Js/sweetalert.min.js" type="text/javascript"></script>

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
            .edit{
                padding: 7px;
                color: white;
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
                            <button class="<%=UsuVO.getEstado().equals("Activo") ? "btn btn-success": "btn btn-danger" %>">
                                <%=UsuVO.getEstado()%>
                            </button>
                        </td>
                        <td><%=UsuVO.getCorreo()%></td>
                        <td><%=UsuVO.getClave()%></td>
                        <td>
                                <%=UsuVO.getIdTipoUsuario().equals("1") ? "Profesor" : "Estudiante"%>
                           </td>  
                        <td>
                             <a  class="btn btn-primary edit"href="cambiarEstado.jsp?usuid=<%=UsuVO.getUsuId()%>&estado=<%=UsuVO.getEstado()%>"><i class="fas fa-pen"></i></a>
                        </td>
                        <td>
                            <a class="btn btn-primary edit"href="actualizarUsuario.jsp?usuid=<%=UsuVO.getUsuId()%>&nombre=<%=UsuVO.getNombre()%>&apellido=<%=UsuVO.getApellido()%>&tipodoc=<%=UsuVO.getTipoDocumento()%>&numdoc=<%=UsuVO.getNumDocumento()%>&celular=<%=UsuVO.getCelular()%>&telefono=<%=UsuVO.getTelefono()%>&estado=<%=UsuVO.getEstado()%>&correo=<%=UsuVO.getCorreo()%>&clave=<%=UsuVO.getClave()%>&tipousu=<%=UsuVO.getIdTipoUsuario()%>"><i class="fas fa-pen"></i></a>
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

