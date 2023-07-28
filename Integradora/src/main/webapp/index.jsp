<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>

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
        <a class="navbar-brand" href="view/admin/superAdminHome.jsp">HistoriUtez</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">

            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="view/admin/adminHome.jsp">¿Quienes somos?</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/view/user/home.jsp">¿Que puedes hacer con nosotros?</a>
                </li>
            </ul>
            </ul>




            <button class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#inicioSesion">
                Iniciar sesion
            </button>
            <button class="btn btn-outline-dark ms-3  " data-bs-toggle="modal" data-bs-target="#registro">
                Registrarse
            </button>
        </div>

    </div>
</nav>





<div class="container">

    <!-- Modal Inicio Secion -->
    <div class="modal fade" id="inicioSesion" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Inicio Sesión</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                    <form id="loginForm" action="/api/auth" class="needs-validation"
                          novalidate method="post">
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" name="email" id="email"
                                   placeholder="name@example.com" required>
                            <label for="email">Correo electrónico</label>
                            <div class="invalid-feedback text-start">
                                Campo obligatorio
                            </div>
                        </div>

                        <div class="form-floating mb-3">
                            <input type="password" name="pass" class="form-control" id="password"
                                   placeholder="pass" required>
                            <label for="pass">Contraseña</label>
                            <div class="invalid-feedback text-start">
                                Campo obligatorio
                            </div>
                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <div class="form-group"></div>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" onclick="prueba()" class="btn btn-primary" id="login">Iniciar sesion</button>
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

                <form id="formregistrer" action="/api/user/save" method="post" class="needs-validation"
                      novalidate method="post">
                  <div class="row">
                      <div class="col">
                          <div class="form-floating mb-3">
                              <input type="text" class="form-control" name="name" id="name"
                                     placeholder="nombre" required>
                              <label for="name">ingresa tu nombre</label>
                              <div class="invalid-feedback text-start">
                                  Campo obligatorio
                              </div>
                          </div>
                          </div>
                  </div>

                    <div class="col">
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" name="email" id="emailRegistro"
                                   placeholder="name@example.com" required>
                            <label for="email">Correo electrónico</label>
                            <div class="invalid-feedback text-start">
                                Campo obligatorio
                            </div>
                        </div>
                    </div>



                    <div class="form-floating mb-1">
                    <input type="password" name="pass" class="form-control" id="pass"
                               placeholder="name" required>
                        <label for="pass">Contraseña</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                           <div class="form-group mb-3">
                     </div>
                    </div>



                    <div class="form-floating mb-1">
                        <input type="text" name="surname" class="form-control" id="surname"
                               placeholder="surname" required>
                        <label for="surname">Apellido</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                        <div class="form-group mb-3">
                        </div>
                    </div>



                    <div class="form-floating mb-1">
                        <input type="text" name="lastname" class="form-control" id="lastname"
                               placeholder="lastname" required>
                        <label for="lastname">Segundo Apellido</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                        <div class="form-group mb-3">
                        </div>
                    </div>
                    
                    <div class="form-floating mb-1">
                        <input type="date" min="1900-01-01" max="2005-12-31" name="birthday" class="form-control" id="birthday"
                            placeholder="birthday" required>
                        <label for="birthday">Fecha de nacimiento</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                        <div class="form-group mb-3"></div>
                    </div>
                    <br>

                    <div class="form-floating mb-1">
                        <p>Ingresa tu sexo</p>
                        <br>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" value="hombre" name="sex" id="hombre">
                            <label class="form-check-label" for="hombre">
                                Hombre
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" value="mujer" checked name="sex" id="mujer" mujer>
                            <label class="form-check-label" for="mujer">
                                Mujer
                            </label>
                        </div>
                    </div>


                </form>


            </div>
            <div class="modal-footer">
                <button type="button" onclick="registro()"  id="botonRegistro" class="btn btn-primary"> Registrar </button>
            </div>
        </div>
    </div>
</div>
</div>


<jsp:include page="layouts/footer.jsp"/>
<script>
    const agregar = document.getElementById("login");
    const form = document.getElementById("loginForm");
    const iniciar = document.getElementById("login");

    const formRegistro=document.getElementById("formregistrer");
    const botonRegistro=document.getElementById("botonRegistro");

    (function () {
        agregar.addEventListener("click",function (event){
            console.log(form.checkValidity());

            if(!form.checkValidity()){
                event.preventDefault();
                event.stopPropagation();
            }

            form.classList.add("was-validated")
        }, false);

    })();
    function prueba(){
        if(form.checkValidity()) {
            console.log("AntesSubmit");
            form.submit();
            console.log("DespuesSubmit");
        }
    }
    (function () {
        botonRegistro.addEventListener("click",function (event){
            console.log(formRegistro.checkValidity());

            if(!formRegistro.checkValidity()){
                event.preventDefault();
                event.stopPropagation();
                console.log("")
            }

            formRegistro.classList.add("was-validated")
        }, false);

    })();


    function registro(){
        if(formRegistro.checkValidity()){
            console.log(formRegistro.checkValidity())
            console.log("antes del submint")
            formRegistro.submit();
            console.log("despues del submint")

        }

    }
</script>
</body>
</html>