<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>HistoriUtez</title>
    <title>HistoriUtez</title>
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" >
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/styles.css "type= "text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/logo1.png">




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
<div class="container-fluid" id="cont">
    <table class="table">
        <tr>
            <th scope="col">
                <nav class="navbar navbar-expand-lg  navbar-static fixed-top" style="font-family: PT serif ;
                     background: radial-gradient(137.13% 461.11% at 111.16% 113.45%, #8081B7 4.19%, #75BEF3 45.31%, #57F3C4 81.99%);
                     border-radius: 30px 30px 0px 0px;
                    " id="nav" class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid" style="font-size: 20px;font-weight: bolder;color: black">
                        <a class="navbar-brand" href="#"> <img src="" alt="" width="50px"></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
                                aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavDropdown" style="padding-bottom: 1%">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#acerca-de">HistoriUtez</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#acciones">Que hacer?</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#historias">Historias</a>
                                </li>
                                <li style=" margin-left: 500px;">
                                    <button class="btn btn-outline-dark"
                                            style="border-radius: 15px; box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);"
                                            data-bs-toggle="modal" data-bs-target="#InicioSecion">
                                        Iniciar sesion
                                    </button>
                                    <button class="btn btn-outline-dark" data-bs-toggle="modal"
                                            data-bs-target="#registro"
                                            style="border-radius: 15px; box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);">
                                        Registrarse
                                    </button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <div class="container-fluid" style="background: rgb(255, 255, 255);
                padding: 0;
                    border-radius: 0px 0px 30px 30px;margin-top: 5%; " id="cont1">
                    <div class="container-fluid" id="acerca-de">
                        <table class="table">
                            <tr>
                                <th>
                                    <div class="container-fluid"
                                         style="width: 100%; height: 300px; margin-top: 70px;">
                                        <table>
                                            <tr>
                                                <th>
                                                    <h5 style="font-family:PT serif; font-size: 50px; text-align: left;">
                                                        <strong>HistoriUtez</strong></h5>
                                                    <p style="color: #000;
                                    text-align: center;
                                    font-family: PT Serif;
                                    font-size: 18px;
                                    font-style: normal;
                                    font-weight: 400;
                                    width: 400px;">Comparte tus Historias,Inspira al Mundo:La Plataforma
                                                        que da vida a tus relatos y conecta corazones
                                                    </p>
                                                </th>
                                                <th>
                                                    <img src="${pageContext.request.contextPath}/assets/img/logo1.png" alt=""
                                                         class="img-fluid rounded-start"
                                                         width="250px">
                                                </th>
                                            </tr>
                                        </table>
                                    </div>
                                </th>
                                <th>
                                    <img src="${pageContext.request.contextPath}/assets/img/Imagen2.png" alt=""
                                         style="height: 300px; width: 300px; float: right;">
                                </th>
                        </table>
                        <div class="container-fluid"
                             style=" margin-top: 10px; height: 250px; margin-bottom: 5%;padding-left: 15%;padding-right: 15%;">
                            <table class="table" style="width: 100%; height: 200px;">
                                <tr>
                                    <th style="width: 50%;">
                                        <img src="${pageContext.request.contextPath}/assets/img/leer.png" alt="" width="300px" height="300px">
                                    </th>
                                    <th style="width: 50%; vertical-align: middle;">
                                        <p style="text-align: center;
                              color: #000;
                              text-align: center;
                              font-family: PT Serif;
                              font-size: 18px;
                              font-style: normal;
                              font-weight: 400;
                              line-height: normal;">"Sumérgete en un océano de historias fascinantes y déjate llevar por
                                            la magia de la ficción en cada publicación."</p>
                                    </th>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <table class="container-fluid" id="acciones" style="width: 100%">
                        <tr>
                            <th style="margin-top: 15px;width: 15%">
                                <img src="${pageContext.request.contextPath}/assets/img/Imagen1.png" alt="" style="height: 200px; width: 200px;">
                            </th>
                            <th style=" margin-top: 15px;">
                                <table style="width: 100%; height: 50px;border-bottom: 1px solid black; text-align: center; margin-top: 10px;">
                                    <tr style="width: 100%; height: 50px; font-family:  PT serif; font-size: 16px;font-weight: lighter;">
                                        <th style="width: 300px; ">
                                            <img src="${pageContext.request.contextPath}/assets/img/leerHistorias.png" alt="" height="50px" width="50px">
                                            <h6>Leer Historias</h6>
                                        </th>
                                        <th style="width: 300px; ">
                                            <img src="${pageContext.request.contextPath}/assets/img/escribirHistorias.png" alt="" height="50px"
                                                 width="50px">
                                            <h6>Escribir Historias</h6>
                                        </th>
                                        <th style="width: 300px; ">
                                            <img src="${pageContext.request.contextPath}/assets/img/compartir_1.png" alt="" height="50px" width="50px">
                                            <h6>Compartir Historias</h6>
                                        </th>
                                        <th style="width: 300px; ">
                                            <img src="${pageContext.request.contextPath}/assets/img/foross.png" alt="" height="50px" width="50px">
                                            <h6>Comentar Historias</h6>
                                        </th>
                                        <th style="width: 300px; ">
                                            <img src="${pageContext.request.contextPath}/assets/img/reaccion_1.png" alt="" height="50px" width="50px">
                                            <h6>Reaccionar a Historias</h6>
                                        </th>
                                    </tr>
                                </table>
                            </th>
                            <th style="width: 15%;margin-left: 15%; margin-top: 15px;">
                                <img src="${pageContext.request.contextPath}/assets/img/Imagen2.png" alt=""
                                     style="height: 300px; width: 300px;margin-bottom: 0%;">
                            </th>
                        </tr>
                    </table>

                    <div class="container-fluid" id="historias">
                        <div class="container-fluid" style="margin-top: 70px;">
                            <table>
                                <tr>
                                    <th>
                                        <h5 style="font-family:PT serif; font-size: 30px; text-align: left;"><strong>Historias
                                            en HistoriUtez</strong></h5>
                                        <div class="container-fluid" style="display: flex;flex-direction: row">
                                            <p style="margin-top: 1%; color: #000;
                              text-align: center;
                              font-family: PT Serif;
                              font-size: 16px;
                              font-style: normal;
                              font-weight: 400;
                              width: 45%;">
                                                "Desde cuentos cortos hasta epopeyas épicas, en Historiutez no hay
                                                límites
                                                para la imaginación. Comparte tus creaciones y únete a una comunidad que
                                                celebra la magia de la narrativa."
                                            </p>
                                            <img src="${pageContext.request.contextPath}/assets/img/historias.png" alt="" class="img-fluid rounded-start"
                                                 style="margin-left: 5%;" width="200px">
                                        </div>
                                    </th>
                                </tr>
                            </table>
                        </div>
                        <div class="container-fluid" style="margin-top: 10%; margin-bottom: 10%;">
                            <h5 style="font-family:PT serif; font-size: 30px; text-align: left;"><strong>Historias en
                                HistoriUtez</strong></h5>
                            <div class="container-fluid"
                                 style="display: flex; justify-content: center; align-items: center;">
                                <div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false"
                                     data-bs-interval="false">
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <div class="cards-wrapper" style="display: flex; flex-direction: row;">
                                                <div class="card" style="width: 18rem; margin-left: 10px;">
                                                    <img src="${pageContext.request.contextPath}/assets/img/1.jpg" class="card-img-top" alt="...">
                                                    <div class="card-body">
                                                        <p class="card-text">Some quick example text to build on the
                                                            card title and make up the bulk of the card's content.</p>
                                                    </div>
                                                </div>
                                                <div class="card" style="width: 18rem; margin-left: 10px;">
                                                    <img src="${pageContext.request.contextPath}/assets/img/1.jpg" class="card-img-top" alt="...">
                                                    <div class="card-body">
                                                        <p class="card-text">Some quick example text to build on the
                                                            card title and make up the bulk of the card's content.</p>
                                                    </div>
                                                </div>
                                                <div class="card" style="width: 18rem; margin-left: 10px;">
                                                    <img src="${pageContext.request.contextPath}/assets/img/1.jpg" class="card-img-top" alt="...">
                                                    <div class="card-body">
                                                        <p class="card-text">Some quick example text to build on the
                                                            card title and make up the bulk of the card's content.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <div class="cards-wrapper" style="display: flex; flex-direction: row;">
                                                <div class="card" style="width: 18rem; margin-left: 10px;">
                                                    <img src="${pageContext.request.contextPath}/assets/img/1.jpg" class="card-img-top" alt="...">
                                                    <div class="card-body">
                                                        <p class="card-text">Some quick example text to build on the
                                                            card title and make up the bulk of the card's content.</p>
                                                    </div>
                                                </div>
                                                <div class="card" style="width: 18rem; margin-left: 10px;">
                                                    <img src="${pageContext.request.contextPath}/assets/img/1.jpg" class="card-img-top" alt="...">
                                                    <div class="card-body">
                                                        <p class="card-text">Some quick example text to build on the
                                                            card title and make up the bulk of the card's content.</p>
                                                    </div>
                                                </div>
                                                <div class="card" style="width: 18rem; margin-left: 10px;">
                                                    <img src="${pageContext.request.contextPath}/assets/img/1.jpg" class="card-img-top" alt="...">
                                                    <div class="card-body">
                                                        <p class="card-text">Some quick example text to build on the
                                                            card title and make up the bulk of the card's content.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <div class="cards-wrapper" style="display: flex; flex-direction: row;">
                                                <div class="card" style="width: 18rem; margin-left: 10px;">
                                                    <img src="${pageContext.request.contextPath}/assets/img/1.jpg" class="card-img-top" alt="...">
                                                    <div class="card-body">
                                                        <p class="card-text">Some quick example text to build on the
                                                            card title and make up the bulk of the card's content.</p>
                                                    </div>
                                                </div>
                                                <div class="card" style="width: 18rem; margin-left: 10px;">
                                                    <img src="${pageContext.request.contextPath}/assets/img/1.jpg" class="card-img-top" alt="...">
                                                    <div class="card-body">
                                                        <p class="card-text">Some quick example text to build on the
                                                            card title and make up the bulk of the card's content.</p>
                                                    </div>
                                                </div>
                                                <div class="card" style="width: 18rem; margin-left: 10px;">
                                                    <img src="${pageContext.request.contextPath}/assets/img/1.jpg" class="card-img-top" alt="...">
                                                    <div class="card-body">
                                                        <p class="card-text">Some quick example text to build on the
                                                            card title and make up the bulk of the card's content.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="carousel-control-prev" type="button"
                                            data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Previous</span>
                                    </button>
                                    <button class="carousel-control-next" type="button"
                                            data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Next</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </th>
        </tr>
    </table>
</div>

<!-- Modal Inicio Secion -->
<div class="modal fade" id="InicioSecion" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content" style="border-radius: 30px; width: 350px;">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                    style="margin-top: 20px; margin-left: 90%;"></button>
            <div class="modal-body">
                <form id="loginForm" action="${pageContext.request.contextPath}/api/auth" class="needs-validation"
                      novalidate method="post">
                    <div style="margin-left: 30%; border-radius: 100%; box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);background: white;width:150px; height:150px; text-align: center; vertical-align: middle; padding: 10px;">
                        <i class="fa-solid fa-user" style="font-size: 100px; text-align: center "></i>
                    </div>
                    <table class="table">
                        <tr style="height: 5px;">
                            <th>
                                <div class="container-fluid " style="box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);background: white;
                      border-radius: 15px;
                      margin-left: 3px;
                      font-family: PT serif;">
                                    <label for="name">Correo Electrónico</label>
                                    <input type="email" class="form-control" name="email" id="email"
                                           placeholder="Matricula@utez.edu.mx" required
                                           style="border: none; outline: none;
                         border-radius: 5px;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr style="height: 5px;">
                            <th>
                                <div class="container-fluid " style="box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);background: white;
                      border-radius: 15px;
                      margin-left: 3px;
                      font-family: PT serif;">
                                    <label for="name">Contraseña</label>
                                    <input type="password" name="pass" class="form-control" id="password"
                                           placeholder="Contaseñas" required
                                           style="border: none; outline: none;
                         border-radius: 5px;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                    <div class="invalid-feedback is-invalid" style="text-align: right">
                                        Campo obligatorio
                                    </div>
                                </div>
                            </th>
                        </tr>
                        <tr style="height: 5px;">
                            <th style="border-bottom: 1px solid black;">

                                <button type="button" onclick="prueba()" id="login" class="container-fluid"
                                        style="height: 60px; background-color: black; font-family: PT serif; color: #FFF; border-radius: 15px;">
                                    Iniciar Sesión
                                </button>
                            </th>
                        </tr>
                        <tr>
                            <th style="font-family: PT serif; text-align: center; font-style: normal;">
                                <p>
                                <h6 style="color: #7E7C7C;">¿No tienes una Cuenta? <a
                                        style="color: #5A6AA9;  text-decoration: none;" data-bs-dismiss="modal"
                                        aria-label="Close" data-bs-toggle="modal"
                                        data-bs-target="#registro">Registrarte</a></h6>
                                </p>
                            </th>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Modal registro -->
<div class="modal fade" id="registro" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="border-radius: 30px;">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="mostrarAlerta()"
                    style="margin-top: 20px; margin-left: 90%;"></button>
            <p style="font-family: PT serif; font-size: 35px; text-align: center; margin-top: 20px; font-style: normal;font-weight: 700;">
                <strong>Registrarse</strong></p>
            <div class="modal-body">
                <form id="formregistrer" action="${pageContext.request.contextPath}/api/user/save" method="post" class="needs-validation"
                      novalidate method="post" enctype="multipart/form-data" >
                    <div class="card mb-3" style="border: none;">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <label for="img1" style="
                    margin-left: 3px;
                    font-family: PT serif;">Foto de perfil</label>
                                <input type="file" class="form-control" id="img1"
                                       name="fileCategory" accept="image/*" onchange="handleFileChange1()">
                                <div class="col-12 mt-5" id="preview1"></div>
                            </div>
                            <div class="col-md-8">
                                <table class="table">
                                    <tr>
                                        <th colspan="2">
                                            <div class="container-fluid " style="    fill: #FFF;
                    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                                <label for="name">Nombre:</label>
                                                <input type="text" class="form-control" name="name" id="name"
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
                    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                                <label for="name">Apellido Paterno:</label>
                                                <input type="text" type="text" name="surname" class="form-control"
                                                       id="surname"
                                                       placeholder="Apellido Paterno" required
                                                       style="border: none; outline: none;padding: 10px; border-radius: 5px;box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                                                <div class="invalid-feedback is-invalid" style="text-align: right">
                                                    Campo obligatorio
                                                </div>
                                            </div>
                                        </th>
                                        <th>
                                            <div class="container-fluid " style="    fill: #FFF;
                    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);background: white;
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
                   box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25); background: white;
                    border-radius: 15px;
                    margin-left: 3px;
                    font-family: PT serif;">
                                                <label for="name">Correo Electrónico:</label>
                                                <input type="email" class="form-control" name="emailRegistro"
                                                       id="emailRegistro"
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
                    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);background: white;
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
                   box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25); background: white;
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
                                            <button type="button" onclick="registro()" id="botonRegistro"
                                                    class="container-fluid"
                                                    style="height: 50px; background-color: black; font-family: PT serif; color: #FFF; border-radius: 15px;">
                                                Aceptar
                                            </button>
                                        </th>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </form>


            </div>
        </div>
    </div>
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
    const agregar = document.getElementById("login");
    const form = document.getElementById("loginForm");
    const iniciar = document.getElementById("login");

    const formRegistro = document.getElementById("formregistrer");
    const botonRegistro = document.getElementById("botonRegistro");

    (function () {
        agregar.addEventListener("click", function (event) {
            console.log(form.checkValidity());

            if (!form.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
            }

            form.classList.add("was-validated")
        }, false);

    })();

    function prueba() {
        if (form.checkValidity()) {
            console.log("AntesSubmit");
            form.submit();
            console.log("DespuesSubmit");
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
            console.log("a" + formRegistro.value)
            console.log("antes del submint")
            formRegistro.submit();
            console.log("A" + formRegistro.value);
            console.log("despues del submint")

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
                    + "' style='height: autopx;width: 150px;'/>";
            }
            reader.readAsDataURL(inputFile[i]);
        }
    }

</script>

</body>
</html>