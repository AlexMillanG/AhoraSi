<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <jsp:include page="../../layouts/head.jsp"/>
</head>
<body>
<%-- chingadera de crear foro --%>
<div class="container-fluid" id='cont'>
    <table class="table">
        <tr>
            <th scope="col" class="logo1">
                <img src= "../../assets/img/logo.png"  class="logo">
            </th>
            <th scope="col">
                <div  class="container-fluid" id='cont-2'>

                    <jsp:include page="../../layouts/navbar.jsp"/>
                    <div id="carrusel" class="container-fluid">
                        <h1 style="margin-top: 20px; font-family: PT serif ;">Bienvenido </h1>
                        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active" data-bs-interval="10000" style="margin-bottom: 30px;" style="margin-left: 30px;" style="margin-right: 30px;" style="border-radius: 15%;">
                                    <img src= "../../assets/img/1.jpg"  class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item" data-bs-interval="2000" style="margin-bottom: 30px;" style="margin-left: 30px;" style="margin-right: 30px;" style="border-radius: 15%;">
                                    <img src= "../../assets/img/2.jpg"  class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src= "../../assets/img/3.jpg"   class="d-block w-100" alt="..."  style="margin-bottom: 30px;" style="margin-left: 30px;" style="margin-right: 30px;" style="border-radius: 15%;">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <ul class="nav nav-tabs" id="myTab" role="tablist" style="float: right; font-family: PT serif; color: #8081B7;">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="accion-tab" data-bs-toggle="tab" data-bs-target="#accion-tab-pane" type="button" role="tab" aria-controls="accion-tab-pane" aria-selected="true">Historias</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="aventura-tab" data-bs-toggle="tab" data-bs-target="#aventura-tab-pane" type="button" role="tab" aria-controls="aventura-tab-pane" aria-selected="false">Foros</button>
                        </li>
                    </ul>

                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="accion-tab-pane" role="tabpanel" aria-labelledby="accion-tab" tabindex="0">
                            <div class="container-fluid" style="font-family: PT serif; fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; margin-bottom: 15px;">
                                <div class="row g-0 bg-body-secondary position-relative">
                                    <div class="col-md-6 mb-md-0 p-md-4">
                                        <img src= "../../assets/img/3.jpg"  class="w-100" alt="...">
                                    </div>
                                    <div class="col-md-6 p-4 ps-md-0">
                                        <h4 class="mt-0">Columns with stretched link</h4>
                                        <h5 class="mt-0">Usuario Accion</h5>
                                        <p>Another instance of placeholder content for this other custom component. It is intended to mimic what some real-world content would look like, and we're using it here to give the component a bit of body and size.</p>
                                        <button data-bs-toggle="modal" data-bs-target="#verHistoria" type="button" class="btn" style="float: right; width: 100%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;" >Leer Historia</button>
                                    </div>
                                    <form id="formHistorias" action="/api/story/save">
                                        <input type="text"name="title" id="title" placeholder="titulo" required>

                                        <label for="title">titulo</label>

                                        <input type="text" name="content" id="content" placeholder="contenido" required>

                                        <label for="content">contenido</label>

                                        <%--id, title content, created_atDATETIME, file
                                         status, user, categories--%>
                                        <button type="submit">enviar</button>
                                    </form>
                                </div>
                            </div>
                        </div>


                        <div class="tab-pane fade" id="aventura-tab-pane" role="tabpanel" aria-labelledby="aventura-tab" tabindex="0">
                            <div class="container-fluid" style="font-family: PT serif; fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  margin-bottom: 15px;">
                                <div class="row g-0 bg-body-secondary position-relative">
                                    <div class="col-md-6 mb-md-0 p-md-4">
                                        <img src= "../../assets/img/3.jpg"  class="w-100" alt="..." style="border-radius: 100%">
                                    </div>
                                    <div class="col-md-6 p-4 ps-md-0">
                                        <h4 class="mt-0">Columns with stretched link</h4>
                                        <h5 class="mt-0">Usuario</h5>
                                        <p>Another instance of placeholder content for this other custom component. It is intended to mimic what some real-world content would look like, and we're using it here to give the component a bit of body and size.</p>
                                        <button  type="button" class="btn" style="float: right; width: 50%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;" >Entra al Foro</button>
                                    </div>
                                </div>
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
                                <p> Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
                                    Another instance of placeholder content for this other custom component. It is intended to mimic what some real-world content would look like, and we're using it here to give the component a bit of body and size.</p>
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
        const agregarB = document.getElementById("agregar");
        const form = document.getElementById("pokemon-form");
        (function () {
            agregarB.addEventListener("click",function (event){
                console.log(form.checkValidity());

                if(!form.checkValidity()){
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add("was-validated")
            }, false);

        })();
    </script>

</body>
</html>