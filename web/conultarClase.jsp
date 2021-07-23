<%-- 
    Document   : conultarClase.jsp
    Created on : 25/06/2021, 02:40:36 PM
    Author     : Sebas
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.ClaseDAO"%>
<%@page import="ModeloVO.ClaseVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Clases</h1>
        <form>
            
            <table border="1px">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Estado</th>
                    <th>Cantidad de Sesiones</th>
                </tr>
                <%
                ClaseVO ClaVO= new ClaseVO();
                ClaseDAO ClaDAO = new ClaseDAO(ClaVO);
                ArrayList<ClaseVO>listaClase=ClaDAO.listar();
                for (int i = 0; i < listaClase.size(); i++) {
                    
                    ClaVO = listaClase.get(i);

                %>               
                <tr>
                    <td><%=ClaVO.getIdClase()%></td>
                    <td><%=ClaVO.getNombre()%></td>
                    <td><%=ClaVO.getEstado()%></td>
                    <td><%=ClaVO.getCantidadSesiones()%></td>
                </tr>
                <%}%>              
            </table>          
        </form>
    </body>
</html>
