<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: dulce
  Date: 27/07/2023
  Time: 06:02 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin-Administradores</title>
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



<div class="container-fluid" id="cont">
    <table class="table" id="tabla">
        <tr>
            <th scope="col" id="conta">
                <div class="container-fluid" id="cont-2">
                    <s:if test="users.isEmpty()">
                        <div class="row">
                            <div class="col">
                                <h3>Sin registros</h3>
                            </div>
                        </div>
                    </s:if>
                    <div class="container-fluid"
                         style="fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; border-radius: 15px;">
                        <button data-bs-toggle="modal" data-bs-target="#saveAdmins" type="button"
                                class="btn btn-outline-success" style="float: right; margin-top: 15px;" id="agregar">
                            Agregar
                        </button>
                        <p style="font-family: PT serif ; font-size: 30px; margin-top: 1%; text-align: center;padding-top: 2%;">Administradores</p>
                        <div class="container-fluid" style="display: grid;grid-template-columns: auto auto auto auto;">
                            <s:forEach items="${admin}" var="admin" varStatus="s">
                                <div class="container-fluid"
                                     style="box-shadow: 4px 4px 16px 0px rgba(0, 0, 0, 0.15), -4px -4px 16px 0px #FFF;
                                 background:white; position: relative; float: left;  border-radius: 15px; width: 200px; margin-top: 10px; margin-bottom: 25px; margin-left: 10px;">
                                    <table class="table" style=" margin-top: 25px; margin-bottom: 2%;">
                                        <tr style="height: 130px;">
                                            <th scope="col" style="float: left; margin-left: -15px; color: #5A6AA9">
                                                <form method="post" action="${pageContext.request.contextPath}/api/superadmin/delete-admin">
                                                    <input hidden value="${admin.id}" name="id">
                                                    <button data-bs-toggle="modal" data-bs-target="#updateUsers"
                                                            type="button" class="btn" id="editar"
                                                            onclick="prueba('${admin.id}|${admin.name}|${admin.email}|${admin.pass}|${admin.lastname}|${admin.surname}|${admin.birthday}|${admin.sex}')"
                                                            name="editar"
                                                    >editar
                                                    </button>
                                                    <li style="list-style-type: none;">
                                                        <button type="submit" class="btn "><i
                                                                class="fa-solid fa-trash-can"
                                                                style="color: #5A6AA9"></i>
                                                        </button>
                                                    </li>
                                                    </li>
                                                </form>
                                            <th rowspan="2">
                                                <img src="${pageContext.request.contextPath}/assets/img/logo1.png" class="card-img-top" alt="..." ;
                                                     style="border-radius: 50%;">
                                            </th>
                                        </tr>
                                    </table>
                                    <h6 style="font-family: PT serif ; font-size: 15px; color: #5A6AA9">Nombre
                                        Completo:</h6>
                                    <h6 style="font-family: PT serif ; font-size: 15px; ">${admin.name} ${admin.lastname} ${admin.surname}</h6>
                                    <h6 style="font-family: PT serif ; font-size: 15px; color: #5A6AA9">Correo: <h6
                                            style="font-family: PT serif ; font-size: 15px; text-align: left; color: #1a1d20">${admin.email}</h6>
                                    </h6>
                                    <h6 style="font-family: PT serif ; font-size: 15px; color: #5A6AA9">Fecha de
                                        Nacimiento:
                                        <h6 style="font-family: PT serif ; font-size: 15px; text-align: left; color: #1a1d20">${admin.birthday}</h6>
                                    </h6>
                                    <h6 style="font-family: PT serif ; font-size: 15px; color: #5A6AA9">Sexo: <h6
                                            style="font-family: PT serif ; font-size: 15px; text-align: left; color: #1a1d20">${admin.sex}</h6>
                                    </h6>
                                </div>
                            </s:forEach>
                        </div>
                    </div>
                </div>
            </th>
        </tr>
    </table>
