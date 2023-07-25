<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <jsp:include page="/layouts/head.jsp"/>
</head>
<body>
<jsp:include page="/layouts/navbarAdmin.jsp"/>

<div class="container-fluid">
    <div class="row">
        <div class="card">
            <div class="card-header">
                <div class="text-center fs-4">
                    Bienvenido de nuevo Super Admin
                </div>
            </div>
        </div>
        </div>

    <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-12">
        <div class="card">
            <div class="card-header">
                <div class="text-center fs-3">
                    Usuarios
                </div>
                <div class="card-body">

                    <div class="car-text">
                    <s:forEach items="${users1}" var="user">
<p class="card-text"> ${user.name} ${user.id}</p>




                    </s:forEach>

                    </div>
                </div>

            </div>
        </div>

        </div>
        <div class="col-lg-6 col-md-6 col-sm-12">
            Probando el texto
        </div>
    </div>


</div>


<jsp:include page="/layouts/footer.jsp"/>
</body>
</html>
