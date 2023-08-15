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
                        <jsp:include page="../../layouts/navbarSupeadmin.jsp"/>
                        <div class="card-body">
                            <s:if test="user.isEmpty()">
                                <div class="row">
                                    <div class="col">
                                        <h3>Sin registros</h3>
                                    </div>
                                </div>
                            </s:if>
                            <div class="card-text">
                                <table class="table table-stripped">
                                    <thead>
                                    <th>#</th>
                                    <th>Nombre</th>
                                    <th>Correo</th>
                                    <th>Sexo</th>
                                    <th>Acción</th>
                                    </thead>
                                <s:forEach var="user" items="${users1}" varStatus="s">

                                <tbody>
                                <tr>
                                    <td>
                                        <c:out value="${s.count}"/>
                                    </td>
                                    <td>
                                        <c:out value="${user.name}"/> <c:out
                                            value="${user.surname}"/> <c:out value="${user.lastname}"/>
                                    </td>
                                    <td>
                                        <c:out value="${user.email}"/>
                                    </td>
                                    <td>
                                        <c:out value="${user.sex}"/>
                                    </td>
                                    <td>
                                        <button data-bs-toggle="modal" data-bs-target="#updateUsers" type="button" class="btn btn-outline-warning"  id="editar"
                                                onclick="prueba('${user.id}|${user.name}|${user.email}|${user.pass}|${user.lastname}|${user.surname}|${user.birthday}|${user.sex}')" name="editar"
                                        ><i data-feather="edit-3"></i>Editar</button>

                                        <form method="post" action="/api/user/super-delete">
                                            <input hidden value="${user.id}" name="id">
                                            <button type="submit" class="btn btn-outline-danger btn-sm">
                                                <i data-feather="user-x"></i>
                                                ELIMINAR
                                            </button>

                                        </form>
                                    </td>
                                </tr>
                                </s:forEach>

                                </tbody>
                            </table>
                            </div>

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
                <p  style="font-family: PT serif; text-align: center; font-size: 30px;">Actualizar informacion</p><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                    <form id="form" action="/api/user/update" method="post" class="needs-validation" novalidate method="post">
                    <div class="row">
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input id="id" name="id" class="form-control" >
                                <label for="id"> id</label>
                                <input type="text"   name="name" id="name"
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
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" value="mujer" checked name="sex" id="mujer" mujer>
                            <label class="form-check-label" for="mujer">
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
            </div>
        </div>
        </div>
    </div>
</div>

</div><jsp:include page="../../layouts/footer.jsp"/>

<script>
const  form=document.getElementById("form")
const btn=document.getElementById("updateUserbtn")
var id=document.getElementById("id");


function prueba(user){
    var valores = user.split("|");
    var id=valores[0];
    var name = valores[1];
    var correo = valores[2];
    var password =valores[3];
    var surname=valores[4];
    var lastname=valores[5];
    var birthday=valores[6];
    var sex=valores[7];
    console.log("hola "+user);
    console.log("hola1 "+valores);
    console.log("hola2 "+name);
    document.getElementById("id").value=id;
    document.getElementById("name").value = name;
    document.getElementById("emailRegistro").value= correo;
    document.getElementById("pass").value= password;
    document.getElementById("surname").value= surname;
    document.getElementById("lastname").value= lastname;
    document.getElementById("birthday").value= birthday;
    document.getElementsByTagName("sex").value=sex;
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
</script>
</body>
