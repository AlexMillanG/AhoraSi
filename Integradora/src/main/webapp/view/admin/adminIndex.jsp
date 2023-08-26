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
    <title>Admin index</title>
    <jsp:include page="${pageContext.request.contextPath}/layouts/head.jsp"/>
</head>
<body>
<div class="container-fluid" id='cont'>
    <table class="table">
        <tr>
            <th scope="col">
                <div class="container-fluid" id='cont-2'>
                    <jsp:include page="${pageContext.request.contextPath}/layouts/carrusel.jsp"/>
                    <c:forEach var="Article" items="${waitingArticles}">
                        <div class="card mb-3"
                             style="box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25); border-radius: 30px;margin-bottom: 10px;margin-top: 10px">
                            <div class="row g-0">
                                <div class="col-md-4"
                                     style="background-color: #0dcaf0;border-radius: 30px 0px 0px 30px;padding: 0">
                                    <img src="${pageContext.request.contextPath}/assets/img/1.jpg" class="img-fluid"
                                         style="border-radius: 30px 0px 0px 30px;height: 100%">
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
                                            <form action="${pageContext.request.contextPath}/api/superadmin/aprove" method="post">
                                                <input hidden value="${Article.id}" name="articleId"
                                                       id="articleIdAprove">
                                                <button type="submit" class="btn"
                                                        style="float: right; width: 100%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;">
                                                    Aprobar
                                                </button>
                                            </form>
                                        </div>
                                        <div class="col" style="float: right">
                                            <form action="${pageContext.request.contextPath}/api/superadmin/delete-story" method="post">
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

<div class="modal fade" id="verHistoria" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <p style="font-family: PT serif; text-align: center; font-size: 30px;">Editar Administrador</p>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row g-0 bg-body-secondary position-relative" style="height: 25%">
                    <div class="col-md-6 mb-md-0 p-md-4" style="height: 25%">
                        <img src="${pageContext.request.contextPath}/assets/img/2.jpg" class="w-100" alt="...">
                    </div>
                    <div class="col-md-6 p-4 ps-md-0" style="height: 25%">
                        <h4 class="mt-0">Columns with stretched link</h4>
                        <h5 class="mt-0">Usuario</h5>
                        <div style="	overflow-y: scroll; height: 300px;">
                            <div style="font-family: PT serif; margin-top: 5%; margin-bottom: 5%; margin-left: 5%; margin-right: 5%;">
                                <p> Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a
                                    piece of classical Latin literature from 45 BC, making it over 2000 years old.
                                    Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked
                                    up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and
                                    going through the cites of the word in classical literature, discovered the
                                    undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de
                                    Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45
                                    BC. This book is a treatise on the theory of ethics, very popular during the
                                    Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes
                                    from a line in section 1.10.32.
                                    Another instance of placeholder content for this other custom component. It is
                                    intended to mimic what some real-world content would look like, and we're using it
                                    here to give the component a bit of body and size.</p>
                            </div>
                        </div>
                        <button type="button" class="btn"
                                style="float: right; width: 20%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;">
                            Leer Historia
                        </button>
                        <button type="button" class="btn"
                                style="float: right; width: 20%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px;">
                            Leer Historia
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="${pageContext.request.contextPath}/layouts/footer.jsp"/>
</body>
</html>
