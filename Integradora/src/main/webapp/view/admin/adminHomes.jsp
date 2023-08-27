<%--
  Created by IntelliJ IDEA.
  User: dulce
  Date: 27/07/2023
  Time: 06:02 p. m.
  To change nothis template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Admin foros</title>


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
  <table class="table">
    <tr>
      <th scope="col" class="logo1">
        <img src="${pageContext.request.contextPath}/assets/img/logo.png" class="logo">
      </th>
      <th scope="col">
        <div class="container-fluid" id='cont-2'>



          <div class="container-fluid">
            <nav id="nav" class="navbar navbar-expand-lg  navbar-static fixed-top">
              <div class="container-fluid" >
                <a class="navbar-brand" href="${pageContext.request.contextPath}/api/admin/home"><img src="${pageContext.request.contextPath}/assets/img/logo1.png" alt="" width="50px"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                  <ul class="navbar-nav">
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/api/admin/home">Home</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="${pageContext.request.contextPath}/api/admin/admin-user">Usuario</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="${pageContext.request.contextPath}/api/admin/admin-historias">Historias</a>
                    </li>
                  </ul>
                  <div  style="background-color:#8081B7; margin-left: 50%;padding: 10px;border-radius: 15px;color: white;font-family: PT serif;font-size: 16px;">
                    <a href="${pageContext.request.contextPath}/api/auth" class="nav-link"> Cerrar Sesión</a>
                  </div>
                </div>
              </div>
            </nav>
          </div>


          <div id="carrusel" class="container-fluid">
            <h1 style="margin-top: 20px; font-family: PT serif ;">Bienvenido
            </h1>
            <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="10000" style="border-radius: 15%;">
                  <img src="${pageContext.request.contextPath}/assets/img/1.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item" data-bs-interval="2000" style="border-radius: 15%;">
                  <img src="${pageContext.request.contextPath}/assets/img/2.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item" style="border-radius: 15%;">
                  <img src="${pageContext.request.contextPath}/assets/img/3.jpg" class="d-block w-100" alt="...">
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

          <ul class="nav nav-tabs" id="myTab" role="tablist"
              style="float: right; font-family: PT serif; color: #8081B7;">
            <li class="nav-item" role="presentation">
              <button class="nav-link active" id="accion-tab" data-bs-toggle="tab"
                      data-bs-target="#accion-tab-pane" type="button" role="tab"
                      aria-controls="accion-tab-pane" aria-selected="true">Accion
              </button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="aventura-tab" data-bs-toggle="tab"
                      data-bs-target="#aventura-tab-pane" type="button" role="tab"
                      aria-controls="aventura-tab-pane" aria-selected="false">Aventura
              </button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="cienciaf-tab" data-bs-toggle="tab"
                      data-bs-target="#cienciaf-tab-pane" type="button" role="tab"
                      aria-controls="cienciaf-tab-pane" aria-selected="false">Ciencia Ficción
              </button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="fantasia-tab" data-bs-toggle="tab"
                      data-bs-target="#fantasia-tab-pane" type="button" role="tab"
                      aria-controls="fantasia-tab-pane" aria-selected="false">Fantasía
              </button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="romance-tab" data-bs-toggle="tab"
                      data-bs-target="#romance-tab-pane" type="button" role="tab"
                      aria-controls="romance-tab-pane" aria-selected="false">Romance
              </button>
            </li>
          </ul>

          <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="accion-tab-pane" role="tabpanel"
                 aria-labelledby="accion-tab" tabindex="0">
              <div class="container-fluid"
                   style="font-family: PT serif; fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  margin-bottom: 15px;">
                <div class="row g-0 bg-body-secondary position-relative">
                  <div class="col-md-6 mb-md-0 p-md-4">
                    <img src="../img/3.jpg" class="w-100" alt="..." style="border-radius: 100%">
                  </div>
                  <div class="col-md-6 p-4 ps-md-0">
                    <h4 class="mt-0">Columns with stretched link</h4>
                    <h5 class="mt-0">Usuario accion</h5>
                    <p>Another instance of placeholder content for this other custom component. It
                      is intended to mimic what some real-world content would look like, and we're
                      using it here to give the component a bit of body and size.</p>
                    <button type="button" class="btn"
                            style="float: right; width: 50%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;">
                      Publicar
                    </button>
                    <button type="button" class="btn"
                            style="float: right; width: 50%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;">
                      Eliminar
                    </button>
                  </div>
                </div>
              </div>
            </div>

            <div class="tab-pane fade" id="aventura-tab-pane" role="tabpanel" aria-labelledby="aventura-tab"
                 tabindex="0">
              <div class="container-fluid"
                   style="font-family: PT serif; fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  margin-bottom: 15px;">
                <div class="row g-0 bg-body-secondary position-relative">
                  <div class="col-md-6 mb-md-0 p-md-4">
                    <img src="${pageContext.request.contextPath}/assets/img/3.jpg" class="w-100" alt="..." style="border-radius: 100%">
                  </div>
                  <div class="col-md-6 p-4 ps-md-0">
                    <h4 class="mt-0">Columns with stretched link</h4>
                    <h5 class="mt-0">Usuario aventura</h5>
                    <p>Another instance of placeholder content for this other custom component. It
                      is intended to mimic what some real-world content would look like, and we're
                      using it here to give the component a bit of body and size.</p>
                    <button type="button" class="btn"
                            style="float: right; width: 50%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;">
                      Publicar
                    </button>
                    <button type="button" class="btn"
                            style="float: right; width: 50%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;">
                      Eliminar
                    </button>
                  </div>
                </div>
              </div>
            </div>

            <div class="tab-pane fade" id="cienciaf-tab-pane" role="tabpanel" aria-labelledby="cienciaf-tab"
                 tabindex="0">
              <div class="container-fluid"
                   style="font-family: PT serif; fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; margin-bottom: 15px;">
                <div class="row g-0 bg-body-secondary position-relative">
                  <div class="col-md-6 mb-md-0 p-md-4">
                    <img src="${pageContext.request.contextPath}/assets/img/3.jpg" class="w-100" alt="..." style="border-radius: 100%">
                  </div>
                  <div class="col-md-6 p-4 ps-md-0">
                    <h4 class="mt-0">Columns with stretched link</h4>
                    <h5 class="mt-0">Usuario ciencia</h5>
                    <p>Another instance of placeholder content for this other custom component. It
                      is intended to mimic what some real-world content would look like, and we're
                      using it here to give the component a bit of body and size.</p>
                    <button type="button" class="btn"
                            style="float: right; width: 50%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;">
                      Publicar
                    </button>
                    <button type="button" class="btn"
                            style="float: right; width: 50%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;">
                      Eliminar
                    </button>
                  </div>
                </div>
              </div>
            </div>

            <div class="tab-pane fade" id="fantasia-tab-pane" role="tabpanel" aria-labelledby="fantasia-tab"
                 tabindex="0">
              <div class="container-fluid"
                   style="font-family: PT serif; fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  margin-bottom: 15px;">
                <div class="row g-0 bg-body-secondary position-relative">
                  <div class="col-md-6 mb-md-0 p-md-4">
                    <img src="${pageContext.request.contextPath}/assets/img/3.jpg" class="w-100" alt="..." style="border-radius: 100%">
                  </div>
                  <div class="col-md-6 p-4 ps-md-0">
                    <h4 class="mt-0">Columns with stretched link</h4>
                    <h5 class="mt-0">Usuario fantasia</h5>
                    <p>Another instance of placeholder content for this other custom component. It
                      is intended to mimic what some real-world content would look like, and we're
                      using it here to give the component a bit of body and size.</p>
                    <button type="button" class="btn"
                            style="float: right; width: 50%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;">
                      Publicar
                    </button>
                    <button type="button" class="btn"
                            style="float: right; width: 50%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;">
                      Eliminar
                    </button>
                  </div>
                </div>
              </div>
            </div>

            <div class="tab-pane fade" id="romance-tab-pane" role="tabpanel" aria-labelledby="romance-tab"
                 tabindex="0">
              <div class="container-fluid"
                   style="font-family: PT serif; fill: #FFF; filter: drop-shadow(4px 4px 16px rgba(0, 0, 0, 0.15)) drop-shadow(-4px -4px 16px #FFF);background: white; position: relative; float: left;  border-radius: 15px; margin-bottom: 15px;">
                <div class="row g-0 bg-body-secondary position-relative">
                  <div class="col-md-6 mb-md-0 p-md-4">
                    <img src="${pageContext.request.contextPath}/assets/img/3.jpg" class="w-100" alt="..." style="border-radius: 100%">
                  </div>
                  <div class="col-md-6 p-4 ps-md-0">
                    <h4 class="mt-0">Columns with stretched link</h4>
                    <h5 class="mt-0">Usuario romance</h5>
                    <p>Another instance of placeholder content for this other custom component. It
                      is intended to mimic what some real-world content would look like, and we're
                      using it here to give the component a bit of body and size.</p>
                    <button type="button" class="btn"
                            style="float: right; width: 50%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;">
                      Publicar
                    </button>
                    <button type="button" class="btn"
                            style="float: right; width: 50%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;">
                      Eliminar
                    </button>
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

<div class="container-fluid">
  <nav id="nav1" class="navbar navbar-expand-lg  navbar-static fixed-top">
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


<script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js" ></script>
<script src="https://unpkg.com/feather-icons"></script>
<script>
  feather.replace()
</script>
</body>
</html>
