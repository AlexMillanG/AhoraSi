<%--
  Created by IntelliJ IDEA.
  User: gonza
  Date: 27/07/2023
  Time: 06:41 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SuperAdmin index</title>
    <jsp:include page="/layouts/head.jsp"/>
</head>
<body>
<jsp:include page="/layouts/navbarSupeadmin.jsp"/>
<div class="container-fluid" id='cont'>
    <table class="table">
        <tr>
            <th scope="col">
                <div class="container-fluid" id='cont-2'>
                    <jsp:include page="/layouts/carrusel.jsp"/>
                    <s:if test="waitingArticles.isEmpty()">
                        <div class="row">
                            <div class="col">
                                <h3>Sin registros</h3>
                            </div>
                        </div>
                    </s:if>
                    <c:forEach var="Article" items="${waitingArticles}">
                        <div class="card mb-3"
                             style="box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25); border-radius: 30px;margin-bottom: 10px;margin-top: 10px">
                            <div class="row g-0">
                                <div class="col-md-4" style="background-color: #0dcaf0;border-radius: 30px 0px 0px 30px;padding: 0">
                                    <c:if test="${not Article.file_name.contains('.octet-stream')}">
                                    <img src="/api/stories/loadFiles?id=${Article.img_id}"class="img-fluid"
                                         style="border-radius: 30px 0px 0px 30px;height: 100%">
                                    </c:if>

                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h4 class="mt-0" style=" margin-top: 5px;margin-bottom: 5px;
                                    font-family: PT serif;font-size: 24px;font-weight: bolder;">
                                            <c:out value="${Article.title}"/></h4>
                                        <div class="container-fluid" id="content" style="padding: 2%; ">
                                            <h6 style="font-family: PT Serif;font-weight: lighter;">
                                                <c:out value="${Article.content}"/></h6>
                                        </div>
                                    </div>
                                    <div class="row"
                                         style="font-family: PT serif; margin-left: 50%; width: 50%;display: flex;flex-direction: row;margin-bottom: 8px;">
                                        <div class="col">
                                            <form action="/api/superadmin/aprove" method="post">
                                                <input hidden value="${Article.id}" name="articleId"
                                                       id="articleIdAprove">
                                                <button type="submit" class="btn"
                                                        style="float: right; width: 100%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;">
                                                    Aprobar
                                                </button>
                                            </form>
                                        </div>
                                        <div class="col" style="float: right">
                                            <form action="/api/superadmin/delete-story" method="post">
                                                <input hidden value="${Article.id}" name="articleId"
                                                       id="articleIdDelete">
                                                <button type="submit" class="btn"
                                                        style="float: right; width: 100%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;">
                                                    Eliminar
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </th>
        </tr>
    </table>
</div>
<jsp:include page="../../layouts/footer.jsp"/>
</body>
</html>