<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: uriel
  Date: 25/07/2023
  Time: 09:58 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Administrador home</title>
    <link href="../../assets/css/style.css" rel="stylesheet" type="text/css">
    <jsp:include page="/layouts/head.jsp"/>
</head>
<body>
'<jsp:include page="/layouts/navbarAdmin.jsp"/>
'
<div class="container-fluid">
    <div class="row">
        <div class="card">
            <div class="card-header">
                <div class="text-center fs-4">
                    Bienvenido de nuevo Super Admin
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <div class="text-center fs-3">
                        Usuarios
                    </div>
                    <div class="card-body">

                        <div class="car-text">
                            <s:forEach var="user" items="${users1}" varStatus="s">

                        </div>

                        <table class="table table-stripped">
                            <thead>
                            <th>#</th>
                            <th>Nombre</th>
                            <th>Correo</th>
                            <th>Sexo</th>
                            <th>Acción</th>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <c:out value="${s.count}"/>
                                </td>
                                <td>
                                    <c:out value="${user.name}"/> <c:out value="${user.lastname}"/> <c:out
                                        value="${user.surname}"/>
                                </td>
                                <td>
                                    <c:out value="${user.email}"/>
                                </td>
                                <td>
                                    <c:out value="${user.sex}"/>
                                </td>
                                <td>
                                    <input hidden value="${user.id}" name="id">
                                    <button type="button" data-bs-toggle="modal" data-bs-target="#updateUsers" value=""
                                            class="btn btn-outline-warning btn-sm">
                                        EDITAR
                                    </button>

                                    <form method="post" action="/api/user/delete">
                                        <input hidden value="${user.id}" name="id">
                                        <button type="submit" class="btn btn-outline-danger btn-sm">ELIMINAR
                                        </button>

                                    </form>
                                </td>
                            </tr>
                            </s:forEach>
                            <tr>
                                <td colspan="6">
                                    Sin registros
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>

        </div>
        <div class="col-lg-6 col-md-6 col-sm-12">
        </div>
    </div>



    <!--form de creación de admins-->

    <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <div class="text-center fs-3">
                        Usuarios
                    </div>
                    <div class="card-body">
                        <div class="car-text">
                            jdkdjakdjajd
                        </div>
                    </div>

                </div>
            </div>

        </div>
        <div class="col-lg-6 col-md-6 col-sm-12">
        </div>
    </div>





    <!-- Modal -->
    <div class="modal fade" id="updateUsers" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Acutualizar Usuario</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="update" action="/api/user/update" method="post" class="needs-validation"
                          novalidate method="post">
                        <div class="row">
                            <div class="col">
                                <div class="form-floating mb-3">

                                    <label for="name">nombre</label>
                                    <input type="text" class="form-control" name="name" id="name"
                                           placeholder="nombre" required value="${user.name}">
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
                            <input type="date" min="1900-01-01" max="2005-12-31" name="birthday" class="form-control"
                                   id="birthday"
                                   placeholder="birthday" required>
                            <label for="birthday">Fecha de nacimiento</label>
                            <div class="invalid-feedback text-start">
                                Campo obligatorio
                            </div>
                            <div class="form-group mb-3"></div>
                        </div>
                        <br>

                        <div class="form-floating mb-1">
                            <p>Ingresa el sexo</p>
                            <br>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="hombre" name="sex" id="hombre">
                                <label class="form-check-label" for="hombre">
                                    Hombre
                                </label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="mujer" name="sex" id="mujer" mujer>
                                <label class="form-check-label" for="mujer">
                                    Mujer
                                </label>
                            </div>
                        </div>


                    </form>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Understood</button>
                </div>
            </div>
        </div>
    </div>

</div>


<jsp:include page="/layouts/footer.jsp"/>
<script>
    const agregarB = document.getElementById("agregar");
    const form2 = document.getElementById("updateUsers");

    (function () {
        agregarB.addEventListener("click", function (event) {
            console.log(form.checkValidity());

            if (!form.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
            }
            form.classList.add("was-validated")
        }, false);

    })();


</script>

</body>
</html>
