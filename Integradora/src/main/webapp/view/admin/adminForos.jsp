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
<jsp:include page="../../layouts/head.jsp"/>
</head>
<body>

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


<div class="modal fade" id="saveAdmins" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content ">
            <div class="modal-header">
                <div>
                    <div class="row">
                        <h3>¿Quien dirigira esta comunidad?</h3>
                    </div>

                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                </div>

                <form id="formregistrer" action="/api/admin/admins-save" method="post" class="needs-validation"
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

<jsp:include page="../../layouts/navbarAdmin.jsp"/>
<jsp:include page="../../layouts/footer.jsp"/>
</body>
</html>
