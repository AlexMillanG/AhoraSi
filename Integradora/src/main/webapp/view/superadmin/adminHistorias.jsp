<%--
  Created by IntelliJ IDEA.
  User: gonza
  Date: 27/07/2023
  Time: 05:56 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
  <title>admin Historias</title>
  <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">


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


  <style>
    #cont-storys {
      width: 100%;
      border-radius: 15px;
      height: 200px;
      overflow-y: scroll;
      padding: 5px;
      font-family: Serif;
      white-space: pre-line;
      border-radius: 10px;
      border: none;
    }

    #cont-storys::-webkit-scrollbar-thumb {
      background-color: #8081B7;
      width: 2px;
      border-radius: 3px;
    }

    #cont-storys::-webkit-scrollbar {
      width: 8px;
      background-color: #ffffff;
    }
  </style>
</head>
<body>
<div class="container-fluid" id='cont'>
  <table class="table">
    <tr>
      <th scope="col">
        <div class="container-fluid" id='cont-2'>


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


          <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
              <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home"
                      type="button"
                      role="tab" aria-controls="home" aria-selected="true">Historias
              </button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile"
                      type="button"
                      role="tab" aria-controls="profile" aria-selected="false">Articulos
              </button>
            </li>
          </ul>
          <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
              <c:forEach var="Story" items="${storiesView1}">
                <div class="card mb-3" style="">
                  <div class="row g-0">
                    <c:if test="${not Story.file_name.contains('.octet-stream')}">
                      <div class="col-md-4" style="height: 100%">
                        <img src="${pageContext.request.contextPath}/api/stories/loadFiles?id=${Story.img_id}" class="img-fluid"
                             alt="..." style="height: 100%;">
                      </div>
                    </c:if>
                    <div class="col-md-8">
                      <div class="card-body">
                        <h4><c:out value="${Story.title}"/></h4>
                        <h4>status actual: ${Story.status.type_status}</h4>
                        <h5 class="mt-0"><c:out value="${Story.categories.category}"/></h5>
                        <div class="container-fluid" style="display: flex;flex-direction: row;">
                          <button type="button" class="btn"><i class="fa-solid fa-heart"></i>
                          </button>
                          <h5><c:out value="${Story.likes}"></c:out></h5>
                        </div>
                        <div class="container-fluid" id="cont-storys" style="padding: 2%;">
                          <h6 style="font-family: PT Serif;font-weight: lighter;"><c:out
                                  value="${Story.content}"/></h6>
                        </div>
                        <div>
                          <form action="${pageContext.request.contextPath}/api/superadmin/change-story-status" method="post">
                            <input hidden value="${Story.id}" name="story_id">
                            <label for="status">Actualizar status</label>
                            <select name="status" id="status">
                              <option value="3">publicado</option>
                              <option value="4">en espera</option>
                              <option value="5">aprobado</option>
                            </select>
                            <button class="btn" style="border: 1px solid #3dd5f3"
                                    type="submit">actualizar estado
                            </button>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </c:forEach>
            </div>
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            </div>
          </div>
      </th>
    </tr>
  </table>
</div>

<script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js" ></script>
<script src="https://unpkg.com/feather-icons"></script>
<script>
  feather.replace()
</script>

</body>
</html>
