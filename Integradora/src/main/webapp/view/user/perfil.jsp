<%--
  Created by IntelliJ IDEA.
  User: Jesus
  Date: 07/08/2023
  Time: 10:38 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <jsp:include page="/layouts/head.jsp"/>
</head>
<body>
<jsp:include page="/layouts/navbar.jsp"/>

<div class="container mt-5">
  <h1>Perfil de Usuario</h1>
  <form>
    <div class="form-group">
      <input hidden value="${user1.id}">
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
    <button type="submit" class="btn btn-primary">Guardar Cambios</button>
    <button type="button" class="btn btn-secondary">Cancelar</button>
  </form>
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


<jsp:include page="/layouts/footer.jsp"/>
</body>
</html>
