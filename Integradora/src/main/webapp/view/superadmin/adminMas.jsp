<%--
  Created by IntelliJ IDEA.
  User: gonza
  Date: 27/07/2023
  Time: 06:05 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
    <title>Admin Mas</title>
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link type="text/css" rel="stylesheet" href="../../assets/css/style.css">
    <jsp:include page="/layouts/head.jsp"/>

</head>
<body>
<div class="container-fluid" id='cont'>
    <table class="table">
        <tr>
            <th scope="col" class="logo1">
                <img src="/assets/img/logo.png" class="logo">
            </th>
            <th scope="col">
                <div class="container-fluid" id='cont-2'>
                    <jsp:include page="/layouts/navbarSupeadmin.jsp"/>
                    <div id="carrusel" class="container-fluid">
                        <h1 style="margin-top: 20px; font-family: PT serif ;">Bienvenido </h1>
                        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active" data-bs-interval="10000" style="margin-bottom: 30px;"
                                     style="margin-left: 30px;" style="margin-right: 30px;" style="border-radius: 15%;">
                                    <img src="/assets/img/1.jpg" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item" data-bs-interval="2000" style="margin-bottom: 30px;"
                                     style="margin-left: 30px;" style="margin-right: 30px;" style="border-radius: 15%;">
                                    <img src="/assets/img/2.jpg" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="/assets/img/3.jpg" class="d-block w-100" alt="..." style="margin-bottom: 30px;"
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
                        <button data-bs-toggle="modal" data-bs-target="#crearCategoria" type="button"
                                class="btn btn-outline-success" style="float: right; margin-top: 15px;"
                                id="agregar-categorias">Agregar
                        </button>
                        <p style="font-family: PT serif ; font-size: 30px; margin-top: 5px; height: 20px; width: 20px;">
                            Categorias</p>
                        <div class="container-fluid">
                        <div class="card-group">
                            <c:forEach var="category" items="${categories}">
                            <div class="card" style="width: 18rem;">
                                <img src="..." class="card-img-top" alt="...">

                                    <div class="card-body">
                                        <h5 class="card-title"><c:out value="${category.category}"/></h5>
                                        <form action="/api/actoresDeDoblaje" method="post">
                                            <input name="id"  value="${category.id}">
                                            <button type="submit" class="btn btn-outline-danger"><i data-feather="trash-2"></i></button>
                                        </form>

                                        <button data-bs-toggle="modal" data-bs-target="#updateCategory" type="button" class="btn btn-outline-warning"  id="editar"
                                                onclick="prueba('${category.id}|${category.category}')" name="editar"
                                        ><i data-feather="edit-3"></i></button>

                                    </div>
                                </div>
                            </c:forEach>
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
                                        <img src="/assets/img/photo-1608501078713-8e445a709b39.jpg" class="card-img-top"
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

<%--Modal Crear categoria--%>
<div class="modal fade" id="crearCategoria" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered"> >
        <div class="modal-content">
            <div class="modal-header">
                <p style="font-family: PT serif; text-align: center; font-size: 30px;">Agregar Nueva Categoria</p>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="categ-form" class="needs-validation" action="/api/superadmin/add-category" method="post">
                    <table class="table">
                        <tr>
                            <th>
                                    <label for="categoria">Categoria</label>
                                    <input class="form-control" placeholder="Categoria" name="categoria" id="categoria"
                                           type="text" required>
                                    <div class="invalid-feedback is-invalid">
                                        Campo obligatorio
                                    </div>
                            </th>
                        </tr>

                            </th>
                        </tr>

<%--                        <tr>--%>
<%--                            <td style="text-align: center;">--%>
<%--                                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>
<%--                                <div class="container-fluid" style=" filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF); /* 10px horizontal, 3px vertical, 30px desenfoque,5px propagacion */--%>
<%--                  background: white;">--%>
<%--                                    <form runat="server" style="text-align: center;">--%>
<%--                                        <div>--%>
<%--                                            <label for="name"--%>
<%--                                                   style="float: left; font-family: PT serif; margin-bottom: 4%; margin-right: 5%;">Imagen</label>--%>
<%--                                        </div>--%>
<%--                                        <input type='file' id="imgInp" style="float: left;"/>--%>
<%--                                        <img id="blah" src="#" alt="Imagen"--%>
<%--                                             style="height: 100px; width: 100px; border-radius: 20px;"/>--%>
<%--                                    </form>--%>
<%--                                </div>--%>
<%--                                <div class="invalid-feedback is-invalid">--%>
<%--                                    Campo obligatorio--%>
<%--                                </div>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
                        <tr>
                            <td style="float: right;">
                                <button type="button"
                                        style="     margin: 0; padding: 0;background-color: #8081B7 ;color: white; border-radius: 10px; height:35px ; width: 90px;"
                                        data-bs-dismiss="modal">Cerrar
                                </button>
                                <button type="submit"
                                        style="margin: 0; padding: 0;background-color: #8081B7 ;color: white; border-radius: 10px; height:35px ; width: 90px;">
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
                                            <label for="imgen1"
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
<div class="modal fade" id="updateCategory" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered"> >
        <div class="modal-content">
            <div class="modal-header">
                <p style="font-family: PT serif; text-align: center; font-size: 30px;">Actualizar Categoria</p>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="formUpdate" action="/api/actoresDeDoblaje/update" method="post" class="needs-validation"
                      novalidate method="post">

                    <div class="row">
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input id="id" name="id" class="form-control" >
                                <label for="id"> id</label>
                                <input type="text"   name="categoria1" id="categoria1"
                                       placeholder="nombre" required>
                                <label for="categoria1">ingresa tu nombre</label>
                                <div class="invalid-feedback text-start">
                                    Campo obligatorio
                                </div>
                            </div>
                        </div>
                    </div>

                    <button type="button" id="updateUserbtn" onclick="upSendForm()"
                            class="btn btn-outline-success btn-sm">
                        <i data-feather="check"></i> Aceptar
                    </button>

                    <button class="btn btn-outline-danger btn-sm"type="button" data-bs-dismiss="modal">
                        <i data-feather="x"></i>
                        Cancelar
                    </button>
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
                                            <label for="imgen"
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
<jsp:include page="/layouts/footer.jsp"/>

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

<script>
    const formRegistro=document.getElementById("formAdmin");
    const botonRegistro=document.getElementById("buttonAdmin");
    const  form=document.getElementById("formUpdate");
    const btn=document.getElementById("updateUserbtn");
console.log(form.value);
    

    function prueba(category) {
        var valores = category.split("|");
        var id = valores[0];
        var categories = valores[1];
        console.log("hola " + category);
        console.log("hola1 " + valores);
        console.log("hola2 " + categories);
        document.getElementById("id").value = id;
        document.getElementById("categoria1").value = categories;
    }

    (function () {
        btn.addEventListener("click",function (event){
            console.log(form.checkValidity());

            if(!form.checkValidity()){
                event.preventDefault();
                event.stopPropagation();
            }

            form.classList.add("was-validated")
        }, false);

    })();

    function upSendForm() {
        if(form.checkValidity()){
            var id = document.getElementById("id");
            console.log("aa "+id.value);
            var nombre = document.getElementById("categoria1");
            console.log("aaa "+categories.value);
            console.log(document.getElementById("formUpdate").value);
            console.log(form.checkValidity());
            form.submit();
        }
    }
</script>
</body>
</html>
