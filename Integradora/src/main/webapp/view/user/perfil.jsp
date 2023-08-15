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
<div class="container-fluid" id="cont">
  <table class="table" id="tabla">
    <tr>
      <th scope="col" id="conta" >
        <div  class="container-fluid" id="cont-2">
          <jsp:include page="../../layouts/navbar.jsp"/>
          <div class="card bg-white  text-dark" style="background-color: #FFF;border-radius: 30px 30px 0px 0px;margin-bottom: 30px;">
            <img src="../img/ol.jpg" class="card-img" alt="..." height="300px" style="border-radius: 30px 30px 0px 0px;opacity: 0.50;">
            <div class="card-img-overlay">
              <div style="float: right;">
                <table style="font-family: Pt serif;text-align: center;">
                  <tr>
                    <th><h5 style="font-size:25px; font-weight: 700;">13</h5></th>
                    <th><h5 style="font-size:25px;font-weight: 700; ">14</h5></th>
                  </tr>
                  <tr>
                    <th><h5 style="font-size: 15px; margin-right: 4px;">Me encantas</h5></th>
                    <th><h5 style="font-size: 15px;">Historias</h5></th>
                  </tr>
                </table>
              </div>
              <div class="container-fluid"style="text-align: center; margin-top: 10%;">
                <img src="../img/logo1.png" style="margin-bottom: 1%; width: 15%; border-radius: 100%; box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25); background-color: #FFF;">
                <div class="container-fluid"style=" text-align: center;">
                  <h5 style="font-family: PT serif; font-size:150%; font-weight: bold;">Gonzalez Arellano Dulce</h5>
                </div>
              </div>
            </div>
          </div>
          <div class="input-group mb-3" style="display: flex; flex-direction: row;" data-bs-toggle="modal" data-bs-target="#CreateStory">
            <div class="input-group-text" style="background-color: #FFF; border: none; padding-top: 5px;" >
              <img src="../img/logo1.png" style="width: 50px; border-radius: 100%;">
            </div>
            <div class="container-fluid" style="font-size: 16px; font-family: PT serif;font-weight: 100; padding: 10px; width: 85%; height: 50px;border-radius: 15px;box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
                            ">
              ¿HITU que cuentas? <i style="float: right; padding: 5px;" class="fa-regular fa-paper-plane"></i>
            </div>
          </div>

          <div class="container-fluid" id="cont-story">
            <div class="row g-0 bg-body-secondary position-relative">
              <div class="col-md-6 mb-md-0 p-md-4" id="img-story">
                <img src="../img/3.jpg" alt="..." id="cont-img">
              </div>
              <div class="col-md-6 p-4 ps-md-0" id="text-cont">
                <i class="fa-solid fa-trash-can" style="float: right;"></i>
                <h4 class="tittle">Columns with stretched link</h4>
                <table style="width: 100%;">
                  <tr>
                    <th><h5 class="user">Usuario Accion</h5></th>
                    <th class="reaccion">13 <i class="fa-solid fa-heart"></i></th>
                    <th class="reaccion">14 <i class="fa-solid fa-comment"></i></th>
                    <th class="reaccion">15 <i class="fa-solid fa-share"></i></th>
                  </tr>
                </table>
                <p id="text-story">Another instance of placeholder content for this other custom component. It is intended to mimic what some real-world content would look like, and we're using it here to give the component a bit of body and size.</p>
                <button data-bs-toggle="modal" data-bs-target="#verHistoria" type="button" class="btn" style="float: right; width: 100%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;" >Seguir Leyendo</button>
              </div>
            </div>
          </div>

          <div class="container-fluid" id="cont-story" style="padding: 25px; box-shadow: 4px 4px 16px 0px rgba(0, 0, 0, 0.15) inset, -4px -4px 16px 0px #FFF inset;">
            <table style="margin-bottom: 15px;">
              <tr>
                <i class="fa-solid fa-trash-can" style="float: right;"></i>
                <th> <img src="../img/logo1.png" alt="" width="50px"></th>
                <th>
                  <table>
                    <tr>
                      <th colspan="2" style="font-family: PT serif; font-size: 20px; font-weight: 800;">Gonzalez</th>
                    </tr>
                    <tr>
                      <th style="font-family: PT serif; font-size: 16px; font-weight: lighter; padding-right: 5px;">Accion</th>
                      <th style="font-family: PT serif; font-size: 16px; font-weight: lighter;">23/02/2004</th>
                    </tr>
                  </table>
                </th>
              </tr>
            </table>
            <div class="container-fluid" style="box-shadow: 4px 4px 16px 0px rgba(0, 0, 0, 0.15), -4px -4px 16px 0px #FFF;border-radius: 15px;">
              <div class="row g-0 bg-body-secondary position-relative">
                <div class="col-md-6 mb-md-0 p-md-4" id="img-story">
                  <img src="../img/3.jpg" alt="..." id="cont-img">
                </div>
                <div class="col-md-6 p-4 ps-md-0" id="text-cont">
                  <h4 class="tittle">Columns with stretched link</h4>
                  <table style="width: 100%;">
                    <tr>
                      <th><h5 class="user">Usuario Accion</h5></th>
                      <th class="reaccion">13 <i class="fa-solid fa-heart"></i></th>
                      <th class="reaccion">14 <i class="fa-solid fa-comment"></i></th>
                      <th class="reaccion">15 <i class="fa-solid fa-share"></i></th>
                  </table>
                  <p id="text-story">Another instance of placeholder content for this other custom component. It is intended to mimic what some real-world content would look like, and we're using it here to give the component a bit of body and size.</p>
                  <button data-bs-toggle="modal" data-bs-target="#verHistoria" type="button" class="btn" style="float: right; width: 100%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;" >Seguir Leyendo</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </th>
    </tr>
  </table>
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
