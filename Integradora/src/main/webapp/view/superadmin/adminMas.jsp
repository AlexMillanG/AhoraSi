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
    <title>SuperAdmin Mas</title>
    <jsp:include page="${pageContext.request.contextPath}/layouts/head.jsp"/>

</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/layouts/navbarSupeadmin.jsp"/>
<div class="container-fluid" id='cont'>
    <table class="table">
        <tr>
            <th scope="col">
                <div class="container-fluid" id='cont-2'>
                    <div class="container-fluid"
                         style="fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white;
                         border-radius: 30px;padding: 2%;">
                        <button data-bs-toggle="modal" data-bs-target="#crearCategoria" type="button"
                                class="btn btn-outline-success" style="float: right; margin-top: 15px;"
                                id="agregar-categorias">Agregar
                        </button>
                        <p style="font-family: PT serif ; font-size: 30px; margin-top: 15px;text-align: center">Categorias</p>
                        <div class="container-fluid" style="display: grid;grid-template-columns: auto auto auto auto;">
                            <c:forEach var="category" items="${categories}">
                                <div class="container-fluid"
                                     style="box-shadow: 4px 4px 16px 0px rgba(0, 0, 0, 0.15), -4px -4px 16px 0px #FFF;
                                 background:white;border-radius: 15px; width: 200px; margin-top: 10px; margin-bottom: 3%; margin-left: 5px;">
                                    <table class="table" style=" margin-top: 25px; margin-bottom: 2%;">
                                        <tr style="height: 130px;">
                                            <th scope="col" style="float: left; margin-left: -15px;">
                                                <button data-bs-toggle="modal" data-bs-target="#updateCategory"
                                                        type="button" class="btn" id="editar"
                                                        onclick="prueba('${category.id}|${category.category}')"
                                                        name="editar"><i class="fa-solid fa-pen"></i>
                                                </button>
                                                <form action="${pageContext.request.contextPath}/api/actoresDeDoblaje" method="post">
                                                    <input name="id" hidden value="${category.id}">
                                                    <button type="submit" class="btn"><i
                                                            class="fa-solid fa-trash-can"></i>
                                                    </button>
                                                </form>
                                            </th>
                                            <th rowspan="2">
                                                <img src="${pageContext.request.contextPath}/api/categories/loadFiles?id=${category.img_id}"
                                                     class="card-img-top" alt="..." ; style="border-radius: 50%;">
                                            </th>
                                        </tr>
                                    </table>
                                    <h6 style="font-family: PT serif ; font-size: 20px; text-align: center;"><c:out
                                            value="${category.category}"/></h6>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </th>
        </tr>
    </table>
</div>
<%--Modal Crear categoria--%>
<div class="modal fade" id="crearCategoria" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered"> >
        <div class="modal-content" style="border-radius: 30px;">}
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                    style="margin-left: 90%"></button>
            <p style="font-family: PT serif; text-align: center; font-size: 30px; padding-top: 5px">Agregar
                Categoria</p>
            <div class="modal-body">
                <form id="categ-form" class="needs-validation" action="${pageContext.request.contextPath}/api/superadmin/add-category"
                      method="post" enctype="multipart/form-data" novalidate>
                    <table class="table">
                        <tr>
                            <th>
                                <div class="container-fluid"style="fill: #FFF;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                    background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                    <label for="categoria">Categoria</label>
                                    <input class="form-control" placeholder="Categoria" name="categoria" id="categoria"
                                           type="text" required style="border: none; outline: none;
                      padding: 10px; border-radius: 5px;
                      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid"style="float: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr>
                            <th>
                                <div class="container-fluid" style="fill: #FFF;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                    background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                    <label for="img">Imagen</label>
                                    <input type="file" class="form-control" id="img"
                                           name="fileCategory" accept="image/*" onchange="handleFileChange()">
                                </div>
                                <div class="col-12 mt-5" id="preview" style="margin: 5%;margin-left: 30%;"></div>
                            </th>
                        </tr>
                        <td colspan="2">
                            <button type="button" id="btnCatg" onclick="upSendForm2()"
                                    style="width:100%;background-color: #8081B7 ;color: white; border-radius: 10px; height:35px ;font-family: PT serif;color: white;border: none">
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
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="border-radius: 30px;">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                    style="margin-left: 90%;margin-top: 2%"></button>
            <h6 style="font-family: PT serif; text-align: center; font-size: 30px; padding-top: 6px">Actualizar
                Categoria</h6>
            <div class="modal-body" style="border-radius: 50px;">
                <form id="formUpdate" action="${pageContext.request.contextPath}/api/actoresDeDoblaje/update" method="post" class="needs-validation"
                      novalidate method="post">
                    <input hidden id="id" name="id" class="form-control">
                    <div class="container-fluid " style="fill: #FFF;
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
                    <div class="container-fluid" style="fill: #FFF;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                    background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                        <label for="img">Imagen</label>
                        <input type="file" class="form-control" id="imgUp"
                               name="fileCategory" accept="image/*" onchange="handleFileChange2()">
                        <div class="invalid-feedback is-invalid" style="text-align: right">
                            Campo obligatorio
                        </div>
                    </div>
                    <div class="col-12 mt-5" id="previewUp" style="margin: 5%;margin-left: 30%;"></div>
                    <div style="text-align: right;margin: 10px">
                        <button type="button" id="updateUserbtn" onclick="upSendForm()"
                                style="     margin: 0; padding: 0;background-color: #8081B7 ;color: white; border-radius: 10px; height:35px ; width: 100%; border: none">
                            Aceptar
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="${pageContext.request.contextPath}/layouts/footer.jsp"/>

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
    const formRegistro = document.getElementById("formAdmin");
    const botonRegistro = document.getElementById("buttonAdmin");
    const form = document.getElementById("formUpdate");
    const btn = document.getElementById("updateUserbtn")
    const form2 = document.getElementById("categ-form")
    const btn2 = document.getElementById("btnCatg")
    console.log(form.value);

    function prueba(category) {
        var valores = category.split("|");
        var id = valores[0];
        const categories = valores[1];
        var img = valores[2];
        console.log("hola " + category);
        console.log("hola1 " + valores);
        console.log("hola2 " + categories);
        console.log((img))
        document.getElementById("id").value = id;
        document.getElementById("categoria1").value = categories;
        document.getElementById("idImg").value = img;
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

    (function () {
        btn2.addEventListener("click", function (event) {
            console.log(form2.checkValidity());

            if (!form2.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
            }

            form2.classList.add("was-validated")
        }, false);

    })();

    function upSendForm() {
        if (form.checkValidity()) {
            var id = document.getElementById("id");
            console.log("aa " + id.value);
            var nombre = document.getElementById("categoria1");
            console.log(document.getElementById("formUpdate").value);
            console.log(form.checkValidity());
            form.submit();
        }
    }

    function upSendForm2() {
        if (form2.checkValidity()) {
            var id = document.getElementById("id");
            var nombre = document.getElementById("categoria1");
            console.log(document.getElementById("formUpdate").value);
            console.log(form2.checkValidity());
            form2.submit();
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

    const handleFileChange2 = () => {
        const inputFile = document.getElementById("imgUp").files;
        let preview = document.getElementById("previewUp");
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
