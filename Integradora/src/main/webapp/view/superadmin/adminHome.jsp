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
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" type="text/css">


    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" >
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/styles.css " type= "text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/logo1.png">
    <style>
        #content{
            padding: 5px;
            overflow-y: scroll;
            width: 100%;
            height: 250px;
            overflow-y: scroll;
            border-radius: 10px;
            border: none;
            box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
        }
        #content::-webkit-scrollbar-thumb{
            background-color: #8081B7;
            width: 2px;
            border-radius: 3px;
        }
        #content::-webkit-scrollbar{
            width: 8px;
            background-color: #ffffff;
        }

        #contenido{
            padding: 5px;
            overflow-y: scroll;
            width: 100%;
            height: 250px;
            overflow-y: scroll;
            border-radius: 10px;
            border: none;
            box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
        }
        #contenido::-webkit-scrollbar-thumb{
            background-color: #8081B7;
            width: 2px;
            border-radius: 3px;
        }
        #contenido::-webkit-scrollbar{
            width: 8px;
            background-color: #ffffff;
        }
        .tittle{
            font-family: PT serif;
            font-size: 30px;
            font-weight: 200;
            margin-left: 20px;
        }
        #comments1{
            width: 100%;
            height: 100px;
            border: none;
            resize: none;
            box-sizing: border-box;
            font-family: PT serif;
            font-size: 14px;
            line-height: 1.5;
        }
        #comment{
            width: 100%;
            height: 50px;
            background-color: #ffffff;
            box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
            border-radius: 15px;
            border: none;
            resize: none;
            padding-left: 10px;
            padding-right: 10px;
            box-sizing: border-box;
            font-family: PT serif;
            font-size: 14px;
            line-height: 1.5;
        }
        #comment::-webkit-scrollbar{
            width: 8px;
        }
        #comment::-webkit-scrollbar-thumb{
            background-color: #8081B7;
            width: 2px;
            border-radius: 3px;
        }
        #comments2{
            width:100%;
            border-radius: 15px;
            max-height: 100px;
            overflow-y: scroll;
        }
        #comments2::-webkit-scrollbar{
            width: 8px;
        }
        #comments2::-webkit-scrollbar-thumb{
            background-color: #3dd5f3;
            width: 2px;
            border-radius: 3px;
        }
        #comments1::-webkit-scrollbar{
            width: 8px;
        }
        #comments1::-webkit-scrollbar-thumb{
            background-color: #8081B7;
            width: 2px;
            border-radius: 3px;
        }
        #comments{
            font-size: 14px;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            width:100%;
            border-radius: 15px;
            overflow-y: scroll;
        }
        #comments::-webkit-scrollbar{
            width: 8px;
        }
        #comments::-webkit-scrollbar-thumb{
            background-color: #8081B7;
            width: 2px;
            border-radius: 3px;
        }

    </style>


</head>

<body>

<div class="container-fluid" id='cont'>
    <table class="table" style="font-family: PT Serif">
        <tr>
            <th scope="col" class="logo1">
                <img src= "${pageContext.request.contextPath}/assets/img/logo.png"  class="logo">
            </th>
            <th scope="col">
                <div  class="container-fluid" id="cont-1">
                    <div class="container-fluid" id="cont-2">



                        <div class="container-fluid">
                            <nav id="nav" class="navbar navbar-expand-lg navbar-static fixed-top">
                                <div class="container-fluid">
                                    <a class="navbar-brand" href="${pageContext.request.contextPath}/api/superadmin/home"><img src="${pageContext.request.contextPath}/assets/img/logo1.png" alt=""
                                                                                                                               width="50px"></a>
                                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                                            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                                        <span class="navbar-toggler-icon"></span>
                                    </button>
                                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                                        <ul class="navbar-nav">
                                            <li class="nav-item">
                                                <a class="nav-link" href="${pageContext.request.contextPath}/api/superadmin/admin-historias" >Historias</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="${pageContext.request.contextPath}/api/superadmin/admin-user">Usuario</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="${pageContext.request.contextPath}/api/superadmin/admins-view">Administradores</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="${pageContext.request.contextPath}/api/superadmin/mas">Mas</a>
                                            </li>
                                        </ul>
                                        <div  style="background-color:#8081B7; margin-left: 50%;padding: 10px;border-radius: 15px;color: white;font-family: PT serif;font-size: 16px;">
                                            <a href="${pageContext.request.contextPath}/api/auth" class="nav-link"> Cerrar Sesión</a>
                                        </div>
                                    </div>
                                </div>
                            </nav>
                        </div>


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
                                        <form method="post" action="${pageContext.request.contextPath}/user/delete">
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


<script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js" ></script>
<script src="https://unpkg.com/feather-icons"></script>
<script>
    feather.replace()
</script>


</body>
</html>
