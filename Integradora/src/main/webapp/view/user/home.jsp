<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="mx.edu.utez.integradora.models.actions.likes.DaoLikes" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home - Hitu</title>
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
<%-- chingadera de crear foro --%>
<div class="container-fluid" id='cont'>
    <table class="table">
        <tr>
            <th scope="col">
                <div class="container-fluid" id='cont-2'>
                    <div class="container-fluid">
                        <nav id="nav" class="navbar navbar-expand-lg  navbar-static fixed-top">
                            <div class="container-fluid">
                                <a class="navbar-brand" href="${pageContext.request.contextPath}/api/user/home"><img src="${pageContext.request.contextPath}/assets/img/logo1.png" alt=""
                                                                                                                     width="50px"></a>
                                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                                        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarNavDropdown">
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

                    <!--crear-->
                    <div class="input-group mb-3" style="display: flex; flex-direction: row;" data-bs-toggle="modal"
                         data-bs-target="#CreateStory">
                        <div class="input-group-text" style="background-color: #FFF; border: none; padding-top: 5px;">
                            <img src="${pageContext.request.contextPath}/assets/img/logo1.png" style="width: 50px; border-radius: 100%;">
                        </div>
                        <div class="container-fluid" style="font-size: 16px; font-family: PT serif;font-weight: 100; padding: 10px; width: 85%; height: 50px;border-radius: 15px;box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
                            ">
                            ¿HITU que cuentas? <i style="float: right; padding: 5px;"
                                                  class="fa-regular fa-paper-plane"></i>
                        </div>
                    </div>
                    <c:forEach var="Story" items="${stories}" varStatus="status">
                    <div class="card mb-3"
                         style="box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25); border-radius: 30px;margin-bottom: 30px;margin-top: 10px">
                        <div class="row g-0">
                            <c:if test="${not Story.file_name.contains('.octet-stream')}">
                                <div class="col-md-4" style="border-radius: 30px 0px 0px 30px;padding: 0">
                                    <img src="${pageContext.request.contextPath}/api/stories/loadFiles?id=${Story.img_id}" alt="" class="img-fluid"
                                         style="border-radius: 30px 0px 0px 30px;height: 100%;">
                                </div>
                            </c:if>
                            <style>
                                #cont-story {
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

                                #cont-story::-webkit-scrollbar-thumb {
                                    background-color: #8081B7;
                                    width: 2px;
                                    border-radius: 3px;
                                }

                                #cont-story::-webkit-scrollbar {
                                    width: 8px;
                                    background-color: #ffffff;
                                }
                            </style>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h4 class="mt-0" style=" margin-top: 5px;margin-bottom: 5px;
                                        font-family: PT serif;font-size: 24px;font-weight: bolder;">
                                        <c:out value="${Story.title}"/></h4>
                                    <h5 style=" margin-top: 5px;margin-bottom: 5px;
                                        font-family: PT serif;font-size: 20px;font-weight: bolder;">Historia <c:out value="${Story.categories.category}"/></h5>
                                    <div class="container-fluid" id="cont-story" style="padding: 2%;">
                                        <h6 style="font-family: PT Serif;font-weight: lighter;"><c:out
                                                value="${Story.content}"/></h6>
                                    </div>
                                    <div class="img-fluid">
                                        <table>
                                            <tr>
                                                <th class="reaccion">
                                                    <form action="${pageContext.request.contextPath}/api/user/like" method="post">
                                                        <input hidden value="${user.id}" name="user_id">
                                                        <input hidden value="${Story.id}" name="story_id">
                                                        <button type="submit" class="btn"
                                                                style=" width: 50px;height: 50px;">
                                                            <i class="fa-solid fa-heart" style="font-size: 25px;"></i>
                                                        </button>
                                                        <c:out value="${Story.likes}"></c:out>
                                                    </form>
                                                </th>
                                                <th>
                                                    <button
                                                            type="submit" onclick="ShowComment()"
                                                            class="btn" style="width: 50px;height: 50px;;">
                                                        <i class="fa-solid fa-comments" style="font-size: 25px;"></i>
                                                    </button>
                                                </th>
                                                <th>
                                                    <form action="${pageContext.request.contextPath}/api/user/shared" method="post">
                                                        <input hidden value="${Story.id}" name="story_id">
                                                        <button type="submit" class="btn"
                                                                style="width: 50px; margin-top: 1%;">
                                                            <i class="fa-solid fa-paper-plane"
                                                               style="font-size: 25px;"></i>
                                                        </button>
                                                    </form>
                                                </th>
                                            </tr>
                                        </table>
                                    </div>
                                    <div id="comments-Story">
                                        <div id="commentNormal" style="">
                                            <div class="container-fluid"
                                                 style=" margin-left: 20px; width: 100%; display: flex; flex-direction: row;">
                                                <form action="${pageContext.request.contextPath}/api/user/save-comment" method="post"
                                                      style="width:100%;">
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <th style="width: 85%;">
                                                                <input hidden value="${Story.id}" name="story_id">
                                                                <input hidden value="${user.id}" name="user_id">
                                                                <textarea name="content" id="comment"
                                                                          type="text"
                                                                          placeholder="Escribe un comentario"
                                                                          onclick="ShowComment()"></textarea>
                                                            </th>
                                                            <th style="width: 15%;">
                                                                <button class="btn" type="submit"><i
                                                                        class="fa-regular fa-paper-plane"
                                                                        style="font-size: 20px"></i></button>
                                                            </th>
                                                        </tr>
                                                    </table>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <style>
                        #comments {
                            height:100px;
                            font-size: 14px;
                            width: 100%;
                            border-radius: 15px;
                            overflow-y: scroll;
                        }
                        #comments::-webkit-scrollbar {
                            width: 8px;
                        }
                        #comments::-webkit-scrollbar-thumb {
                            background-color: #8081B7;
                            width: 2px;
                            border-radius: 3px;
                        }
                    </style>
                    <div style="background-color: black" id="comments">
                        <div class="card mb-3" style="width: 100%;border: none">
                            <div class="row g-0">
                                <div class="col-md-4">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <c:forEach var="comment" items="${comment_list}">
                                            <c:if test="${Story.id == comment.stories.id}">
                                                <div class="col"
                                                     style=" display:flex; flex-direction: row;margin-bottom: 30px;">
                                                    <div class="container-fluid"
                                                         style="background-color: #ffffff;box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25); border-radius: 15px; padding-top: 10px; padding-left: 10px; padding-right: 10px;">
                                                        <div style="display: flex; flex-direction: row; font-family: PT serif;">
                                                            <h5 style="font-size:16px;">
                                                                Nombre</h5>
                                                            <h6 style="font-size: 10px;">Fecha</h6>
                                                        </div>
                                                        <div class="container-fluid" id="comments2">
                                                            <p id="text-story">
                                                                <c:out value="${comment.content}"/>
                                                            </p>
                                                        </div>
                                                        <div style="display: flex; flex-direction: row;">
                                                            <div style="font-size: 12px; font-family: PT serif; margin-left: 5px;"
                                                                 onclick="ShowCommentR()">Responder
                                                            </div>
                                                            <div style="font-size: 12px; font-family: PT serif;"
                                                                 onclick="ShowCommentM()">Más
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>

                    <c:forEach var="Article" items="${articles}">
                    <div class="card mb-3"
                         style="box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25); border-radius: 30px;margin-bottom: 30px;margin-top: 10px">
                        <div class="row g-0">
                            <c:if test="${not Article.file_name.contains('.octet-stream')}">
                                <div class="col-md-4" style="border-radius: 30px 0px 0px 30px;padding: 0">
                                    <img src="${pageContext.request.contextPath}/api/stories/loadFiles?id=${Article.img_id}"
                                         alt="" class="img-fluid"
                                         style="border-radius: 30px 0px 0px 30px;height: 100%;">
                                </div>
                            </c:if>
                            <style>
                                #cont-story1 {
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
                                #cont-story1::-webkit-scrollbar-thumb {
                                    background-color: #0dcaf0;
                                    width: 2px;
                                    border-radius: 3px;
                                }

                                #cont-story1::-webkit-scrollbar {
                                    width: 8px;
                                    background-color: #ffffff;
                                }
                            </style>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h4 class="mt-0" style=" margin-top: 5px;margin-bottom: 5px;
                                        font-family: PT serif;font-size: 24px;font-weight: bolder;">
                                        <c:out value="${Article.title}"/></h4>
                                    <h5 style=" margin-top: 5px;margin-bottom: 5px;
                                        font-family: PT serif;font-size: 20px;font-weight: bolder;">Articulo  <c:out value="${Story.categories.category}"/></h5>
                                    <div class="container-fluid" id="cont-story1" style="padding: 2%;">
                                        <h6 style="font-family: PT Serif;font-weight: lighter;"><c:out value="${Article.content}"/></h6>
                                    </div>
                                    <div class="img-fluid-">
                                        <table>
                                            <tr>
                                                <th class="reaccion">
                                                    <form action="${pageContext.request.contextPath}/api/user/like" method="post">
                                                        <input hidden value="${user.id}" name="user_id">
                                                        <input hidden value="${Article.id}" name="story_id">
                                                        <button type="submit" class="btn"
                                                                style=" width: 50px;height: 50px;">
                                                            <i class="fa-solid fa-heart" style="font-size: 25px;"></i>
                                                        </button>
                                                        <c:out value="${Article.likes}"></c:out>
                                                    </form>
                                                </th>
                                                <th>
                                                    <button
                                                            type="submit" onclick="ShowComment()"
                                                            class="btn" style="width: 50px;height: 50px;;">
                                                        <i class="fa-solid fa-comments" style="font-size: 25px;"></i>
                                                    </button>
                                                </th>
                                                <th>
                                                    <form action="${pageContext.request.contextPath}/api/user/shared" method="post">
                                                        <input hidden value="${Article.id}" name="story_id">
                                                        <button type="submit" class="btn"
                                                                style="width: 50px; margin-top: 1%;">
                                                            <i class="fa-solid fa-paper-plane"
                                                               style="font-size: 25px;"></i>
                                                        </button>
                                                    </form>
                                                </th>
                                            </tr>
                                        </table>
                                    </div>
                                    <div id="comments-Story">
                                        <div id="commentNormal" style="">
                                            <div class="container-fluid"
                                                 style=" margin-left: 20px; width: 100%; display: flex; flex-direction: row;">
                                                <form action="${pageContext.request.contextPath}/api/user/save-comment" method="post"
                                                      style="width:100%;">
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <th style="width: 85%;">
                                                                <input hidden value="${Article.id}" name="story_id">
                                                                <input hidden value="${user.id}" name="user_id">
                                                                <textarea name="content" id="comment"
                                                                          type="text"
                                                                          placeholder="Escribe un comentario"
                                                                          onclick="ShowComment()"></textarea>
                                                            </th>
                                                            <th style="width: 15%;">
                                                                <button class="btn" type="submit"><i
                                                                        class="fa-regular fa-paper-plane"
                                                                        style="font-size: 20px"></i></button>
                                                            </th>
                                                        </tr>
                                                    </table>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <style>
                        #comments {
                            height: 50px;
                            font-size: 14px;
                            width: 100%;
                            border-radius: 15px;
                            overflow-y: scroll;
                        }

                        #comments:hover {
                            width: 100%; /* medida aumentada */
                            height: 250px; /* medida aumentada */
                            background-color: #5A6AA9;
                        }

                        #comments::-webkit-scrollbar {
                            width: 8px;
                        }

                        #comments::-webkit-scrollbar-thumb {
                            background-color: #8081B7;
                            width: 2px;
                            border-radius: 3px;
                        }
                    </style>
                    <div style="display: block" id="comments-${status.index}">
                        <div class="card mb-3" style="width: 100%;border: none">
                            <div class="row g-0">
                                <div class="col-md-4">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <c:forEach var="comment" items="${comment_list}">
                                            <c:if test="${Story.id == comment.stories.id}">
                                                <div class="col"
                                                     style=" display:flex; flex-direction: row;margin-bottom: 30px;">
                                                    <div class="container-fluid"
                                                         style="background-color: #ffffff;box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25); border-radius: 15px; padding-top: 10px; padding-left: 10px; padding-right: 10px;">
                                                        <div style="display: flex; flex-direction: row; font-family: PT serif;">
                                                            <h5 style="font-size:16px;">
                                                                Nombre</h5>
                                                            <h6 style="font-size: 10px;">Fecha</h6>
                                                        </div>
                                                        <div class="container-fluid" id="comments2">
                                                            <p id="text-story">
                                                                <c:out value="${comment.content}"/>
                                                            </p>
                                                        </div>
                                                        <div style="display: flex; flex-direction: row;">
                                                            <div style="font-size: 12px; font-family: PT serif; margin-left: 5px;"
                                                                 onclick="ShowCommentR()">Responder
                                                            </div>
                                                            <div style="font-size: 12px; font-family: PT serif;"
                                                                 onclick="ShowCommentM()">Más
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>

            </th>
        </tr>
    </table>