</div>
<%--Modal ADmin--%>
<div class="modal fade" id="saveAdmins" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="border-radius: 30px;">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="mostrarAlerta()"
                    style="margin-top: 20px; margin-left: 90%;"></button>
            <p style="font-family: PT serif; font-size: 35px; text-align: center; margin-top: 20px; font-style: normal;font-weight: 700;">
                <strong>Agregar Administrador</strong></p>
            <div class="modal-body">
                <form id="formAdmin" action="${pageContext.request.contextPath}/api/admin/admins-save" method="post" class="needs-validation"
                      novalidate>
                    <table class="table">
                        <tr>
                            <th colspan="2">
                                <div class="container-fluid " style="    fill: #FFF;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                    background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                    <label for="name">Nombre:</label>
                                    <input type="text" class="form-control" name="name1" id="name"
                                           placeholder="Nombre" required
                                           style="border: none; outline: none;
                      padding: 10px; border-radius: 5px;
                      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th>
                                <div class="container-fluid " style="    fill: #FFF;
                    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                    background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                    <label for="name">Apellido Paterno:</label>
                                    <input type="text" name="surname" class="form-control" id="surname"
                                           placeholder="Apellido Paterno" required
                                           style="border: none; outline: none;padding: 10px; border-radius: 5px;box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                            <th>
                                <div class="container-fluid " style="    fill: #FFF;
                    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                    background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                    <label for="name">Apellido Materno:</label>
                                    <input type="text" name="lastname" class="form-control" id="lastname"
                                           placeholder="Apellido Materno" required
                                           style="border: none; outline: none;padding: 10px; border-radius: 5px;box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th colspan="2">
                                <div class="container-fluid " style="    fill: #FFF;
                    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                    background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                    <label for="name">Correo Electrónico:</label>
                                    <input type="email" class="form-control" name="email" id="email"
                                           placeholder="matricula@utez.edu.mx" required
                                           style="border: none; outline: none;padding: 10px; border-radius: 5px;box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th>
                                <div class="container-fluid ">
                                    <div class="input-group mb-3 " style="top:0px;">
                                        <label for="name" style="font-family: PT serif">Sexo:</label>
                                        <select name="sex" id="sex" class="form-select" required style="width: 100%; height: 199%;  border: none;
                        box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);border-radius: 15px; font-family: PT Serif">
                                            <option value="">-Selecionar-</option>
                                            <option value="mujer">Mujer</option>
                                            <option value="hombre">Hombre</option>
                                            <option value="otro">Otro</option>
                                        </select>
                                    </div>
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                            <th>
                                <div class="container-fluid " style="    fill: #FFF;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                        background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                    <label for="name">Fecha Nacimiento:</label>
                                    <input type="date" min="1900-01-01" max="2005-12-31" name="birthday"
                                           class="form-control" id="birthday"
                                           placeholder="birthday" required
                                           style="border: none; outline: none;padding: 10px; border-radius: 5px;box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th colspan="2">
                                <div class="container-fluid " style="    fill: #FFF;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                    <label for="name">Contraseña:</label>
                                    <input type="password" name="pass" class="form-control" id="pass"
                                           placeholder="Contraseña" required
                                           style="border: none; outline: none;padding: 10px; border-radius: 5px;box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th colspan="2">
                                <button type="submit" class="container-fluid"
                                        type="button" onclick="registro()" id="buttonAdmin"
                                        style="height: 50px; background-color: black; font-family: PT serif; color: #FFF; border-radius: 15px;">
                                    Aceptar
                                </button>
                            </th>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>

