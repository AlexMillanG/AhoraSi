<%--
  Created by IntelliJ IDEA.
  User: uriel
  Date: 21/07/2023
  Time: 09:28 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container-fluid">
    <nav id="nav" class="navbar navbar-expand-lg  navbar-static fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="http:///34196.17.66/Integradora-1.0-SNAPSHOT/api/user/home"><img src="http:///34196.17.66/Integradora-1.0-SNAPSHOT/assets/img/logo1.png" alt=""
                                                               width="50px"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                    aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="http:///34196.17.66/Integradora-1.0-SNAPSHOT/api/user/home">Home</a>
                    </li>
                    <li class="nav-item">
                        <form action="http:///34196.17.66/Integradora-1.0-SNAPSHOT/api/user/perfil">
                            <input hidden value="${user.id}" name="id">
                            <button class="btn btn-link-dark" type="submit">
                                Perfil
                            </button>
                        </form>
                    </li>

                </ul>
                <div style="background-color:#8081B7; margin-left: 50%;padding: 10px;border-radius: 15px;color: white;font-family: PT serif;font-size: 16px;">
                    <a href="http:///34196.17.66/Integradora-1.0-SNAPSHOT/api/auth" class="nav-link"> Cerrar Sesión</a>
                </div>
            </div>
        </div>
    </nav>
</div>
