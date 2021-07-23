<%-- 
    Document   : registrarUsuario
    Created on : 18/06/2021, 08:41:45 PM
    Author     : David
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloDAO.MostrarDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloVO.AsistenciaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" />
         <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap5.min.css" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
        <link href="Css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="Js/sweetalert.js" type="text/javascript"></script>
        <script src="Js/sweetalert.min.js" type="text/javascript"></script>
        <title>Registrar Grupo</title>
    </head>
    <body>

    <center>
        
        <form method="post">
            <table id="example" class="table table-striped" style="width:100%">
        <thead>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                
            </tr>
        </thead>
        <tbody>
                <%
                    UsuarioVO UsuVO = new UsuarioVO();
                    UsuarioDAO UsuDAO = new UsuarioDAO(UsuVO);
                    ArrayList<UsuarioVO> listaRoles = UsuDAO.roles();
                    {

                       

                %>

                <tr>
                    <td><%=UsuVO.getNombre()%></td>
                    <td><%=UsuVO.getApellido()%></td>
                   
                </tr>
                <%}%>
        </tbody>
        <tfoot>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                
            </tr>
        </tfoot>
    </table>
        </form>
    </center> 
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
                        window.location = "registrarAsistencia.jsp";
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
                        window.location = "registrarAsistencia.jsp";
                    });
        </script>
        <%}%>
    </div>
    <script>
    $(document).ready(function() {
    $('#example').DataTable();
} );
</script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap5.min.js"></script>
</body>
<script>
    $(document).ready(function() {
    $('#example').DataTable();
} );
</script>
</html>