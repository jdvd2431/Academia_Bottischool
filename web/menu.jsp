<%-- 
    Document   : Menu
    Created on : 16/06/2021, 09:22:07 PM
    Author     : Julian
--%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp" %>

<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Menu</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link rel="stylesheet" href="Css/menu.css">

</head>

<body>

    <input type="checkbox" id="check">
    <label for="check">
        <i class="fas fa-bars" id="btn"></i>
        <i class="fa fa-chevron-circle-left" id="cancel"></i>
    </label>
    <div class="sidebar">
        <header>
            <p id="titulo" class="animation">Academia Bottischool</p>
        </header>
        <ul >
            <li><a href="#"><i class="fas fa-qrcode"></i>Horario</a></li>
            <li><a href="#"><i class="fa fa-user-plus"></i>Usuario</a></li>
            <li><a href="#"><i class="fas fa-stream"></i>Buscar</a></li>
            <li class="animation">
                <form method="post" action="Sesiones">
                    <input class="cerrar" type="submit" value="Cerrar Sesion">
                </form>
            </li>
        </ul>
    </div>
    <section>
        <div class="container">
            <div class="item uno ">
               <p class="titulo2">Fotos Academia</p> 
               <img src="img/img.jpg"width="200px" height="200px" alt="" srcset="">
            </div>
            <div class="item dos">
                <p class="titulo2">Fotos Academia</p>
                <img src="img/img2.png" width="200px" height="200px" alt="" srcset=""> 
            </div>
            <div class="item tres">
                <p class="titulo2">Fotos Academia</p> 
                <img src="img/img3.jpg" width="200px" height="200px" alt="" srcset="">
            </div>
        </div>
    </section>

</body>

</html>

