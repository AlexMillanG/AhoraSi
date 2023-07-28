<%--
  Created by IntelliJ IDEA.
  User: gonza
  Date: 27/07/2023
  Time: 06:05 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
    <title>Mas</title>
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link type="text/css" rel="stylesheet" href="../../assets/css/style.css">
</head>
<body>
<div class="container-fluid" id='cont'>
    <table class="table">
        <tr>
            <th scope="col" class="logo1">
                <img src="../img/logo.png" class="logo">
            </th>
            <th scope="col">
                <div class="container-fluid" id='cont-2'>
                    <jsp:include page="/layouts/navbarAdmin.jsp"/>
                    <div id="carrusel" class="container-fluid">
                        <h1 style="margin-top: 20px; font-family: PT serif ;">Bienvenido </h1>
                        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active" data-bs-interval="10000" style="margin-bottom: 30px;"
                                     style="margin-left: 30px;" style="margin-right: 30px;" style="border-radius: 15%;">
                                    <img src="../img/1.jpg" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item" data-bs-interval="2000" style="margin-bottom: 30px;"
                                     style="margin-left: 30px;" style="margin-right: 30px;" style="border-radius: 15%;">
                                    <img src="../img/2.jpg" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="../img/3.jpg" class="d-block w-100" alt="..." style="margin-bottom: 30px;"
                                         style="margin-left: 30px;" style="margin-right: 30px;"
                                         style="border-radius: 15%;">
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
                    <div class="container-fluid"
                         style="fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; margin-bottom: 15px;">
                        <button data-bs-toggle="modal" data-bs-target="#crearAdmin" type="button"
                                class="btn btn-outline-success" style="float: right; margin-top: 15px;"
                                id="agregar-admin">Agregar
                        </button>
                        <p style="font-family: PT serif ; font-size: 30px;">Administradores</p>
                        <div data-bs-toggle="modal" data-bs-target="#verAdmin" class="container-fluid"
                             style="fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; height: 200px; width: 200px; margin-top: 10px; margin-bottom: 25px; margin-left: 10px;">
                            <table class="table" style=" margin-top: 25px; margin-bottom: 2%;">
                                <tr style="height: 130px;">
                                    <th scope="col" style="float: left; margin-left: -15px;">
                                        <button class="btn" id="eliminarAdmin" type="submit"
                                                onclick="confirmation(event)">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                 fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6Z"/>
                                                <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1ZM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118ZM2.5 3h11V2h-11v1Z"/>
                                            </svg>
                                        </button>
                                        <li style="list-style-type: none;">
                                            <button class="btn" data-bs-toggle="modal" data-bs-target="#editarAdmin">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                     fill="currentColor" class="bi bi-pencil-square"
                                                     viewBox="0 0 16 16">
                                                    <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                                    <path fill-rule="evenodd"
                                                          d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                                </svg>
                                            </button>
                                        </li>
                                        </li>
                                    </th>
                                    <th rowspan="2">
                                        <img src="../img/photo-1608501078713-8e445a709b39.jpg" class="card-img-top"
                                             alt="..." ; style="border-radius: 50%;">
                                    </th>
                                </tr>
                            </table>
                            <p style="font-family: PT serif ; font-size: 25px; text-align: center;">Admin</p>
                        </div>
                    </div>
                    <div class="container-fluid"
                         style="fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; margin-bottom: 15px;">
                        <button data-bs-toggle="modal" data-bs-target="#editarAdmin" type="button"
                                class="btn btn-outline-success" style="float: right; margin-top: 15px;"
                                id="agregar-categorias">Agregar
                        </button>
                        <p style="font-family: PT serif ; font-size: 30px; margin-top: 5px; height: 20px; width: 20px;">
                            Categorias</p>
                        <div class="container-fluid"
                             style="fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; height: 150px; width: 150px; margin-top: 10px; margin-bottom: 25px; margin-left: 10px;">
                            <table class="table"
                                   style=" margin-left:2%; margin-right: 2%; margin-top: 2px; margin-bottom: 2%;">
                                <tr style="height: 100px;">
                                    <th class="col">
                                        <img src="../img/photo-1608501078713-8e445a709b39.jpg" class="card-img-top"
                                             alt="..." ; style="border-radius: 50%;">
                                    </th>
                                </tr>
                            </table>
                            <p style="font-family: PT serif ; font-size: 25px; text-align: center;">Admin</p>
                        </div>
                    </div>
                    <div class="container-fluid"
                         style="fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; margin-bottom: 15px;">
                        <button data-bs-toggle="modal" data-bs-target="#crearAvatar" type="button"
                                class="btn btn-outline-success" style="float: right; margin-top: 15px;" id="agregar">
                            Agregar
                        </button>
                        <p style="font-family: PT serif ; font-size: 30px;">Avatars</p>
                        <div class="container-fluid"
                             style="fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; height: 150px; width: 150px; margin-top: 10px; margin-bottom: 25px; margin-left: 10px;">
                            <table class="table"
                                   style=" margin-left:2%; margin-right: 2%; margin-top: 2px; margin-bottom: 2%;">
                                <tr style="height: 100px;">
                                    <th class="col">
                                        <img src="../img/photo-1608501078713-8e445a709b39.jpg" class="card-img-top"
                                             alt="..." ; style="border-radius: 50%;">
                                    </th>
                                </tr>
                            </table>
                            <p style="font-family: PT serif ; font-size: 25px; text-align: center;">Admin</p>
                        </div>
                    </div>
                </div>
