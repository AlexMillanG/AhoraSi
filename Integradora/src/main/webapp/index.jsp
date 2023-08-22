<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <jsp:include page="layouts/head.jsp"/>
</head>

<body style="
      width:95%;
      height: 100%;
      background: radial-gradient(137.13% 461.11% at 111.16% 113.45%, #8081B7 4.19%, #75BEF3 45.31%, #57F3C4 81.99%) /* warning: gradient uses a rotation that is not supported by CSS and may not behave as expected */;
      ">
<div class="container-fluid" style="
    		font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
		position: relative;
		margin-left:3%;
		margin-right:3%;
		margin-top:2%;
		background-color: rgba(255, 255, 255, 0.4);
		border-radius: 30px;
    ">
    <table class="table">
        <tr>
            <div class="container-fluid"style="font-family: PT serif ;
                  display: inline;
                  text-align: center;
                  margin-top: 0;">
                <nav class="navbar navbar-expand-lg navbar-light bg-light" style="border-radius: 30px 30px 0px 0px;
                background: var(--neutro, radial-gradient(481.07% 191.27% at 111.16% 113.45%, #8081B7 4.19%, #75BEF3 45.31%, #57F3C4 81.99%));
                box-shadow: 4px 4px 16px 0px rgba(0, 0, 0, 0.15);">
                    <img src="/assets/img/logo.png" alt="" width="250px" height="70px">
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
                        </ul>
                        <div class="container-fluid" style="margin-right: -30%; position: relative; float: right;">
                            <button  class="btn btn-outline-dark ms-3   " data-bs-toggle="modal" data-bs-target="#inicioSesion">
                                Iniciar sesion
                            </button>
                            <button class="btn btn-outline-dark ms-3  "  data-bs-toggle="modal" data-bs-target="#registro">
                                Registrarse
                            </button>
                        </div>
                    </div>
                </nav>
            </div>

            <div  class="container-fluid" style="  		background: rgb(255, 255, 255);
          float: left;
          position: relative;
          border-radius: 0px 0px 30px 30px;

          margin-top: -22px;
                  ">
                <div
                        style="
                  background: rgb(255, 255, 255);
                  margin-top: 3%;
                  border-radius: 15px;
                  height: 100%;
                  width: 100%;
                  "
                        class="container-fluid">
                    <div class="card mb-3" style="max-width:850 px;">
                        <div class="row g-0">
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title"style="font-family:PT serif; "><strong>HistoriUtez</strong></h5>
                                    <p class="card-text" style="text-align: center; font-size: 25px; font-family: PT serif;">Comparte tus Historias,Inspira al Mundo:La Plataforma
                                        que da vida a tus relatos y conecta corazones
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-4" style="height: auto; width: auto;">
                                <img src="/assets/img/leer.png" alt=""  class="img-fluid rounded-start" width="250px" height="70px">
                            </div>
                        </div>
                    </div>
                    <div class="card mb-3" style="max-width:850 px;">
                        <div class="row g-0">
                            <div class="col-md-8">
                                <div class="col-md-4" style="height: auto; width: auto;">
                                    <img src="/assets/img/logo1.png" alt=""  class="img-fluid rounded-start" width="250px" height="70px">
                                </div>
                                <div class="card-body">
                                    <p class="card-text" style="text-align: center; font-size: 25px; font-family: PT serif;"
                                    >"Sumèrjete en un oceano de historias facinantes y dèjate llevar por la magia de la ficciòn en cada publicaciòn "
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
</div>
</tr>
</thead>
</table>
</div>

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
                      novalidate method="post" enctype="multipart/form-data" novalidate>>
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
                            <input type="email" class="form-control" name="emailRegistro" id="emailRegistro"
                                   placeholder="name@example.com" required>
                            <label for="emailRegistro">Correo electrónico</label>
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
                            <p></p>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" value="mujer" checked name="sex" id="mujer" mujer>
                            <label class="form-check-label" for="mujer">
                                Mujer
                            </label>
                        </div>
                    </div>
                    <label for="img1">Imagen</label>
                    <input type="file" class="form-control" id="img1"
                           name="fileCategory" accept="image/*" onchange="handleFileChange1()">
                    <div class="col-12 mt-5" id="preview1"></div>



                </form>


            </div>
            <div class="modal-footer">
                <button type="button" onclick="registro()"  id="botonRegistro" class="btn btn-primary"> Registrar </button>
            </div>
        </div>
    </div>
</div>
</div>


<jsp:include page="/layouts/footer.jsp"/>
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

    const handleFileChange1 = () => {
        const inputFile = document.getElementById("img1").files;
        let preview = document.getElementById("preview1");
        preview.innerHTML = "";
        for (let i = 0; i < inputFile.length; i++) {
            let reader = new FileReader();
            reader.onloadend = (result) => {
                preview.innerHTML = "<img src='" + result.target.result
                    + "' style='height: 200px;width: auto;'/>";
            }
            reader.readAsDataURL(inputFile[i]);
        }
    }
    function registro(){
        if(formRegistro.checkValidity()){
            console.log("a"+formRegistro.value)
            console.log("antes del submint")
            formRegistro.submit();
            console.log("A"+formRegistro.value);
            console.log("despues del submint")

        }

    }
</script>
</body>
</html>