<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dulce
  Date: 27/07/2023
  Time: 06:02 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin foros</title>


    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" >
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/styles.css " type= "text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/logo1.png">
    <style>
        #content{
            padding: 5px;
            overflow-y: scroll;
            width: 100%;
            height: 250px;
            overflow-y: scroll;
            border-radius: 10px;
            border: none;
            box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
        }
        #content::-webkit-scrollbar-thumb{
            background-color: #8081B7;
            width: 2px;
            border-radius: 3px;
        }
        #content::-webkit-scrollbar{
            width: 8px;
            background-color: #ffffff;
        }

        #contenido{
            padding: 5px;
            overflow-y: scroll;
            width: 100%;
            height: 250px;
            overflow-y: scroll;
            border-radius: 10px;
            border: none;
            box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
        }
        #contenido::-webkit-scrollbar-thumb{
            background-color: #8081B7;
            width: 2px;
            border-radius: 3px;
        }
        #contenido::-webkit-scrollbar{
            width: 8px;
            background-color: #ffffff;
        }
        .tittle{
            font-family: PT serif;
            font-size: 30px;
            font-weight: 200;
            margin-left: 20px;
        }
        #comments1{
            width: 100%;
            height: 100px;
            border: none;
            resize: none;
            box-sizing: border-box;
            font-family: PT serif;
            font-size: 14px;
            line-height: 1.5;
        }
        #comment{
            width: 100%;
            height: 50px;
            background-color: #ffffff;
            box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
            border-radius: 15px;
            border: none;
            resize: none;
            padding-left: 10px;
            padding-right: 10px;
            box-sizing: border-box;
            font-family: PT serif;
            font-size: 14px;
            line-height: 1.5;
        }
        #comment::-webkit-scrollbar{
            width: 8px;
        }
        #comment::-webkit-scrollbar-thumb{
            background-color: #8081B7;
            width: 2px;
            border-radius: 3px;
        }
        #comments2{
            width:100%;
            border-radius: 15px;
            max-height: 100px;
            overflow-y: scroll;
        }
        #comments2::-webkit-scrollbar{
            width: 8px;
        }
        #comments2::-webkit-scrollbar-thumb{
            background-color: #3dd5f3;
            width: 2px;
            border-radius: 3px;
        }
        #comments1::-webkit-scrollbar{
            width: 8px;
        }
        #comments1::-webkit-scrollbar-thumb{
            background-color: #8081B7;
            width: 2px;
            border-radius: 3px;
        }
        #comments{
            font-size: 14px;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            width:100%;
            border-radius: 15px;
            overflow-y: scroll;
        }
        #comments::-webkit-scrollbar{
            width: 8px;
        }
        #comments::-webkit-scrollbar-thumb{
            background-color: #8081B7;
            width: 2px;
            border-radius: 3px;
        }

    </style>


</head>
<body>



<div class="container-fluid">
    <nav id="nav" class="navbar navbar-expand-lg  navbar-static fixed-top">
        <div class="container-fluid" >
            <a class="navbar-brand" href="${pageContext.request.contextPath}/api/admin/home"><img src="${pageContext.request.contextPath}/assets/img/logo1.png" alt="" width="50px"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/api/admin/home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/api/admin/admin-user">Usuario</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/api/admin/admin-historias">Historias</a>
                    </li>
                </ul>
                <div  style="background-color:#8081B7; margin-left: 50%;padding: 10px;border-radius: 15px;color: white;font-family: PT serif;font-size: 16px;">
                    <a href="${pageContext.request.contextPath}/api/auth" class="nav-link"> Cerrar Sesión</a>
                </div>
            </div>
        </div>
    </nav>
</div>


<div class="container-fluid" id='cont'>
<div class="card">
    <div class="card-header">
        Administradores
        <button class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#saveAdmins">
            Crear ADministradores

        </button>
    </div>
</div>

</div>

<div class="card-body">
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Nombre Completo</th>
        <th scope="col">Correo</th>
    </tr>
    </thead>
    <thbody>
        <s:forEach items="${admin}" var="admin">
            <tr>
                <th>
                        ${admin.id}
                </th>
                <th>
                    <p>${admin.name} ${admin.lastname} ${admin.surname} </p>
                </th>
                <th>
                    <p>${admin.email}</p>
                </th>
            </tr>

        </s:forEach>
    </thbody>
</table>

</div>



<%--Modal ADmin--%>
<div class="modal fade" id="saveAdmins" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content ">
            <div class="modal-header">
                <div>
                    <div class="row">
                        <h3>¿Quien se encargara de esta comunidad?</h3>
                    </div>

                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                </div>

                <form id="formAdmin" action="${pageContext.request.contextPath}/api/admin/admins-save" method="post" class="needs-validation"
                      novalidate method="post">
                    <div class="row">
                        <div class="col md-4 lg-3 sm-6">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" name="name" id="name"
                                       placeholder="nombre" required>
                                <label for="name">ingresa tu nombre</label>
                                <div class="invalid-feedback text-start">
                                    Campo obligatorio
                                </div>
                            </div>
                        </div>

                    <div class="col md-4 lg-3 sm-6">
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" name="email" id="email"
                                   placeholder="name@example.com" required>
                            <label for="email">Correo electrónico</label>
                            <div class="invalid-feedback text-start">
                                Campo obligatorio
                            </div>
                        </div>
                    </div>

                    <div class="col md-4 lg-3 sm-6">
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

                    </div>
                    </div>
                    <div class="row">
                        <div class="col md-4 lg-3 sm-6">
                            <div class="form-floating mb-1">
                                <input type="text" name="surname" class="form-control" id="surname"
                                       placeholder="surname" required>
                                <label for="surname">Apellido Paterno</label>
                                <div class="invalid-feedback text-start">
                                    Campo obligatorio
                                </div>
                                <div class="form-group mb-3">
                                </div>
                            </div>

                        </div>

                        <div class="col md-4 lg-3 sm-6">
                            <div class="form-floating mb-1">
                                <input type="text" name="lastname" class="form-control" id="lastname"
                                       placeholder="lastname" required>
                                <label for="lastname">Apellido Materno</label>
                                <div class="invalid-feedback text-start">
                                    Campo obligatorio
                                </div>
                                <div class="form-group mb-3">
                                </div>
                            </div>

                        </div>
                        <div class="col md-4 lg-3 sm-6">
                            <div class="form-floating mb-1">
                                <input type="date" min="1900-01-01" max="2005-12-31" name="birthday" class="form-control" id="birthday"
                                       placeholder="birthday" required>
                                <label for="birthday">Fecha de nacimiento</label>
                                <div class="invalid-feedback text-start">
                                    Campo obligatorio
                                </div>
                                <div class="form-group mb-3"></div>
                            </div>
                        </div>

                    </div>

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
                <button type="button" onclick="registro()"  id="buttonAdmin" class="btn btn-primary"> Registrar </button>
            </div>
        </div>
    </div>
</div>
</div>

<script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js" ></script>
<script src="https://unpkg.com/feather-icons"></script>
<script>
    feather.replace()
</script>

<script>
    const formRegistro=document.getElementById("formAdmin");
    const botonRegistro=document.getElementById("buttonAdmin");

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
