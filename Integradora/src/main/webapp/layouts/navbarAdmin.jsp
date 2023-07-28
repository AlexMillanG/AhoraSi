<%--
  Created by IntelliJ IDEA.
  User: uriel
  Date: 25/07/2023
  Time: 10:48 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Usuarios Admin</title>
</head>
    <body>
    <div class="container-fluid">

        <nav id="nav" class="navbar navbar-expand-lg navbar-light bg-light" style="font-family: PT Serif; margin-bottom:5%;">
            <div class="container-fluid" >
                <a class="navbar-brand" href="/api/admin/home">HITU</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Usuario</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Historias</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Foros</a>
                        </li>
                        <li class="nav-item">
                            <a href="/api/auth" class="nav-link"> Cerrar Sesión</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Mas</a>
                        </li>
                        <li>
                            <form class="d-flex" role="search" style="float: right">
                                <input class="form-control me-2" type="search" placeholder="¿Que vas a buscar hoy?" aria-label="Search">
                                <button class="btn" type="submit">Buscar</button>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    </body>
</html>
