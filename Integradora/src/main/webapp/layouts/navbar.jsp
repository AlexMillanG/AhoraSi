<%--
  Created by IntelliJ IDEA.
  User: uriel
  Date: 21/07/2023
  Time: 09:28 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<nav style="font-family: PT serif ;margin-bottom: 15px;" id="nav" class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid" >
        <a class="navbar-brand" href="/api/user/home">HITU</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="../html/index-SuperAdmin.html">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="usuario-SuperAdmin.html">Usuario</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../html/Historias-SuperAdmin.html">Historias</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Foros</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Mas-SuperAdmin.html">Mas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/index.jsp">Cerrar sesión</a>
                </li>

            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="¿Que vas a buscar hoy?" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Buscar</button>
            </form>
        </div>
    </div>
</nav>
