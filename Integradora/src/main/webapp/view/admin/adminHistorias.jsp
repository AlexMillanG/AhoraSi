<%--
  Created by IntelliJ IDEA.
  User: gonza
  Date: 27/07/2023
  Time: 05:56 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Admin Historias</title>

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

<div class="container-fluid" id='cont'>
  <table class="table">
    <tr>
      <th scope="col">
        <div class="container-fluid" id='cont-2'>


          <div id="carrusel" class="container-fluid">
            <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="10000" style="margin-top: 30px; margin-bottom: 30px;"
                     style="margin-left: 30px;margin-right: 30px;border-radius: 30px;">
                  <img src="${pageContext.request.contextPath}/assets/img/-71.jpg" class="d-block w-100" alt="..." style="border-radius: 30px">
                </div>
                <div class="carousel-item" data-bs-interval="2000" style="margin-bottom: 30px;"
                     style="margin-left: 30px;margin-right: 30px;border-radius: 30px;">
                  <img src="${pageContext.request.contextPath}/assets/img/2.jpg" class="d-block w-100" alt="..." style="border-radius: 30px">
                </div>
                <div class="carousel-item">
                  <img src=${pageContext.request.contextPath}/assets/img/2.jpg"/assets/img/3.jpg" class="d-block w-100" alt="..." style="margin-bottom: 30px;"
                       style="margin-left: 30px;margin-right: 30px;border-radius: 30px">
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


        </div>
      </th>
    </tr>
  </table>
</div>


<div class="container-fluid">
  <nav id="nav1" class="navbar navbar-expand-lg navbar-static fixed-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="${pageContext.request.contextPath}/api/superadmin/home"><img src="${pageContext.request.contextPath}/assets/img/logo1.png" alt=""
                                                                                                 width="50px"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
              aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown1">
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


</body>
</html>
