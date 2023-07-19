<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <jsp:include page="layouts/head.jsp"/>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light"
     style=" background: radial-gradient(137.13% 461.11% at 111.16% 113.45%, #8081B7 4.19%, #75BEF3 45.31%, #57F3C4 81.99%);">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">HistoriUtez</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">¿Quienes somos?</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/home.jsp">¿Que puedes hacer con nosotros?</a>
                </li>
                <div class="d-line text-end" style="margin-left: 550px">
                    <li class="nav-item text-end">
                        <button class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#inicioSecion">
                            Iniciar sesion
                        </button>

                        <button class="btn btn-outline-dark ms-3  " data-bs-toggle="modal" data-bs-target="#registro">
                            <li class="text-end nav-item">
                                Registrarse
                        </button>
                </div>


            </ul>
        </div>
    </div>
</nav>

<div class="container">

    <!-- Modal -->
    <div class="modal fade" id="inicioSecion" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Inicio Seción</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="loginForm" action="home.jsp" class="needs-validation"
                          novalidate method="post">
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" name="username" id="username"
                                   placeholder="name@example.com" required>
                            <label for="username">Correo electrónico</label>
                            <div class="invalid-feedback text-start">
                                Campo obligatorio
                            </div>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="password" name="password" class="form-control" id="password"
                                   placeholder="Password" required>
                            <label for="password">Contraseña</label>
                            <div class="invalid-feedback text-start">
                                Campo obligatorio
                            </div>
                        </div>
                        <div class="form-group mb-3">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Iniciar sesion</button>
                    <button class="btn btn-outline-dark ms-3  " data-bs-toggle="modal"
                            data-bs-target="#registro">Registrate</button>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal registro -->
<div class="modal fade" id="registro" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content ">
            <div class="modal-header">
                <div>
                    <div class="row">
                        <h3>Se parte de nuestra comunidad</h3>
                    </div>

                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <h5 class="modal-title" id="datos">Registrarse</h5>
                </div>
                <form id="registrer" action="index.jsp.jsp" class="needs-validation"
                      novalidate method="post">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="correo" id="correo"
                               placeholder="name@example.com" required>
                        <label for="correo">Correo electrónico</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                    </div>
                    <div class="form-floating mb-1">
                    <input type="text" name="name" class="form-control" id="name"
                               placeholder="name" required>
                        <label for="name">Contraseña</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                    <div class="form-group mb-3">
                    </div>
                    </div>

                    <div class="form-floating mb-1">
                        <input type="text" name="surname" class="form-control" id="surname"
                               placeholder="surname" required>
                        <label for="name">Apellido</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                        <div class="form-group mb-3">
                        </div>
                    </div>

                    <div class="form-floating mb-1">
                        <input type="text" name="lastname" class="form-control" id="lastname"
                               placeholder="lastname" required>
                        <label for="name">Apellido</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                        <div class="form-group mb-3">
                        </div>
                    </div>
                </form>

                <!-- name
                 surname
                 lastname
                 email
                 pass
                 sex
                 -->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Iniciar sesion</button>
            </div>
        </div>
    </div>
</div>
</div>


<jsp:include page="layouts/footer.jsp"/>

</body>
</html>