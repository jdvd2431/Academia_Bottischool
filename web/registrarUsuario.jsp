<%-- 
    Document   : registrarUsuario
    Created on : 18/06/2021, 08:41:45 PM
    Author     : Julian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Css/login.css" rel="stylesheet" type="text/css"/>

        <title>JSP Page</title>
    </head>
    <body>
       <nav>
        <ul>
            <li><a href="index.jsp" class="btn-bk">Atrás</a></li>
      </nav>
       <section>
        <div class="entra"></div>
        <div class="entra"></div>
        <div class="entra"></div>
        <div class="box">
            <div class="square" style="--i:0;"></div>
            <div class="square" style="--i:1;"></div>
            <div class="square" style="--i:2;"></div>
            <div class="square" style="--i:3;"></div>
            <div class="square" style="--i:4;"></div>
            <div class="container">
                <div class="form">
                    <h2 for="usu">Registrar Usuario</h2>
                     <form method="POST" action="Usuario">
                        <div class="inputb">
                            <p class="cuenta" for="usu">Usuario</p>
                            <input type="text" name="txtUsuario" placeholder="Usuario" id="usu">
                        </div>
                        <div class="inputb">
                            <p class="cuenta" for="pass">Contraseña</p>
                            <input type="password" name="txtPassword" placeholder="Contraseña"  id="pass">
                        </div>
                         
                        <ul class="error" id="error"></ul>
                        <div class="inputb">
                            <input type="submit" id="btn" value="Registrar">
                              <input type="hidden" value="1" name="opcion">
                        </div>
                       
                    </form>
                </div>
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
        </div>
            </div>
        </div>
    </section>

    </body>
</html>
