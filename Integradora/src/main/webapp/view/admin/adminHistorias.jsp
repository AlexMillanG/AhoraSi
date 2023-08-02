<%--
  Created by IntelliJ IDEA.
  User: gonza
  Date: 27/07/2023
  Time: 05:56 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
  <title>admin Historias</title>
  <link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link type="text/css" rel="stylesheet" href="../../assets/css/style.css">
  <jsp:include page="../../layouts/head.jsp"/>
</head>
<body>
<div class="container-fluid" id='cont'>
  <table class="table">
    <tr>
      <th scope="col" class="logo1">
        <img src= "/assets/img/logo.png"  class="logo">
      </th>
      <th scope="col">
        <div  class="container-fluid" id='cont-2'>
          <jsp:include page="/layouts/navbarAdmin.jsp"/>
          <div id="carrusel" class="container-fluid">
            <h1 style="margin-top: 20px; font-family: PT serif ;">Bienvenido </h1>
            <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="10000" style="margin-bottom: 30px;" style="margin-left: 30px;" style="margin-right: 30px;" style="border-radius: 15%;">
                  <img src="/assets/img/1.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item" data-bs-interval="2000" style="margin-bottom: 30px;" style="margin-left: 30px;" style="margin-right: 30px;" style="border-radius: 15%;">
                  <img src="/assets/img/2.jpg"  class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="/assets/img/3.jpg"  class="d-block w-100" alt="..."  style="margin-bottom: 30px;" style="margin-left: 30px;" style="margin-right: 30px;" style="border-radius: 15%;">
                </div>
              </div>
              <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>
          </div>
          <ul class="nav nav-tabs" id="myTab" role="tablist" style="float: right; font-family: PT serif; color: #8081B7;">
            <li class="nav-item" role="presentation">
              <button class="nav-link active" id="accion-tab" data-bs-toggle="tab" data-bs-target="#accion-tab-pane" type="button" role="tab" aria-controls="accion-tab-pane" aria-selected="true">Accion</button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="aventura-tab" data-bs-toggle="tab" data-bs-target="#aventura-tab-pane" type="button" role="tab" aria-controls="aventura-tab-pane" aria-selected="false">Aventura</button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="cienciaf-tab" data-bs-toggle="tab" data-bs-target="#cienciaf-tab-pane" type="button" role="tab" aria-controls="cienciaf-tab-pane" aria-selected="false">Ciencia Ficción</button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="fantasia-tab" data-bs-toggle="tab" data-bs-target="#fantasia-tab-pane" type="button" role="tab" aria-controls="fantasia-tab-pane" aria-selected="false">Fantasía</button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="romance-tab" data-bs-toggle="tab" data-bs-target="#romance-tab-pane" type="button" role="tab" aria-controls="romance-tab-pane" aria-selected="false">Romance</button>
            </li>
          </ul>
          <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="accion-tab-pane" role="tabpanel" aria-labelledby="accion-tab" tabindex="0">
              <div class="container-fluid" style="font-family: PT serif; fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; margin-bottom: 15px;">
                <div class="row g-0 bg-body-secondary position-relative">
                  <div class="col-md-6 mb-md-0 p-md-4">
                    <img src="/assets/img/3.jpg" class="w-100" alt="...">
                  </div>
                  <div class="col-md-6 p-4 ps-md-0">
                    <h4 class="mt-0">Columns with stretched link</h4>
                    <h5 class="mt-0">Usuario Accion</h5>
                    <p>Another instance of placeholder content for this other custom component. It is intended to mimic what some real-world content would look like, and we're using it here to give the component a bit of body and size.</p>
                    <button data-bs-toggle="modal" data-bs-target="#verHistoria" type="button" class="btn" style="float: right; width: 100%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;" >Leer Historia</button>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="aventura-tab-pane" role="tabpanel" aria-labelledby="aventura-tab" tabindex="0">
              <div class="container-fluid" style="font-family: PT serif; fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; margin-bottom: 15px;">
                <div class="row g-0 bg-body-secondary position-relative">
                  <div class="col-md-6 mb-md-0 p-md-4">
                    <img src="/assets/img/3.jpg" class="w-100" alt="...">
                  </div>
                  <div class="col-md-6 p-4 ps-md-0">
                    <h4 class="mt-0">Columns with stretched link</h4>
                    <h5 class="mt-0">Usuario Aventura</h5>
                    <p>Another instance of placeholder content for this other custom component. It is intended to mimic what some real-world content would look like, and we're using it here to give the component a bit of body and size.</p>
                    <button data-bs-toggle="modal" data-bs-target="#verHistoria" type="button" class="btn" style="float: right; width: 100%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;" >Leer Historia</button>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="cienciaf-tab-pane" role="tabpanel" aria-labelledby="cienciaf-tab" tabindex="0"><div class="container-fluid" style="font-family: PT serif; fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; margin-bottom: 15px;">
              <div class="row g-0 bg-body-secondary position-relative">
                <div class="col-md-6 mb-md-0 p-md-4">
                  <img src="/assets/img/3.jpg" class="w-100" alt="...">
                </div>
                <div class="col-md-6 p-4 ps-md-0">
                  <h4 class="mt-0">Columns with stretched link</h4>
                  <h5 class="mt-0">Usuario Ciencia</h5>
                  <p>Another instance of placeholder content for this other custom component. It is intended to mimic what some real-world content would look like, and we're using it here to give the component a bit of body and size.</p>
                  <button data-bs-toggle="modal" data-bs-target="#verHistoria" type="button" class="btn" style="float: right; width: 100%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;" >Leer Historia</button>
                </div>
              </div>
            </div>
            </div>
            <div class="tab-pane fade" id="fantasia-tab-pane" role="tabpanel" aria-labelledby="fantasia-tab" tabindex="0"><div class="container-fluid" style="font-family: PT serif; fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; margin-bottom: 15px;">
              <div class="row g-0 bg-body-secondary position-relative">
                <div class="col-md-6 mb-md-0 p-md-4">
                  <img src="/assets/img/2.jpg" class="w-100" alt="...">
                </div>
                <div class="col-md-6 p-4 ps-md-0">
                  <h4 class="mt-0">Columns with stretched link</h4>
                  <h5 class="mt-0">Usuario Fantasia</h5>
                    <p>Another instance of placeholder content for this other custom component. It is intended to mimic what some real-world content would look like, and we're using it here to give the component a bit of body and size.</p>
                    <button data-bs-toggle="modal" data-bs-target="#verHistoria" type="button" class="btn" style="float: right; width: 100%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;" >Leer Historia</button>
                </div>
              </div>
            </div>
            </div>

            <div class="tab-pane fade" id="romance-tab-pane" role="tabpanel" aria-labelledby="romance-tab" tabindex="0"><div class="container-fluid" style="font-family: PT serif; fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; margin-bottom: 15px;">
              <div class="row g-0 bg-body-secondary position-relative">
                <div class="col-md-6 mb-md-0 p-md-4">
                  <img src="/assets/img/3.jpg" class="w-100" alt="...">
                </div>
                <div class="col-md-6 p-4 ps-md-0">
                  <h4 class="mt-0">Columns with stretched link</h4>
                  <h5 class="mt-0">Usuario</h5><h5 class="mt-0">Romance</h5>
                  <p>Another instance of placeholder content for this other custom component. It is intended to mimic what some real-world content would look like, and we're using it here to give the component a bit of body and size.</p>
                  <button data-bs-toggle="modal" data-bs-target="#verHistoria" type="button" class="btn" style="float: right; width: 100%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;" >Leer Historia</button>
                </div>
              </div>
            </div></div>
          </div>
        </div>---
      </th>
    </tr>
    </thead>
  </table>
</div>
<jsp:include page="../../layouts/navbarSupeadmin.jsp"/>
</body>
</html>
