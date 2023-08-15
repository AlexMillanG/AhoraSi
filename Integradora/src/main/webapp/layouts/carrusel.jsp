<%--
  Created by IntelliJ IDEA.
  User: gonza
  Date: 15/08/2023
  Time: 05:09 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="head.jsp"/>
    <title>Title</title>
</head>
<body>
<div id="carrusel" class="container-fluid">
  <h1 style="margin-top: 20px; font-family: PT serif ;">Bienvenido
  </h1>
  <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner" id="carrusel-img">
      <div class="carousel-item active" data-bs-interval="10000" style="border-radius: 15%;">
        <img src="../../assets/img/1.jpg" class="d-block w-100" alt="..."  style="border-radius: 30px;">
      </div>
      <div class="carousel-item" data-bs-interval="2000" style="border-radius: 15%;">
        <img src="../../assets/img/3.jpg" class="d-block w-100" alt="..."  style="border-radius: 30px;">
      </div>
      <div class="carousel-item" style="border-radius: 15%;">
        <img src="../../assets/img/2.jpg" class="d-block w-100" alt="..." style="border-radius: 30px;" >
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

</body>
</html>
