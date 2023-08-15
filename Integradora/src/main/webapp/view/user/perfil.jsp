<%--
  Created by IntelliJ IDEA.
  User: Jesus
  Date: 07/08/2023
  Time: 10:38 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <jsp:include page="/layouts/head.jsp"/>
</head>
<body>
<jsp:include page="/layouts/navbar.jsp"/>

<div class="container mt-5">
  <div class="col-md-6 p-4 ps-md-0">
    <c:forEach var="Stories" items="${Stories}">
      <h4 class="mt-0"><c:out value="${Stories.title}"/></h4>
      <p><c:out value="${Stories.content}"/></p>
      <form action="/api/user/delete-story" method="post">
        <input name="id" hidden value="${Stories.id}">
        <button type="submit" >Eliminar Mi historia</button>
      </form>
    </c:forEach>
<c:forEach var="Shared" items="${Shared}">
  <h4><c:out value="${Shared.getStories().getTitle()}"/></h4>
  <h5>Por: <c:out value="${Shared.getUser().getName()}"/> <c:out value="${Shared.getUser().getLastname()}"/> <c:out value="${Shared.getUser().getSurname()}"/></h5>
  <p><c:out value="${Shared.getStories().getContent()}" /></p>
  <form action="/api/user/delete-shared" method="post">
  <input hidden value="${Shared.getUser().getId()}" name="user_id">
  <input hidden value="${Shared.getStories().getId()}" name="story_id">
  <button type="submit">Eliminar Compartido</button>
  </form>
</c:forEach>


  </div>
  <h1>Perfil de Usuario</h1>
  <form>
    <div class="form-group">
      <label for="nombre">Nombre:</label>
      <input type="text" class="form-control" id="nombre" value="${user1.name}">
    </div>
    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="apellidoPaterno">Apellido Paterno:</label>
        <input type="text" class="form-control" id="apellidoPaterno" value="${user1.surname}">
      </div>
      <div class="form-group col-md-6">
        <label for="apellidoMaterno">Apellido Materno:</label>
        <input type="text" class="form-control" id="apellidoMaterno" value="${user1.lastname}">
      </div>
    </div>
    <div class="form-group">
      <label for="edad">Edad:</label>
      <input type="number" class="form-control" id="edad" placeholder="Ingrese su edad">
    </div>
    <div class="form-group">
      <label for="fechaNacimiento">Fecha de Nacimiento:</label>
      <br>
      <br>
      <input type="date" class="form-control" id="fechaNacimiento" value="${user1.birthday}">
    </div>
    <div class="form-group">
      <input type="text" class="form-control" value="${user1.sex}">
    </div>
    <div class="form-group">
      <label for="fotoPerfil">Foto de Perfil:</label>
      <input type="file" class="form-control-file" id="fotoPerfil">
      <img id="preview" class="mt-2" style="max-width: 200px;" src="#" alt="Vista previa de la imagen">
    </div>
    <button data-bs-toggle="modal" data-bs-target="#updateUsers" type="button" class="btn btn-outline-warning"  id="editar"
            onclick="prueba('${user1.id}|${user1.name}|${user1.email}|${user1.pass}|${user1.lastname}|${user1.surname}|${user1.birthday}|${user1.sex}')" name="editar"
    ><i data-feather="edit-3"></i>Editar</button>    <button type="button" class="btn btn-secondary">Cancelar</button>
  </form>
</div>

<div class="modal fade" id="updateUsers" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" >
  <div class="modal-dialog modal-lg" >
    <div class="modal-content">
      <div class="modal-header">
        <p  style="font-family: PT serif; text-align: center; font-size: 30px;">Actualizar informacion</p><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="form" action="/api/user/update-plus" method="post" class="needs-validation" novalidate method="post">
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



<!-- Enlace a Bootstrap JS y Popper.js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
  // Mostrar vista previa de la imagen seleccionada
  $("#fotoPerfil").change(function () {
    const reader = new FileReader();
    reader.onload = function (e) {
      $("#preview").attr("src", e.target.result);
    }
    reader.readAsDataURL(this.files[0]);
  });
</script>
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

<jsp:include page="/layouts/footer.jsp"/>
</body>
</html>
