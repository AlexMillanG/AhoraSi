<%--
  Created by IntelliJ IDEA.
  User: gonza
  Date: 20/08/2023
  Time: 01:40 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <jsp:include page="${pageContext.request.contextPath}/Integradora-1.0-SNAPSHOT/head.jsp"/>
    <title>Title</title>
</head>
<body>
<div id="carrusel" class="container-fluid">
    <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="10000" style="margin-top: 30px; margin-bottom: 30px;"
                 style="margin-left: 30px;margin-right: 30px;border-radius: 30px;">
                <img src="${pageContext.request.contextPath}/assets/img/-71.jpg" class="d-block w-100" alt="..." style="border-radius: 30px">
            </div>
            <div class="carousel-item" data-bs-interval="2000" style="margin-bottom: 30px;"
                 style="margin-left: 30px;margin-right: 30px;border-radius: 30px;">
                <img src="${pageContext.request.contextPath}/assets/img/2.jpg" class="d-block w-100" alt="..." style="border-radius: 30px">
            </div>
            <div class="carousel-item">
                <img src=${pageContext.request.contextPath}/assets/img/2.jpg"/assets/img/3.jpg" class="d-block w-100" alt="..." style="margin-bottom: 30px;"
                     style="margin-left: 30px;margin-right: 30px;border-radius: 30px">
            </div>
        </div>
        <button class="carousel-control-prev" type="button"
                data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button"
                data-bs-target="#carouselExampleInterval" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>
</body>
</html>
