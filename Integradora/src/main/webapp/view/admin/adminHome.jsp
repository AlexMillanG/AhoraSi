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
    <link href="../../assets/css/style.css" rel="stylesheet" type="text/css">
    <jsp:include page="../../layouts/head.jsp"/>
</head>

<body>

<div class="container-fluid" id='cont'>
    <table class="table" style="font-family: PT Serif">
        <tr>
            <th scope="col" class="logo1">
                <img src= "../../assets/img/logo.png"  class="logo">
            </th>
            <th scope="col">
                <div  class="container-fluid" id="cont-1">
                    <div class="container-fluid" id="cont-2">
                        <jsp:include page="/layouts/navbarAdmin.jsp"/>
                        <table class="table table-striped" style="font-family: PT Serif" >
                            <thead>
                            <tr>
                                <p style="font-size: 30px; text-align: center">Usuarios</p>
                            </tr>
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Nombre Completo</th>
                                <th scope="col">Correo</th>
                                <th scope="col">Acciones</th>
                            </tr>
                            </thead>
                            <tbody>
                            <s:forEach items="${users1}" var="user">
                                <tr>
                                    <th>
                                        <p>${user.id}</p>
                                    </th>
                                    <th>
                                        <p>${user.name} ${user.lastname} ${user.surname} </p>
                                    </th>
                                    <th>
                                        <p>${user.email}</p>
                                    </th>
                                    <th>
                                        <form method="post" action="/user/delete">
                                            <input hidden value="${user.id}" name="id">
                                            <button class="btn" id="eliminarAdmin">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                                    <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6Z"/>
                                                    <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1ZM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118ZM2.5 3h11V2h-11v1Z"/>
                                                </svg>
                                            </button>
                                        </form>
                                    </th>
                                </tr>
                            </s:forEach>
                            <tr>
                                <td colspan="4">
                                    Sin registros
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </th>
        </tr>
    </table>
    </div>
<jsp:include page="../../layouts/footer.jsp"/>
</body>
</html>