</div>

</div>
</th>
</tr>
</thead>
</table>
</div>
<div class="modal fade" id="CreateStory" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog ">
        <div class="modal-content" style="padding: 10px; border-radius: 30px ;font-family: PT serif;">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                    style="margin-left: 95%;"></button>
            <h5 style="font-family: PT serif; font-size: 30px;text-align: center;">Crear Historia</h5>
            <form id="formHistorias" action="${pageContext.request.contextPath}/api/story/save" method="post"
                  enctype="multipart/form-data" novalidate>
                <div class="card mb-3" style="width: 100%; border: none; box-shadow: none;">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <div class="col-32">
                                <label for="img1">Imagen</label>
                                <input type="file" class="form-control" id="img1"
                                       name="fileCategory" accept="image/*" onchange="handleFileChange1()">
                                <div class="img-fluid" id="preview1"></div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="container-fluid" style="width: 100%; padding: 15px;">
                                <div class="container-fluid" style="width: 100%; padding: 1px;">
                                    <input name="user_id" hidden value="${user.id}">
                                    <div class="container-fluid " style="width: 100%; margin-bottom:5px">
                                        <label for="title">Titulo</label>
                                        <input type="text" name="title" id="title" required
                                               style=" box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25); border-radius: 15px; margin-bottom: 5px;width: 100%;border: none;">
                                        <div class="invalid-feedback is-invalid" style="float: right;">
                                            Campo obligatorio
                                        </div>
                                    </div>
                                    <table style="width: 100%;">
                                        <tr>
                                            <th style="width: 50%;">
                                                <div class="container-fluid" style="margin-bottom: 5px;">
                                                    <label>Categoria</label>
                                                    <select name="categories" id="Categories" class="form-select"
                                                            required
                                                            style="width: 100%; height: 35px;  border: none;
                        box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);border-radius: 30px;">
                                                        <option value="">Seleccione</option>
                                                        <s:forEach var="category" items="${categories}">
                                                            <option value="${category.id}"><s:out
                                                                    value="${category.category}"/></option>
                                                        </s:forEach>
                                                    </select>
                                                    <div class="invalid-feedback is-invalid" style="float: right;">
                                                        Campo obligatorio
                                                    </div>
                                                </div>
                                            </th>
                                            <th style="width: 50%;">
                                                <div class="container-fluid" style="margin-bottom: 5px;">
                                                    <label for="status">Tipo</label>
                                                    <select name="status" id="status" class="form-select" required
                                                            style="width: 100%; height: 35px;  border: none;
                        box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);border-radius: 30px;">
                                                        <option value="">Seleccione</option>
                                                        <option value="3">Historia</option>
                                                        <option value="4">Articulo</option>
                                                    </select>
                                                    <div class="invalid-feedback is-invalid" style="float: right;">
                                                        Campo obligatorio
                                                    </div>
                                                </div>
                                            </th>
                                        </tr>
                                    </table>
                                    <div class="container-fluid " style="margin-bottom: 5px;">
                                        <label for="content">Contenido</label>
                                        <textarea type="text" name="content" id="content" required></textarea>
                                        <div class="invalid-feedback is-invalid" style="float: right;">
                                            Campo obligatorio
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <button type="submit" class="btn"
                                style="float: right; width: 100%; height: 35px; background-color: #8081B7; color: #FFF; border-radius: 20px; ">
                            Publicar
                        </button>
                    </div>
                </div>
            </form>
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
                    + "' style='height:auto;width: 150px;'/>";
            }
            reader.readAsDataURL(inputFile[i]);
        }
    }
</script>

<script>
    function CloseComment() {
        document.getElementById('comments').style.display = 'none';
        ;
    }

    function ShowComment() {
        document.getElementById('comments').style.display = '';
    }

    function ShowCommentR() {
        document.getElementById('commentNormal').style.display = 'none';
        document.getElementById('commentResp').style.display = '';
    }

    function ShowCommentN() {
        document.getElementById('commentNormal').style.display = '';
        document.getElementById('commentResp').style.display = 'none';
    }

    function ShowCommentM() {
        document.getElementById('CommmentMore').style.display = '';
    }

    function CloseMoreComment() {
        document.getElementById('CommmentMore').style.display = 'none';
    }
</script>

</script>
</body>
</html>