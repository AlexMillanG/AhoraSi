<%--
  Created by IntelliJ IDEA.
  User: uriel
  Date: 25/07/2023
  Time: 10:48 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<nav class="navbar navbar-expand-lg bg-body-tertiary"
     style=" background: radial-gradient(137.13% 461.11% at 111.16% 113.45%, #8081B7 4.19%, #75BEF3 45.31%, #57F3C4 81.99%);">

    <div class="container-fluid">
        <a class="navbar-brand" href="/api/admin/home">History Utez</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll"
                aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="">usuarios</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Publicaciones</a>
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
</nav>