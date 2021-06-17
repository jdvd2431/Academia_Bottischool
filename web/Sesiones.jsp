<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
    response.setDateHeader("Expires",0);
%>
<%
    HttpSession buscarSession = (HttpSession) request.getSession();
    String correo="";
    if (buscarSession.getAttribute("datos")==null) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }else{
            UsuarioVO usuVO = (UsuarioVO)buscarSession.getAttribute("datos");
            correo = usuVO.getCorreo();
    }
%>