<%--Modal ADmin Actualizar--%>
<div class="modal fade" id="updateUsers" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="border-radius: 30px;">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="mostrarAlerta()"
                    style="margin-top: 20px; margin-left: 90%;"></button>
            <p style="font-family: PT serif; font-size: 35px; text-align: center; margin-top: 20px; font-style: normal;font-weight: 700;">
                <strong>Actualizar Información</strong></p>
            <div class="modal-body">
                <form id="form" action="${pageContext.request.contextPath}/api/superadmin/update-admin" method="post" class="needs-validation" novalidate>
                    <table class="table">
                        <tr>
                            <th>
                                <div class="container-fluid " style="    fill: #FFF;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                    background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                    <label for="id">ID</label>
                                    <input id="id" name="id" class="form-control" onmousedown="return false;"
                                           style="border: none; outline: none;padding: 10px; border-radius: 5px;box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                            <th>
                                <div class="container-fluid " style="    fill: #FFF;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                    background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                    <label for="name">Nombre</label>
                                    <input type="text" name="name1" id="name1"
                                           placeholder="Nombre" required
                                           style="border: none; outline: none;
                      padding: 10px; border-radius: 5px;
                      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th>
                                <div class="container-fluid " style="    fill: #FFF;
                    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                    background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                    <label for="name">Apellido Paterno</label>
                                    <input type="text" name="surname1" class="form-control" id="surname1"
                                           placeholder="Apellido Paterno" required
                                           style="border: none; outline: none;padding: 10px; border-radius: 5px;box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                            <th>
                                <div class="container-fluid " style="    fill: #FFF;
                    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                    background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                    <label for="name">Apellido Materno</label>
                                    <input type="text" name="lastname1" class="form-control" id="lastname1"
                                           placeholder="Apellido Materno" required
                                           style="border: none; outline: none;padding: 10px; border-radius: 5px;box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th colspan="2">
                                <div class="container-fluid " style="    fill: #FFF;
                    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                    background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                    <label for="name">Correo Electrónico:</label>
                                    <input type="email" class="form-control" name="emailRegistro" id="emailRegistro"
                                           placeholder="matricula@utez.edu.mx" required
                                           style="border: none; outline: none;padding: 10px; border-radius: 5px;box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th>
                                <div class="container-fluid ">
                                    <div class="input-group mb-3 " style="top:0px;">
                                        <label for="name" style="font-family: PT serif">Sexo:</label>
                                        <select name="sex"  class="form-select" required style="width: 100%; height: 199%;  border: none;
                        box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);border-radius: 15px; font-family: PT Serif">
                                            <option value="">-Selecionar-</option>
                                            <option value="mujer" id="mujer1">Mujer</option>
                                            <option value="hombre" id="hombre1">Hombre</option>
                                            <option value="otro">Otro</option>
                                        </select>
                                    </div>
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                            <th>
                                <div class="container-fluid " style="    fill: #FFF;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                        background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                    <label for="name">Fecha Nacimiento:</label>
                                    <input type="date" min="1900-01-01" max="2005-12-31" name="birthday1"
                                           class="form-control" id="birthday1"
                                           class="form-control" id="birthday1"
                                           placeholder="birthday" required
                                           style="border: none; outline: none;padding: 10px; border-radius: 5px;box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th colspan="2">
                                <div class="container-fluid " style="    fill: #FFF;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                    <label for="name">Contraseña:</label>
                                    <input type="password" name="pass1" class="form-control" id="pass1"
                                           placeholder="Contraseña" required
                                           style="border: none; outline: none;padding: 10px; border-radius: 5px;box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th colspan="2">
                                <button type="button" id="updateUserbtn" onclick="upSendForm()"
                                        style="width: 100%; height: 50px; background-color: black; font-family: PT serif; color: #FFF; border-radius: 15px;">
                                    Aceptar
                                </button>
                            </th>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>


<script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js" ></script>
<script src="https://unpkg.com/feather-icons"></script>
<script>
    feather.replace()
</script>


<script>
    const formRegistro = document.getElementById("formAdmin");
    const botonRegistro = document.getElementById("buttonAdmin");
    const form = document.getElementById("form")
    const btn = document.getElementById("updateUserbtn")


    function prueba(admin) {
        var valores = admin.split("|");
        var id = valores[0];
        var name = valores[1];
        var correo = valores[2];
        var password = valores[3];
        var surname = valores[4];
        var lastname = valores[5];
        var birthday = valores[6];
        var sex = valores[7];
        console.log("hola " + admin);
        console.log("hola1 " + valores);
        console.log("hola2 " + name);
        document.getElementById("id").value = id;
        document.getElementById("name1").value = name;
        document.getElementById("emailRegistro").value = correo;
        document.getElementById("pass1").value = password;
        document.getElementById("surname1").value = surname;
        document.getElementById("lastname1").value = lastname;
        document.getElementById("birthday1").value = birthday;
        document.getElementsByTagName("sex").value = sex;
    }

    (function () {
        btn.addEventListener("click", function (event) {
            console.log(form.checkValidity());

            if (!form.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
            }

            form.classList.add("was-validated")
        }, false);

    })();

    function upSendForm() {
        if (form.checkValidity()) {
            console.log("a " + document.getElementById("name").value);
            var id = document.getElementById("id");
            console.log("aa " + id.value);
            var nombre = document.getElementById("name");
            console.log("aaa " + nombre.value);
            console.log(document.getElementById("form").value);
            console.log(form.checkValidity());
            form.submit();
        }
    }

    (function () {
        botonRegistro.addEventListener("click", function (event) {
            console.log(formRegistro.checkValidity());

            if (!formRegistro.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
                console.log("")
            }

            formRegistro.classList.add("was-validated")
        }, false);

    })();


    function registro() {
        if (formRegistro.checkValidity()) {
            console.log(formRegistro.checkValidity())
            console.log("antes del submint")
            formRegistro.submit();
            console.log("despues del submint")

        }

    }

</script>
</body>
</html>
