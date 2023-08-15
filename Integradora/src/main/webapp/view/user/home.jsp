<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="mx.edu.utez.integradora.models.actions.likes.DaoLikes" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home - Hitu</title>
    <jsp:include page="../../layouts/head.jsp"/>
</head>
<body>
<%-- chingadera de crear foro --%>
<div class="container-fluid" id='cont'>
    <table class="table">
        <tr>
                <div  class="container-fluid" id='cont-2'>
                    <jsp:include page="../../layouts/navbar.jsp"/>
                    <jsp:include page="../../layouts/carrusel.jsp"/>

                    <div class="input-group mb-3" style="display: flex; flex-direction: row;" data-bs-toggle="modal" data-bs-target="#CreateStory">
                        <div class="input-group-text" style="background-color: #FFF; border: none; padding-top: 5px;" >
                            <img src="../img/logo1.png" style="width: 50px; border-radius: 100%;">
                        </div>
                        <div class="container-fluid" style="font-size: 16px; font-family: PT serif;font-weight: 100; padding: 10px; width: 85%; height: 50px;border-radius: 15px;box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
                            ">
                            ¿HITU que cuentas? <i style="float: right; padding: 5px;" class="fa-regular fa-paper-plane"></i>
                        </div>
                    </div>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-6">
                                <h3 class="mb-3" style="font-size: 30px; font-family:PT serif;">Lo más popular</h3>
                            </div>
                            <div class="col-6 text-right">
                                <a href="#carouselExampleIndicators2" role="button" data-slide="prev">
                                    <i class="fa-solid fa-arrow-left" style="color: black;"></i>
                                </a>
                                <a  href="#carouselExampleIndicators2" role="button" data-slide="next">
                                    <i class="fa-solid fa-arrow-right" style="color: black;"></i>
                                </a>
                            </div>
                            <div class="col-12">
                                <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner" style="padding-bottom: 10px;">
                                        <div class="carousel-item active">
                                            <div class="row">
                                                <div class="col-md-4 mb-3">
                                                    <div class="card"  style="border-radius: 15px; margin-left: 2px;" >
                                                        <img class="img-fluid" alt="100%x280" src="../img/1.jpg">
                                                        <div class="card-body" style="width: 100%;">
                                                            <div class="row" style="width: 120%;">
                                                                <div class="col" style="width: 80%;">Categoria </div>
                                                                <div class="col"style="width:1%;  backgound-color: red ;padding: 1px; box-sizing: border-box;">13 <i class="fa-solid fa-heart"></i>12 <i class="fa-solid fa-comment"></i></div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>                                                        <div class="col-md-4 mb-3">
                                                <div class="card"  style="border-radius: 15px; margin-left: 2px;" >
                                                    <img class="img-fluid" alt="100%x280" src="../img/1.jpg">
                                                    <div class="card-body" style="width: 100%;">
                                                        <div class="row" style="width: 120%;">
                                                            <div class="col" style="width: 80%;">Categoria </div>
                                                            <div class="col"style="width:1%;  backgound-color: red ;padding: 1px; box-sizing: border-box;">13 <i class="fa-solid fa-heart"></i>12 <i class="fa-solid fa-comment"></i></div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>                                                    <div class="col-md-4 mb-3">
                                                <div class="card"  style="border-radius: 15px; margin-left: 2px;" >
                                                    <img class="img-fluid" alt="100%x280" src="../img/1.jpg">
                                                    <div class="card-body">
                                                        <div class="row" style="width: 120%;">
                                                            <div class="col" style="width: 80%;">Categoria </div>
                                                            <div class="col"style="width:1%;  backgound-color: red ;padding: 1px; box-sizing: border-box;">13 <i class="fa-solid fa-heart"></i>12 <i class="fa-solid fa-comment"></i></div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <div class="row">
                                                <div class="col-md-4 mb-3">
                                                    <div class="card"  style="border-radius: 15px; margin-left: 2px;" >
                                                        <img class="img-fluid" alt="100%x280" src="../img/1.jpg">
                                                        <div class="card-body">
                                                            <div class="row" style="width: 120%;">
                                                                <div class="col" style="width: 80%;">Categoria </div>
                                                                <div class="col"style="width:1%;  backgound-color: red ;padding: 1px; box-sizing: border-box;">13 <i class="fa-solid fa-heart"></i>12 <i class="fa-solid fa-comment"></i></div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>                                                        <div class="col-md-4 mb-3">
                                                <div class="card"  style="border-radius: 15px; margin-left: 2px;" >
                                                    <img class="img-fluid" alt="100%x280" src="../img/1.jpg">
                                                    <div class="card-body">
                                                        <div class="row" style="width: 120%;">
                                                            <div class="col" style="width: 80%;">Categoria </div>
                                                            <div class="col"style="width:1%;  backgound-color: red ;padding: 1px; box-sizing: border-box;">13 <i class="fa-solid fa-heart"></i>12 <i class="fa-solid fa-comment"></i></div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>                                                        <div class="col-md-4 mb-3">
                                                <div class="card"  style="border-radius: 15px; margin-left: 2px;" >
                                                    <img class="img-fluid" alt="100%x280" src="../img/1.jpg">
                                                    <div class="card-body">
                                                        <div class="row" style="width: 120%;">
                                                            <div class="col" style="width: 80%;">Categoria </div>
                                                            <div class="col"style="width:1%;  backgound-color: red ;padding: 1px; box-sizing: border-box;">13 <i class="fa-solid fa-heart"></i>12 <i class="fa-solid fa-comment"></i></div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <c:forEach var="Story" items="${stories}">
                    <div class="container-fluid" style="font-family: PT serif; fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; margin-bottom: 15px;">
                                <div class="row g-0 bg-body-secondary position-relative">
                                    <div class="col-md-6 mb-md-0 p-md-4">
                                        <img src= "../../assets/img/3.jpg"  class="w-100" alt="...">
                                    </div>
                                    <div class="col-md-6 p-4 ps-md-0">
                                        <h4 class="mt-0"><c:out value="${Story.title}"/></h4>

                                        <h5 class="mt-0"><c:out value="${Story.categories.category}"/></h5>
                                        <p><c:out value="${Story.content}"/> </p>
                                              <img src="/api/stories/loadFiles?id=${Story.img_id}" alt="">
                                              <input value="${Story.img_id}">
                                              <form action="/api/user/like" method="post">
                                                  <input hidden value ="${user.id}" name = "user_id">
                                                  <input hidden value ="${Story.id}" name = "story_id">
                                                  <button type="submit"><i data-feather ="star"></i></button>
                                              </form>
                                         <%-- <c:forEach var="like" items="${likes}">

                                              <p><c:out value="${like}"/> </p>
                                          </c:forEach> --%>

                                            <%--    <% Long StoryID = Story.id;%>
                                                <% DaoLikes daoLikes = new DaoLikes(); %>
                                                <% daoLikes.findAllLikes(); %> --%>
                                              <p><c:out value="${Story.likes}"></c:out> </p>

                                        <button data-bs-toggle="modal" data-bs-target="#verHistoria" type="button" class="btn" style="float: right; width: 100%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;" >Leer Historia</button>
                                              <br>
                                              <br>
                                              <br>
                                              <br>
                                        </c:forEach>
                                    </div>






                                    <form id="formHistorias" action="/api/story/save" method="post" enctype="multipart/form-data" novalidate>
                                        <input name="user_id" hidden value="${user.id}">
                                        <label for="title">titulo</label>
                                        <br>

                                        <input type="text"name="title" id="title" placeholder="titulo" required>
                                        <br>
                                        <label for="content">contenido</label>
                                        <br>
                                        <input type="text" name="content" id="content" placeholder="contenido" required>

                                        <br>
                                        <label for="img1">Imagen</label>
                                        <input type="file" class="form-control" id="img1"
                                               name="fileCategory" accept="image/*" onchange="handleFileChange1()">
                                        <div class="col-12 mt-5" id="preview1"></div>
                                        <br>




                                        <select name="categories" id="Categories" class="form-select" required>
                                        <option value="">Seleccione ...</option>
                                        <s:forEach var="category" items="${categories}">
                                            <option value="${category.id}"><s:out value="${category.category}"/></option>
                                        </s:forEach>
                                        </select>
                                        <select name="status" id="status"class="form-select" required>
                                            <option value="3">Como historia</option>
                                            <option value="4">Como articulo</option>
                                        </select>
                                        <%--id, title content, created_atDATETIME, file
                                         status, user, categories--%>
                                        <button type="submit">enviar</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                </div>
            </th>
        </tr>
        </thead>
    </table>
