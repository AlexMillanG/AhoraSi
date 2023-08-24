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
  <link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link type="text/css" rel="stylesheet" href="../../assets/css/style.css">
  <jsp:include page="/layouts/head.jsp"/>
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
          <jsp:include page="/layouts/navbarSupeadmin.jsp"/>
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
                        <img src="/api/stories/loadFiles?id=${Story.img_id}" class="img-fluid"
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
                          <form action="/api/superadmin/change-story-status" method="post">
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
<jsp:include page="/layouts/footer.jsp"/>
</body>
</html>
