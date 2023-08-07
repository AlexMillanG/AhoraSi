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
                    <a class="nav-link active" aria-current="page" href="/api/user/home">Home</a>
                </li>
                <li class="nav-item">
                    <form action="/api/user/perfil">
                        <input hidden value="${user.id}" name="id">
                        <button class="btn btn-link-dark" type="submit">
                        Perfil
                        </button>
                    </form>

                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../html/Historias-SuperAdmin.html">Historias</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/api/auth">Cerrar sesión</a>
                </li>

            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="¿Que vas a buscar hoy?" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Buscar</button>
            </form>
        </div>
    </div>
</nav>