</div>

<div class="modal fade" id="verHistoria" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" >
    <div class="modal-dialog modal-xl"  >
        <div class="modal-content">
            <div class="modal-header">

                </p><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row g-0 bg-body-secondary position-relative" style="height: 25%">
                    <div class="col-md-6 mb-md-0 p-md-4" style="height: 25%">
                        <img src= "../../assets/img/3.jpg"  class="w-100" alt="...">
                    </div>
                    <div class="col-md-6 p-4 ps-md-0" style="height: 25%">
                        <h4 class="mt-0">Columns with stretched link</h4>
                        <h5 class="mt-0">Usuario</h5>
                        <div style="	overflow-y: scroll; height: 300px;">
                            <div style="font-family: PT serif; margin-top: 5%; margin-bottom: 5%; margin-left: 5%; margin-right: 5%;">
                                <p> Contrary to popular belief, Lorem Ipsum is not simply random text.
                                    It has roots in a piece of classical Latin literature from 45 BC,
                                    making it over 2000 years old. Richard McClintock, a Latin professor
                                    at Hampden-Sydney College in Virginia, looked up one of the more obscure
                                    Latin words, consectetur, from a Lorem Ipsum passage, and going through
                                    the cites of the word in classical literature, discovered the undoubtable
                                    source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus
                                    Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in
                                    45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
                                    Another instance of placeholder content for this other custom component.
                                    It is intended to mimic what some real-world content would look like, and we're using it here to give the component a bit of body and size.</p>
                            </div>
                        </div>
                       </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../../layouts/footer.jsp"/>
    <script>
        // const agregarB = document.getElementById("agregar");
        // const form = document.getElementById("pokemon-form");
        // (function () {
        //     agregarB.addEventListener("click",function (event){
        //         console.log(form.checkValidity());
        //
        //         if(!form.checkValidity()){
        //             event.preventDefault();
        //             event.stopPropagation();
        //         }
        //         form.classList.add("was-validated")
        //     }, false);
        //
        // })();

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