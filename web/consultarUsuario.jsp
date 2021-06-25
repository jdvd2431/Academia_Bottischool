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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Usuarios</h1>
        <form method="POST" action="Usuario">
            <table>
                <tr>
                    <th>
                        Nombre
                        <input type="text" name="textNombre">
                        <button>CONSULTAR</button>
                    </th>
                </tr>
            </table><br><br>
            <input type="hidden" value="4" name="opcion">
        </form><br><br>
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
        </div><br><br>
        <form>
            
            <table border="1px">
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
                </tr>
                <%
                UsuarioVO UsuVO= new UsuarioVO();
                UsuarioDAO UsuDAO=new UsuarioDAO(UsuVO);
                ArrayList<UsuarioVO>listaUsuario=UsuDAO.listar();
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
                    <td><%=UsuVO.getEstado()%></td>
                    <td><%=UsuVO.getCorreo()%></td>
                    <td><%=UsuVO.getClave()%></td>
                    <td><%=UsuVO.getIdTipoUsuario()%></td>           
                </tr>
                <%}%>              
            </table>       
    </body>
</html>