</th>
</tr>
</table>
</div>
</div>
<!-- Modal -->
<div class="modal fade" id="crearAdmin" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <p style="font-family: PT serif; text-align: center; font-size: 30px;">Agregar Administrador</p>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="admin1-form" class="needs-validation" action="" method="post">
                    <table class="table">
                        <tr>
                            <th>
                                <div class="container-fluid">
                                    <label for="name">Nombre</label>
                                    <input class="form-control" placeholder="Nombre" name="name" id="name" type="text"
                                           required>
                                    <div class="invalid-feedback is-invalid">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                            <th>
                                <div class="container-fluid" style="
                                    fill: #FFF;
                                    filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);
                                    background: white;
                                    border-radius: 15px;
                                    margin-left: 3px;
                                    font-family: PT serif;
                                ">
                                    <label for="name">Apellido</label>
                                    <input class="form-control" placeholder="Apellido Completo" name="lastname"
                                           id="lastname" type="text" required>
                                    <div class="invalid-feedback is-invalid">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th colspan="3">
                                <div class="container-fluid" style="
                                    fill: #FFF;
                                    filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);
                                    background: white;
                                    border-radius: 15px;
                                    margin-left: 3px;
                                    font-family: PT serif;
                                ">
                                    <label for="name">Correo Eletronico</label>
                                    <input class="form-control" placeholder="Correo Electronico" name="email" id="email1"
                                           type="text" required>
                                    <div class="invalid-feedback is-invalid">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th>
                                <div class="container-fluid"
                                     style="
                                    fill: #FFF;
                                    filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);
                                    background: white;
                                    border-radius: 15px;
                                    margin-left: 3px;
                                    font-family: PT serif;
                                    height: 60px
                                    ">
                                    <label for="name">Sexo</label>
                                    <select style="width: 130px; height: 35px; margin-top: auto;">
                                        <option value="">Selecionar</option>
                                        <option value="mujer">Mujer</option>
                                        <option value="hombre">Hombre</option>
                                        <option value="otro">Otro</option>
                                    </select>
                                    <div class="invalid-feedback is-invalid">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                            <th>
                                <div class="container-fluid " style="
                                    fill: #FFF;
                                    filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);
                                    background: white;
                                    border-radius: 15px;
                                    margin-left: 3px;
                                    font-family: PT serif;
                                ">
                                    <label for="name">Fecha de Nacimiento</label>
                                    <input class="form-control" placeholder="Correo Electronico" name="email" id="email"
                                           type="date" required>
                                    <div class="invalid-feedback is-invalid">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th>
                                <div class="container-fluid "
                                style="    fill: #FFF;
                                filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);
                                background: white;
                                border-radius: 15px;
                                margin-left: 3px;
                                font-family: PT serif;">
                                    <label for="name">Contraseña</label>
                                    <input class="form-control" placeholder="Contraseña" name="password" id="password"
                                           type="password" required>
                                    <div class="invalid-feedback is-invalid">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>

                            <th>
                                <div class="container-fluid " style="fill: #FFF;
                                filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);
                                background: white;
                                border-radius: 15px;
                                margin-left: 3px;
                                font-family: PT serif;"
                                >
                                    <label for="name">Confirmar contraseña</label>
                                    <input class="form-control" placeholder="Contraseña" name="password" id="password1"
                                           type="password" required>
                                    <div class="invalid-feedback is-invalid">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th colspan="2">
                                <button type="submit" class="container-fluid"
                                        style="height: 50px; background-color: black; font-family: PT serif; color: #FFF; border-radius: 15px;">
                                    Agregar
                                </button>
                            </th>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>

</div>

