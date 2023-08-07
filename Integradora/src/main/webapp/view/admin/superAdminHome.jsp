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
    <jsp:include page="../../layouts/head.jsp"/>

</head>
<body>
<body>
<div class="container-fluid" id='cont'>
    <table class="table">
        <thead>
        <tr>
            <th scope="col" class="logo1">
                <img src="../../assets/img/logo.png" class="logo">
            </th>
            <th scope="col">
                <div class="container-fluid" style="
                background: rgb(255, 255, 255);
                float: left;
                position: relative;
                margin-top: 3%;
                border-radius: 15px;
                max-height: 100%;">
                    <div class="container-fluid" id="cont-2">
                        <jsp:include page="/layouts/navbarAdmin.jsp"/>
                        <div class="card-body">

                            <div class="car-text">
                                <table class="table table-stripped">
                                    <thead>
                                    <th>#</th>
                                    <th>Nombre</th>
                                    <th>Correo</th>
                                    <th>Sexo</th>
                                    <th>Acción</th>
                                    </thead>
                                <s:forEach var="user" items="${users2}" varStatus="s">

                            </div>

                            <table>
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
                                        <button data-bs-toggle="modal" data-bs-target="#updateUsers" type="button" class="btn btn-outline-warning"  id="editarr">Editar</button>
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
</th>
</tr>
</table>
</div>
<div class="modal fade" id="updateUsers" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" >
    <div class="modal-dialog modal-lg" >
        <div class="modal-content">
            <div class="modal-header">
                <p  style="font-family: PT serif; text-align: center; font-size: 30px;">Agregar Administrador</p>        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="updateForm" action="/api/user/update" method="post" class="needs-validation"
                      novalidate method="post">
                    <div class="row">
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input hidden value="" id="upId" name="id">

                                <label for="upName">nombre</label>
                                <input type="text" class="form-control" name="name" id="upName"
                                       placeholder="nombre" required value="${user.name}">
                                <div class="invalid-feedback text-start">
                                    Campo obligatorio
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" name="email" id="upEmail"
                                   placeholder="name@example.com" required>
                            <label for="upEmail">Correo electrónico</label>
                            <div class="invalid-feedback text-start">
                                Campo obligatorio
                            </div>
                        </div>
                    </div>

                    <div class="form-floating mb-1">
                        <input type="password" name="pass" class="form-control" id="upPass"
                               placeholder="name" required>
                        <label for="upPass">Contraseña</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                        <div class="form-group mb-3">
                        </div>
                    </div>

                    <div class="form-floating mb-1">
                        <input type="text" name="surname" class="form-control" id="upSurname"
                               placeholder="surname" required>
                        <label for="upSurname">Apellido</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                        <div class="form-group mb-3">
                        </div>
                    </div>

                    <div class="form-floating mb-1">
                        <input type="text" name="lastname" class="form-control" id="upLastname"
                               placeholder="lastname" required>
                        <label for="upLastname">Segundo Apellido</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                        <div class="form-group mb-3">
                        </div>
                    </div>

                    <div class="form-floating mb-1">
                        <input type="date" min="1900-01-01" max="2005-12-31" name="birthday"
                               class="form-control"
                               id="upBirthday"
                               placeholder="birthday" required>
                        <label for="upBirthday">Fecha de nacimiento</label>
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
                            <input class="form-check-input" type="radio" value="hombre" name="sex"
                                   id="hombre">
                            <label class="form-check-label" for="hombre">
                                Hombre
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" value="mujer" name="sex" id="mujer"
                                   mujer>
                            <label class="form-check-label" for="mujer">
                                Mujer
                            </label>
                        </div>
                    </div>
                    </form>
            </div>
        </div>
    </div>
</div>

</div><jsp:include page="../../layouts/footer.jsp"/>
</body>
