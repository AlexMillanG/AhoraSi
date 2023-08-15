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
            <th scope="col">
                <div class="container-fluid" id='cont-2'>
                    <jsp:include page="/layouts/navbarSupeadmin.jsp"/>
                    <div class="container-fluid"  style="fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; margin-bottom: 15px;">
                        <button data-bs-toggle="modal" data-bs-target="#crearCategoria" type="button"
                                class="btn btn-outline-success" style="float: right; margin-top: 15px;"
                                id="agregar-categorias">Agregar</button>
                        <p style="font-family: PT serif ; font-size: 30px; margin-top: 15px;">Categorias</p>
                        <c:forEach var="category" items="${categories}">
                        <div class="container-fluid"
                                 style="box-shadow: 4px 4px 16px 0px rgba(0, 0, 0, 0.15), -4px -4px 16px 0px #FFF;
                                 background:white; position: relative; float: left;  border-radius: 15px; width: 200px; margin-top: 10px; margin-bottom: 25px; margin-left: 5px;">
                                <table class="table" style=" margin-top: 25px; margin-bottom: 2%;">
                                    <tr style="height: 130px;">
                                        <th scope="col" style="float: left; margin-left: -15px;" >
                                            <button data-bs-toggle="modal" data-bs-target="#updateCategory" type="button" class="btn"  id="editar"
                                                    onclick="prueba('${category.id}|${category.category}')" name="editar"
                                            ><i class="fa-solid fa-pen"></i>
                                            </button>
                                            <form action="/api/actoresDeDoblaje" method="post">
                                                <input name="id" hidden value="${category.id}">
                                                <button type="submit" class="btn"> <i class="fa-solid fa-trash-can"></i></button>
                                            </form>
                                        </th>
                                        <th rowspan="2">
                                            <img src="/api/categories/loadFiles?id=${category.img_id}" class="card-img-top" alt="..."; style="border-radius: 50%;">
                                        </th>
                                    </tr>
                                </table>
                            <h6 style="font-family: PT serif ; font-size: 20px; text-align: center;"><c:out value="${category.category}"/></h6>
                        </div>
                        </c:forEach>
                    </div>
                    <div class="container-fluid" style="fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; margin-bottom: 15px;">
                        <button data-bs-toggle="modal" data-bs-target="#crearAvatar" type="button"
                                    class="btn btn-outline-success" style="float: right; margin-top: 15px;" id="agregar">
                                Agregar
                            </button>
                            <p style="font-family: PT serif ; font-size: 30px;">Avatars</p>
                            <div class="container-fluid"
                                 style="fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; height: 150px; width: 150px; margin-top: 10px; margin-bottom: 25px; margin-left: 10px;">
                                <c:forEach items="${image}" var="img">
                                    <div class="card" style="width: 18rem;">
                                        <img src="/api/avatar/loadFiles?idA=${img.id}" class="card-img-top" alt="${img.filename}">
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
</th>
</tr>
</table>
</div>
<!-- Modal -->
<%--Modal Crear categoria--%>
<div class="modal fade" id="crearCategoria" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered"> >
        <div class="modal-content"style="border-radius: 30px;">
            <p style="font-family: PT serif; text-align: center; font-size: 30px; padding-top: 5px">Agregar Categoria</p>
                <div class="modal-body">
                <form id="categ-form" class="needs-validation" action="/api/superadmin/add-category"
                      method="post" enctype="multipart/form-data" novalidate>
                    <table class="table">
                        <tr>
                            <th>
                                <div class="container-fluid " style="    fill: #FFF;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                    background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                    <label for="categoria">Categoria</label>
                                    <input class="form-control" placeholder="Categoria" name="categoria" id="categoria"
                                           type="text" required
                                            style="border: none; outline: none;
                      padding: 10px; border-radius: 5px;
                      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
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
                    font-family: PT serif;"><label for="img">Imagen</label>
                                    <input type="file" class="form-control" id="img"
                                           name="fileCategory" accept="image/*" onchange="handleFileChange()">
                                    <div class="col-12 mt-5" id="preview"></div>
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <th style="text-align: right">
                            <button type="submit"
                                    style="     margin: 0; padding: 0;background-color: #8081B7 ;color: white; border-radius: 10px; height:35px ; width: 90px; border: none">
                                Agregar
                            </button>
                            <button type="button" data-bs-dismiss="modal" aria-label="Close"
                                    style="background-color: #8081B7 ;color: white; border-radius: 10px; height:35px ; width: 90px; border: none"
                                    data-bs-dismiss="modal">Cerrar
                            </button>
                            </th>
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
        <div class="modal-content" style="border-radius: 30px;">
                <h6 style="font-family: PT serif; text-align: center; font-size: 30px; padding-top: 6px">Agregar Avatar</h6>
            <div class="modal-body">
                <form id="admin-form" class="needs-validation" action="/api/superadmin/add-avatar" method="post"
                      enctype="multipart/form-data" novalidate>
                    <table class="table">
                        <tr>
                        <th>
                            <div class="container-fluid " style="    fill: #FFF;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                    background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                <label for="img">Imagen</label>
                                <input type="file" class="form-control" id="img1"
                                       name="fileCategory" accept="image/*" onchange="handleFileChange1()">
                                <div class="col-12 mt-5" id="preview1"></div>
                                <div class="invalid-feedback is-invalid" style="text-align: right">
                                    Campo obligatorio
                                </div>
                            </div>
                        </th>
                        </tr>
                        <tr>
                            <th style="text-align: right">
                                <button type="submit"
                                        style="     margin: 0; padding: 0;background-color: #8081B7 ;color: white; border-radius: 10px; height:35px ; width: 90px; border: none">
                                    Agregar
                                </button>
                                <button type="button" data-bs-dismiss="modal" aria-label="Close"
                                        style="background-color: #8081B7 ;color: white; border-radius: 10px; height:35px ; width: 90px; border: none"
                                        data-bs-dismiss="modal" >Cerrar
                                </button>
                            </th>
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
                <h6 style="font-family: PT serif; text-align: center; font-size: 30px; padding-top: 6px">Actualizar Categoria</h6>
            <div class="modal-body" style="border-radius: 50px;">
                <form id="formUpdate" action="/api/actoresDeDoblaje/update" method="post" class="needs-validation"
                      novalidate method="post">
                    <input hidden id="id" name="id" class="form-control">
                    <div class="container-fluid " style="    fill: #FFF;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                    background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                        <label for="categoria1">Categoria</label>
                        <input type="text" name="categoria1" id="categoria1"
                               required class="form-control"
                               style="border: none; outline: none;
                      padding: 10px; border-radius: 5px;
                      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                        <div class="invalid-feedback is-invalid" style="text-align: right">
                            Campo obligatorio
                        </div>
                    </div>
                    <div style="text-align: right;margin: 10px">
                        <button type="button" id="updateUserbtn" onclick="upSendForm()"
                                style="     margin: 0; padding: 0;background-color: #8081B7 ;color: white; border-radius: 10px; height:35px ; width: 90px; border: none">
                            Aceptar
                        </button>
                        <button type="button" data-bs-dismiss="modal" aria-label="Close"
                                style="background-color: #8081B7 ;color: white; border-radius: 10px; height:35px ; width: 90px; border: none"
                                data-bs-dismiss="modal" >Cerrar
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="editarAdmin" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
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
        const categories = valores[1];
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
            console.log(document.getElementById("formUpdate").value);
            console.log(form.checkValidity());
            form.submit();
        }
    }

    const handleFileChange = () => {
        const inputFile = document.getElementById("img").files;
        let preview = document.getElementById("preview");
        preview.innerHTML = "";
        for (let i = 0; i < inputFile.length; i++) {
            let reader = new FileReader();
            reader.onloadend = (result) => {
                preview.innerHTML = "<img src='" + result.target.result
                    + "' style='height: 200px;width: auto;'/>";
            }
            reader.readAsDataURL(inputFile[i]);
        }
    }
    const handleFileChange1 = () => {
        const inputFile = document.getElementById("img1").files;
        let preview = document.getElementById("preview1");
        preview.innerHTML = "";
        for (let i = 0; i < inputFile.length; i++) {
            let reader = new FileReader();
            reader.onloadend = (result) => {
                preview.innerHTML = "<img src='" + result.target.result
                    + "' style='height: 200px;width: auto;'/>";
            }
            reader.readAsDataURL(inputFile[i]);
        }
    }
</script>
</body>
</html>