<div class="modal fade" id="crearCategoria" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered"> >
        <div class="modal-content">
            <div class="modal-header">
                <p style="font-family: PT serif; text-align: center; font-size: 30px;">Agregar Categoria¿</p>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="categ-form" class="needs-validation" action="" method="post">
                    <table class="table">
                        <tr>
                            <th>
                                <div class="container-fluid "
                                     style="    fill: #FFF;
                                    filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);
                                    background: white;
                                    border-radius: 15px;
                                    margin-left: 3px;
                                    font-family: PT serif;">
                                    <label for="name">Categoria</label>
                                    <input class="form-control" placeholder="Categoria" name="categoria" id="categoria"
                                           type="text" required>
                                    <div class="invalid-feedback is-invalid">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>

                        <tr>
                            <td style="text-align: center;">
                                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                                <div class="container-fluid" style=" filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF); /* 10px horizontal, 3px vertical, 30px desenfoque,5px propagacion */
                  background: white;">
                                    <form runat="server" style="text-align: center;">
                                        <div>
                                            <label for="name"
                                                   style="float: left; font-family: PT serif; margin-bottom: 4%; margin-right: 5%;">Imagen</label>
                                        </div>
                                        <input type='file' id="imgInp" style="float: left;"/>
                                        <img id="blah" src="#" alt="Imagen"
                                             style="height: 100px; width: 100px; border-radius: 20px;"/>
                                    </form>
                                </div>
                                <div class="invalid-feedback is-invalid">
                                    Campo obligatorio
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="float: right;">
                                <button type="button"
                                        style="     margin: 0; padding: 0;background-color: #8081B7 ;color: white; border-radius: 10px; height:35px ; width: 90px;"
                                        data-bs-dismiss="modal">Cerrar
                                </button>
                                <button type="submit"
                                        style="     margin: 0; padding: 0;background-color: #8081B7 ;color: white; border-radius: 10px; height:35px ; width: 90px;">
                                    Agregar
                                </button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="crearAvatar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered"> >
        <div class="modal-content">
            <div class="modal-header">
                <p style="font-family: PT serif; text-align: center; font-size: 30px;">Agregar Avatar</p>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="admin-form" class="needs-validation" action="" method="post">
                    <table class="table">

                        <tr>
                            <td style="text-align: center;">
                                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                                <div class="container-fluid" style=" filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white;">
                                    <form runat="server" style="text-align: center;">
                                        <div>
                                            <label for="name"
                                                   style="float: left; font-family: PT serif; margin-bottom: 4%; margin-right: 5%;">Imagen</label>
                                        </div>
                                        <input type='file' id="imgen1" style="float: left;"/>
                                        <img id="blah1" src="#" alt="Imagen"
                                             style="height: 100px; width: 100px; border-radius: 20px;"/>
                                    </form>
                                </div>
                                <div class="invalid-feedback is-invalid">
                                    Campo obligatorio
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="float: right;">
                                <button type="button"
                                        style="     margin: 0; padding: 0;background-color: #8081B7 ;color: white; border-radius: 10px; height:35px ; width: 90px;"
                                        data-bs-dismiss="modal">Cerrar
                                </button>
                                <button type="submit"
                                        style="     margin: 0; padding: 0;background-color: #8081B7 ;color: white; border-radius: 10px; height:35px ; width: 90px;">
                                    Agregar
                                </button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="editarAdmin" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered"> >
        <div class="modal-content">
            <div class="modal-header">
                <p style="font-family: PT serif; text-align: center; font-size: 30px;">Editar Administrador</p>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="editar-admin" class="needs-validation" action="" method="post">
                    <table class="table">
                        <tr>
                            <td style="text-align: center;">
                                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                                <div class="container-fluid" style=" filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white;">
                                    <form runat="server" style="text-align: center;">
                                        <div>
                                            <label for="name"
                                                   style="float: left; font-family: PT serif; margin-bottom: 4%; margin-right: 5%;">Imagen</label>
                                        </div>
                                        <input type='file' id="imgen" style="float: left;"/>
                                        <img id="blah2" src="#" alt="Imagen"
                                             style="height: 100px; width: 100px; border-radius: 20px;"/>
                                    </form>
                                </div>
                                <div class="invalid-feedback is-invalid">
                                    Campo obligatorio
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="float: right;">
                                <button type="button"
                                        style="     margin: 0; padding: 0;background-color: #8081B7 ;color: white; border-radius: 10px; height:35px ; width: 90px;"
                                        data-bs-dismiss="modal">Cerrar
                                </button>
                                <button type="submit"
                                        style="     margin: 0; padding: 0;background-color: #8081B7 ;color: white; border-radius: 10px; height:35px ; width: 90px;">
                                    Agregar
                                </button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../../layouts/navbarAdmin.jsp"/>
<script>
    function readURL(input) {
        if (input.files && input.files[0]) { //Revisamos que el input tenga contenido
            var reader = new FileReader(); //Leemos el contenido

            reader.onload = function (e) { //Al cargar el contenido lo pasamos como atributo de la imagen de arriba
                $('#blah').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#imgInp").change(function () { //Cuando el input cambie (se cargue un nuevo archivo) se va a ejecutar de nuevo el cambio de imagen y se verá reflejado.
        readURL(this);
    });

</script>


<script>
    function readURL(input) {
        if (input.files && input.files[0]) { //Revisamos que el input tenga contenido
            var reader = new FileReader(); //Leemos el contenido

            reader.onload = function (e) { //Al cargar el contenido lo pasamos como atributo de la imagen de arriba
                $('#blah2').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#imgen").change(function () { //Cuando el input cambie (se cargue un nuevo archivo) se va a ejecutar de nuevo el cambio de imagen y se verá reflejado.
        readURL(this);
    });
</script>
    </body>

</html>
