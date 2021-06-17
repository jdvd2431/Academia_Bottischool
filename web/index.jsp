<%-- 
    Document   : index
    Created on : 10-may-2021, 9:32:21
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="Css/login.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión</title>
    </head>
    <body>
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
                    <h2>Login</h2>
                     <form method="POST" action="Usuario">
                        <div class="inputb">
                            <input type="text" name="txtUsuario" placeholder="Usuario">
                        </div>
                        <div class="inputb">
                            <input type="password" name="txtPassword" placeholder="Contraseña"  id="pass">
                        </div>
                        <ul class="error" id="error"></ul>
                        <div class="inputb">
                            <input type="submit" id="btn" value="Entrar">
                             
                              <input type="hidden" value="3" name="opcion">
                        </div>
                        <p class="cuenta">Aún no tienes cuenta?           <a href="registrarUsuario.jsp">Registrate</a></p>
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
