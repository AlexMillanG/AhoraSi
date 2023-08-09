<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<jsp:include page="../../layouts/navbarSupeadmin.jsp"/>

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
        <th scope="col">#</th>
        <th scope="col">Nombre Completo</th>
        <th scope="col">Correo</th>
        <th scope="col">Acciones</th>
    </tr>
    </thead>
    <thbody>
        <s:if test="users.isEmpty()">
            <div class="row">
                <div class="col">
                    <h3>Sin registros</h3>
                </div>
            </div>
        </s:if>
        <s:forEach items="${admin}" var="admin"  varStatus="s">
            <tr>
                <td>
                    <c:out value="${s.count}"/>
                </td>
                <td>
                    <p>${admin.name} ${admin.lastname} ${admin.surname} </p>
                </td>
                <td>
                    <p>${admin.email}</p>
                </td>
                <td>
                    <button data-bs-toggle="modal" data-bs-target="#updateUsers" type="button" class="btn btn-outline-warning"  id="editar"
                            onclick="prueba('${admin.id}|${admin.name}|${admin.email}|${admin.pass}|${admin.lastname}|${admin.surname}|${admin.birthday}|${admin.sex}')" name="editar"
                    ><i data-feather="edit-3"></i>Editar</button>
                    <form method="post" action="/api/superadmin/delete-admin">
                        <input hidden value="${admin.id}" name="id">
                        <button type="submit" class="btn btn-outline-danger btn-sm">ELIMINAR
                        </button>

                    </form>
                </td>
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

                <form id="formAdmin" action="/api/admin/admins-save" method="post" class="needs-validation"
                      novalidate method="post">
                    <div class="row">
                        <div class="col md-4 lg-3 sm-6">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" name="name1" id="name"
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
                                <input type="text" name="lastname1" class="form-control" id="lastname"
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
                                <input type="date" min="1900-01-01" max="2005-12-31" name="birthday1" class="form-control" id="birthday"
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


<div class="modal fade" id="updateUsers" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" >
    <div class="modal-dialog modal-lg" >
        <div class="modal-content">
            <div class="modal-header">
                <p  style="font-family: PT serif; text-align: center; font-size: 30px;">Actualizar informacion</p><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="form" action="/api/superadmin/update-admin" method="post" class="needs-validation" novalidate method="post">
                    <div class="row">
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input id="id" name="id" class="form-control" >
                                <label for="id"> id</label>
                                <input type="text"   name="name1" id="name1"
                                       placeholder="nombre" required>
                                <label for="name1">ingresa tu nombre</label>
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
                        <input type="password" name="pass1" class="form-control" id="pass1"
                               placeholder="name" required>
                        <label for="pass1">Contraseña</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                        <div class="form-group mb-3">
                        </div>
                    </div>

                    <div class="form-floating mb-1">
                        <input type="text" name="surname1" class="form-control" id="surname1"
                               placeholder="surname" required>
                        <label for="surname1">Apellido</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                        <div class="form-group mb-3">
                        </div>
                    </div>

                    <div class="form-floating mb-1">
                        <input type="text" name="lastname1" class="form-control" id="lastname1"
                               placeholder="lastname" required>
                        <label for="lastname1">Segundo Apellido</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                        <div class="form-group mb-3">
                        </div>
                    </div>

                    <div class="form-floating mb-1">
                        <input type="date" min="1900-01-01" max="2005-12-31" name="birthday1" class="form-control" id="birthday1"
                               placeholder="birthday" required>
                        <label for="birthday1">Fecha de nacimiento</label>
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
                            <input class="form-check-input" type="radio" value="hombre" name="sex" id="hombre1">
                            <label class="form-check-label" for="hombre1">
                                Hombre
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" value="mujer" checked name="sex" id="mujer1" mujer>
                            <label class="form-check-label" for="mujer1">
                                Mujer
                            </label>
                        </div>
                    </div>
                    <button type="button" id="updateUserbtn" onclick="upSendForm()"
                            class="btn btn-outline-success btn-sm">
                        <i data-feather="check"></i> Aceptar
                    </button>

                    <button class="btn btn-outline-danger btn-sm"type="button" data-bs-dismiss="modal">
                        <i data-feather="x"></i>
                        Cancelar
                    </button>
                </form>
                </form>
            </div>
        </div>
    </div>
</div>
</div>



<jsp:include page="../../layouts/footer.jsp"/>
<script>
    const formRegistro=document.getElementById("formAdmin");
    const botonRegistro=document.getElementById("buttonAdmin");
    const  form=document.getElementById("form")
    const btn=document.getElementById("updateUserbtn")


    function prueba(admin) {
        var valores = admin.split("|");
        var id = valores[0];
        var name = valores[1];
        var correo = valores[2];
        var password = valores[3];
        var surname = valores[4];
        var lastname = valores[5];
        var birthday = valores[6];
        var sex = valores[7];
        console.log("hola " + admin);
        console.log("hola1 " + valores);
        console.log("hola2 " + name);
        document.getElementById("id").value = id;
        document.getElementById("name1").value = name;
        document.getElementById("emailRegistro").value = correo;
        document.getElementById("pass1").value = password;
        document.getElementById("surname1").value = surname;
        document.getElementById("lastname1").value = lastname;
        document.getElementById("birthday1").value = birthday;
        document.getElementsByTagName("sex").value = sex;
    }

    (function () {
        btn.addEventListener("click",function (event){
            console.log(form.checkValidity());

            if(!form.checkValidity()){
                event.preventDefault();
                event.stopPropagation();
            }

            form.classList.add("was-validated")
        }, false);

    })();

    function upSendForm() {
        if(form.checkValidity()){
            console.log("a "+document.getElementById("name").value);
            var id = document.getElementById("id");
            console.log("aa "+id.value);
            var nombre = document.getElementById("name");
            console.log("aaa "+nombre.value);
            console.log(document.getElementById("form").value);
            console.log(form.checkValidity());
            form.submit();
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
