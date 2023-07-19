<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <jsp:include page="layouts/head.jsp"/>
</head>
<body>


<nav class="navbar navbar-expand-lg bg-body-tertiary"
    style=" background: radial-gradient(137.13% 461.11% at 111.16% 113.45%, #8081B7 4.19%, #75BEF3 45.31%, #57F3C4 81.99%);">

    <div class="container-fluid">
        <a class="navbar-brand" href="/index.jsp">History Utez eaa</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll"
                aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Foros</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Perfil</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Crear
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Nueva historia</a></li>
                        <li>
                            <button class="btn btn-outline-dark ms-3  " data-bs-toggle="modal"
                                    data-bs-target="#crearForo">Nuevo Foro</button></li>
                    </ul>
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


<%-- chingadera de crear foro --%>
<div class="modal fade" id="crearForo" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content ">
            <div class="modal-header">
                <div>
                    <div class="row">
                        <h3>¿A quienes quieres unir hoy?</h3>
                    </div>

                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <h5 class="modal-title" id="datos">Crea tu foro!</h5>
                </div>
                <form id="registrer" action="/api/auth" class="needs-validation"
                      novalidate method="post">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="nombre" id="nombre"
                               placeholder="Foro para platicar sobre los ejemplos ^^ " required>
                        <label for="nombre">Nombre del foro</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                    </div>
                    <div class="form-floating mb-1">
                        <input type="text" name="categoria" class="form-control" id="categoria"
                               placeholder="En que lo puedes asociar?" required>
                        <label for="categoria">Ingresa la categoria</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                        <div class="form-group mb-3">
                        </div>
                    </div>

                    <div class="form-floating mb-1">
                        <input type="text" name="descripcion" class="form-control" id="descripcion"
                               placeholder="De que tratará tu foro?" required>
                        <label for="descripcion">Ingresa la descripcion</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                        <div class="form-group mb-3">
                        </div>
                    </div>

                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">Solicitar la creación del foro</button>
            </div>
        </div>
    </div>
</div>
</div>

<div class="container">


<jsp:include page="layouts/footer.jsp"/>

</body>
</html>