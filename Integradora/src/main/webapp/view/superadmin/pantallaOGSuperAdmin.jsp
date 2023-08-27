<!DOCTYPE html>
<head>
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
    <title>HITU-SuperAdmin</title>
    <link href="${pageContext.request.contextPath}/css/style-index.css" rel="stylesheet" type="text/css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>


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


    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</head>
<style>
    #campo{
        fill: #FFF;
        filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);
        background: white;
        border-radius: 15px;
        margin-left: 3px;
        font-family: PT serif;
    }
</style>
<body>


<div class="container-fluid">
    <nav id="nav" class="navbar navbar-expand-lg  navbar-static fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/api/user/home"><img src="${pageContext.request.contextPath}/assets/img/logo1.png" alt=""
                                                                                                 width="50px"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                    aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown1">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/api/user/home">Home</a>
                    </li>
                    <li class="nav-item">
                        <form action="${pageContext.request.contextPath}/api/user/perfil">
                            <input hidden value="${user.id}" name="id">
                            <button class="btn btn-link-dark" type="submit">
                                Perfil
                            </button>
                        </form>
                    </li>

                </ul>
                <div style="background-color:#8081B7; margin-left: 50%;padding: 10px;border-radius: 15px;color: white;font-family: PT serif;font-size: 16px;">
                    <a href="${pageContext.request.contextPath}/api/auth" class="nav-link"> Cerrar Sesión</a>
                </div>
            </div>
        </div>
    </nav>
</div>



<div class="container-fluid" id='cont'>
    <table class="table">
        <tr>
            <th scope="col" class="logo1">
                <img src= "../img/logo.png"  class="logo">
            </th>
            <th scope="col">
                <div  class="container-fluid" id='cont-2'>
                    <nav style="font-family: PT serif ;margin-bottom: 15px;" id="nav1" class="navbar navbar-expand-lg navbar-light bg-light">
                        <div class="container-fluid" >
                            <a class="navbar-brand" href="#">HITU</a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="usuario-SuperAdmin.html">Usuario</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Historias</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Foros</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="Mas-SuperAdmin.html">Mas</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                    <div id="carrusel" class="container-fluid">
                        <h1 style="margin-top: 20px; font-family: PT serif ;">Bienvenido </h1>
                        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active" data-bs-interval="10000" style="margin-bottom: 30px;" style="margin-left: 30px;" style="margin-right: 30px;" style="border-radius: 15%;">
                                    <img src="../img/1.jpg" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item" data-bs-interval="2000" style="margin-bottom: 30px;" style="margin-left: 30px;" style="margin-right: 30px;" style="border-radius: 15%;">
                                    <img src="../img/2.jpg"  class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="../img/3.jpg"  class="d-block w-100" alt="..."  style="margin-bottom: 30px;" style="margin-left: 30px;" style="margin-right: 30px;" style="border-radius: 15%;">
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
                    <div style="text-align: right; margin-bottom: 10px;">
                        <a class="btn " href="#" role="button">Historias</a>
                        <a class="btn " href="#" role="button">Foros</a>
                    </div>
                    <div class="container-fluid" style="font-family: PT serif; fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; margin-bottom: 15px;">
                        <div class="row g-0 bg-body-secondary position-relative">
                            <div class="col-md-6 mb-md-0 p-md-4">
                                <img src="../img/3.jpg" class="w-100" alt="...">
                            </div>
                            <div class="col-md-6 p-4 ps-md-0">
                                <h4 class="mt-0">Columns with stretched link</h4>
                                <h5 class="mt-0">Usuario</h5>
                                <p>Another instance of placeholder content for this other custom component. It is intended to mimic what some real-world content would look like, and we're using it here to give the component a bit of body and size.</p>
                                <button data-bs-toggle="modal" data-bs-target="#verHistoria" type="button" class="btn" style="float: right; width: 100%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;" >Leer Historia</button>
                            </div>
                        </div>
                        </div>
                    </div>
        </tr>
        </th>
        </thead>
    </table>
</div>

<div class="modal fade" id="verHistoria" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" >
    <div class="modal-dialog modal-xl"  >
        <div class="modal-content">
            <div class="modal-header">
                <p  style="font-family: PT serif; text-align: center; font-size: 30px;">Editar Administrador</p><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row g-0 bg-body-secondary position-relative" style="height: 25%">
                    <div class="col-md-6 mb-md-0 p-md-4" style="height: 25%">
                        <img src="${pageContext.request.contextPath}/assets/img/3.jpg" class="w-100" alt="...">
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
                        <button data-bs-toggle="modal" data-bs-target="#crearAvatar" type="button" class="btn" style="float: right; width: 10%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;" >Leer Historia</button>
                        <button data-bs-toggle="modal" data-bs-target="#crearAvatar" type="button" class="btn" style="float: right; width: 10%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;" >Leer Historia</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/assets/js/unpkg.com_sweetalert@2.1.2_dist_sweetalert.min.js"></script>
<script src="sweetAlert.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js" ></script>
<script src="https://unpkg.com/feather-icons"></script>
<script>
    feather.replace()
</script>


</body>
</html>