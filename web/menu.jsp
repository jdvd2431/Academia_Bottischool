<%-- 
    Document   : Menu
    Created on : 16/06/2021, 09:22:07 PM
    Author     : David
--%>
<%@include file="Sesiones.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="Sesiones">
                        <style>
                            .roles_cambiar{
                                width: 100%;
                                max-width: 200px;
                                height: 40px;
                                margin-left: 35px;
                                margin-top: 20px;
                                background: #FB6565;
                                color:white;
                            }
                            
                            input{
                                margin-top: 20px;
                                margin-left: 80px;
                                padding: 10px;
                                text-decoration: none;
                                background: #FB6565;
                                border: none;
                                color:white;
                            }
                            input:hover{
                                background: white;
                                color:black;
                                border-radius:10px ;
                            }
                        </style>
                        <input type="submit" value="Cerrar Sesión">
                    </form>
        <h1>Hello World!</h1>
    </body>
</html>
