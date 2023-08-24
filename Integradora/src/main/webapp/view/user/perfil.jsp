<%--
  Created by IntelliJ IDEA.
  User: Jesus
  Date: 07/08/2023
  Time: 10:38 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
  <title>Perfil-Hitu</title>
  <jsp:include page="/layouts/head.jsp"/>
</head>
<body>
<jsp:include page="/layouts/navbar.jsp"/>
<div class="container-fluid" id='cont'>
  <table class="table">
    <tr>
      <th scope="col">
        <div class="container-fluid" id='cont-2'>
          <div class="card bg-white  text-dark"
               style="background-color: #FFF;border-radius: 30px 30px 0px 0px;margin-bottom: 30px;">
            <img class="card-img" alt="..."
                 height="300px"
                 style="border-radius: 30px 30px 0px 0px;opacity: 0.50;">
            <div class="card-img-overlay">
              <div style="float: right;">
                <table style="font-family: Pt serif;text-align: center;">
                  <tr>
                    <th><h5 style="font-size:25px; font-weight: 700;">13</h5></th>
                    <th><h5 style="font-size:25px;font-weight: 700; ">14</h5></th>
                  </tr>
                  <tr>
                    <th><h5 style="font-size: 15px; margin-right: 4px;">Me encantas</h5></th>
                    <th><h5 style="font-size: 15px;">Historias</h5></th>
                  </tr>
                </table>
              </div>
              <div class="container-fluid" style="text-align: center; margin-top: 10%;">
                <img src="/assets/img/logo1.png"
                     style="margin-bottom: 1%; width: 15%; border-radius: 100%; box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25); background-color: #FFF;">
                <div class="container-fluid" style=" text-align: center;">
                  <h5 style="font-family: PT serif; font-size:150%; font-weight: bold;">
                    ${user1.name} ${user1.lastname} ${user1.surname}
                  </h5>
                  <h6 style="font-family: PT serif; font-size:100%; font-weight: lighter;"
                  >${user1.birthday}</h6>
                </div>
              </div>
              <div style="float: right;margin-top: 2%;">
                <button data-bs-toggle="modal" data-bs-target="#updateUser" type="button" class="btn"
                        id="editar"
                        onclick="prueba('${user1.id}|${user1.name}|${user1.email}|${user1.pass}|${user1.lastname}|${user1.surname}|${user1.birthday}|${user1.sex}|${user1.idImg}')"
                        name="editar"
                ><i class="fa-solid fa-pen"></i>
                </button>
              </div>
            </div>

          </div>
          <div class="input-group mb-3" style="display: flex; flex-direction: row;" data-bs-toggle="modal"
               data-bs-target="#CreateStory">
            <div class="input-group-text" style="background-color: #FFF; border: none; padding-top: 5px;">
            </div>
            <div class="container-fluid" style="font-size: 16px; font-family: PT serif;font-weight: 100; padding: 10px; width: 85%; height: 50px;border-radius: 15px;box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
                            ">
              ¿HITU que cuentas? <i style="float: right; padding: 5px;"
                                    class="fa-regular fa-paper-plane"></i>
            </div>
          </div>
          <c:forEach var="Stories" items="${Stories}">
            <div class="card mb-3"
                 style="box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25); border-radius: 30px;margin-bottom: 30px;margin-top: 10px">
              <div class="row g-0">
                <c:if test="${not Stories.file_name.contains('.octet-stream')}">
                  <div class="col-md-4" style="border-radius: 30px 0px 0px 30px;padding: 0">
                    <img src="/api/stories/loadFiles?id=${Stories.img_id}" alt="" class="img-fluid"
                         style="border-radius: 30px 0px 0px 30px;height: 100%;">
                  </div>
                </c:if>
                <style>
                  #cont-story {
                    width: 100%;
                    border-radius: 15px;
                    max-height: 100%;
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
                    <div class="container-fluid"
                         style="font-size: 25px;color: #5A6AA9;display: flex;flex-direction: row;margin-left: 80%;">
                      <button data-bs-toggle="modal" data-bs-target="#updateStory" type="button"
                              class="btn" id="editar1"
                              onclick="prueba2('${Stories.title}|${Stories.content}|${Stories.id}|${Stories.img_id}|${user1.id}')"
                              name="editar"
                      ><i class="fa-solid fa-pen" style="margin-bottom: 30px;"></i></button>
                      <form action="/api/user/delete-story" method="post">
                        <input name="id" hidden value="${Stories.id}">
                        <button type="submit" class="btn"><i class="fa-solid fa-trash-can"></i>
                        </button>
                      </form>
                    </div>
                    <h4 class="mt-0" style=" margin-top: 5px;margin-bottom: 5px;
                                        font-family: PT serif;font-size: 24px;font-weight: bolder;"><c:out
                            value="${Stories.title}"/></h4>
                    <h5 style=" margin-top: 5px;margin-bottom: 5px;font-family: PT serif;font-size: 20px;font-weight: bolder;">
                      <c:out value="${Story.categories.category}"/></h5>
                    <div class="container-fluid" id="cont-story" style="padding: 2%;">
                      <h6 style="font-family: PT Serif;font-weight: lighter;"><c:out
                              value="${Stories.content}"/></h6>
                    </div>
                    <div class="img-fluid">
                      <table>
                        <tr>
                          <th class="reaccion">
                            <form action="/api/user/like" method="post">
                              <input hidden value="${user.id}" name="user_id">
                              <input hidden value="${Story.id}" name="story_id">
                              <button type="submit" class="btn"
                                      style=" width: 50px;height: 50px;">
                                <i class="fa-solid fa-heart"
                                   style="font-size: 25px;"></i>
                              </button>
                              <c:out value="${Story.likes}"></c:out>
                            </form>
                          </th>
                          <th>
                            <button
                                    type="submit" onclick="ShowComment()"
                                    class="btn" style="width: 50px;height: 50px;;">
                              <i class="fa-solid fa-comments"
                                 style="font-size: 25px;"></i>
                            </button>
                          </th>
                          <th>
                            <form action="/api/user/shared" method="post">
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
                          <form action="/api/user/save-comment" method="post"
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
                height: 23px;
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
          <c:forEach var="Shared" items="${Shared}">
            <div class="container-fluid"
                 style="padding-right: 30px;padding-left: 30px;padding-bottom: 20px;padding-top: 3px; box-shadow: 4px 4px 16px 0px rgba(0, 0, 0, 0.15) inset, -4px -4px 16px 0px #FFF inset;margin-bottom: 5%;border-radius: 30px;">
              <table>
                <tr>
                  <div class="container-fluid" style="color: #5A6AA9;margin-left: 90%;font-size: 30px;">
                    <form action="/api/user/delete-shared" method="post">
                      <input hidden value="${Shared.getUser().getId()}" name="user_id">
                      <input hidden value="${Shared.getStories().getId()}" name="story_id">
                      <button class="btn" type="submit"><i class="fa-solid fa-trash-can" style="float: right;"></i></button>
                    </form>
                  </div>
                  <th><img src="../img/logo1.png" alt="" width="50px"></th>
                  <th>
                    <table>
                      <tr>
                        <th colspan="2"
                            style="font-family: PT serif; font-size: 20px; font-weight: 800;">
                          Por: <c:out value="${Shared.getUser().getName()}"/> <c:out value="${Shared.getUser().getLastname()}"/>
                        </th>
                      </tr>
                      <tr>
                        <th style="font-family: PT serif; font-size: 16px; font-weight: lighter; padding-right: 5px;">
                          Accion
                        </th>
                        <th style="font-family: PT serif; font-size: 16px; font-weight: lighter;">
                          23/02/2004
                        </th>
                      </tr>
                    </table>
                  </th>
                </tr>
              </table>
              <div class="card mb-3"
                   style=" border-radius: 30px;box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);border: none;">
                <div class="row g-0">
                  <style>
                    #cont-storys{
                      width: 100%;
                      border-radius: 15px;
                      max-height: 250px;
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
                  <div class="col-md-4" style="border-radius: 30px 0px 0px 30px;height: 100%;">
                    <c:if test="${not Shared.getStories().getFile_name().contains('.octet-stream')}">
                      <img src="/api/stories/loadFiles?id=${Shared.getStories().getImg_id()}" class="img-fluid" alt="..."
                           style="border-radius: 30px 0px 0px 30px;height: 100%;">
                    </c:if>
                  </div>
                  <div class="col-md-8">
                    <div class="card-body">
                      <h4 style=" margin-top: 5px;margin-bottom: 5px;font-family: PT serif;font-size: 20px;font-weight: bolder;"
                      ><c:out value="${Shared.getStories().getTitle()}"/></h4>
                      <div class="container-fluid" id="cont-storys" style="padding: 2%;">
                        <h6 style="font-family: PT Serif;font-weight: lighter;"><c:out value="${Shared.getStories().getContent()}" /></h6>
                      </div>
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
<div class="modal fade" id="updateStory" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content" STYLE="border-radius: 30px;">
      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
              style="margin-left: 90%;"></button>
      <p style="font-family: PT serif; text-align: center; font-size: 30px;">Actualizar Historia</p>
      <div class="modal-body">
        <form id="formUpdate" action="/api/user/update-story" method="post" class="needs-validation"
              novalidate method="post" enctype="multipart/form-data" novalidate>
          <div class="card mb-3" style="width:100%;border: none">
            <div class="row g-0">
              <div class="col-md-4">
                <label for="img1">Imagen</label>
                <input type="file" class="form-control" id="img1S"
                       name="fileCategory" accept="image/*" onchange="handleFileChange3()">
                <div class="col-12 mt-5" id="previewUpS"></div>
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <div class="container-fluid" style="display: none;">
                    <input id="idUserStory" name="idUserStory">
                    <input id="id1" name="id1" class="form-control">
                    <input id="idImg" name="idImg">
                  </div>
                  <div class="container-fluid " style="width: 100%; margin-bottom:5px;">
                    <label for="titulo">Titulo</label>
                    <input type="text" name="titulo" id="titulo"
                           required class="form-control"
                           style=" box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25); border-radius: 15px; margin-bottom: 5px;">
                    <div class="invalid-feedback is-invalid" style="float: right;">
                      Campo obligatorio
                    </div>
                  </div>
                  <div class="container-fluid" id="campo" style="margin-bottom: 5px;">
                    <label for="categories">Categoria</label>
                    <select name="categories" id="categories1" class="form-select" required>
                      <option value="">Seleccione</option>
                      <s:forEach var="category" items="${categories}">
                        <option
                                style="width: 100%; height: 35px;  border: none; padding: 10px;
                                                        box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);border-radius: 15px;"
                                value="${category.id}"><s:out
                                value="${category.category}"/></option>
                      </s:forEach>
                    </select>
                    <div class="invalid-feedback is-invalid" style="float: right;">
                      Campo obligatorio
                    </div>
                  </div>
                  <div class="container-fluid " style="margin-bottom: 5px;">
                    <label for="name">Contenido</label>
                    <textarea type="text" name="contenido" id="contenido"
                    ></textarea>
                    <div class="invalid-feedback is-invalid" style="float: right;">
                      Campo obligatorio
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <button type="button" id="updatestories" onclick="upSendForm2()"
                    class="container-fluid"
                    style="height: 50px; background-color: #5A6AA9;border: none; font-family: PT serif; color: white; border-radius: 15px;">
              Aceptar
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="CreateStory" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content" style="padding: 10px; border-radius: 30px ;font-family: PT serif;">
      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
              style="margin-left: 95%;"></button>
      <h5 style="font-family: PT serif; font-size: 30px;text-align: center;">Crear Historia</h5>
      <form id="formHistorias" action="/api/story/save" method="post"
            enctype="multipart/form-data" novalidate>
        <div class="card mb-3" style="width: 100%; border: none; box-shadow: none;">
          <div class="row g-0">
            <div class="col-md-4">
              <div class="col-32">
                <label for="img1">Imagen</label>
                <input type="file" class="form-control" id="img2"
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
                                  style="width: 100%; height: 35px; border: none;
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
                                  style="width: 100%; height: 35px; border: none;
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

<%--Modal ADmin User--%>
<div class="modal fade" id="updateUser" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content" style="border-radius: 30px;">
      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="mostrarAlerta()"
              style="margin-top: 20px; margin-left: 90%;"></button>
      <p style="font-family: PT serif; font-size: 35px; text-align: center; margin-top: 20px; font-style: normal;font-weight: 700;">
        <strong>Actualizar Información</strong></p>
      <div class="modal-body">
        <form id="form" action="/api/user/update-plus" method="post" class="needs-validation" novalidate
              method="post" enctype="multipart/form-data">
          <input hidden id="idImg1" name="idImg1">
          <div class="card mb-3" style="border: none">
            <div class="row g-0">
              <div class="col-md-4">
                <label for="img1">Imagen</label>
                <input type="file" class="form-control" id="img1"
                       name="fileCategory" accept="image/*" onchange="handleFileChange2()">
                <div class="col-12 mt-5" id="previewUp"></div>
              </div>
              <div class="col-md-8">
                <table class="table" style="width: 100%">
                  <tr>
                    <th style="width: 50%">
                      <div class="container-fluid " style=" fill: #FFF;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    background: white;
    border-radius: 15px;
    margin-left: 3px;
    font-family: PT serif;">
                        <label for="id">ID</label>
                        <input id="id" name="id" class="form-control"
                               onmousedown="return false;"
                               style="border: none; outline: none;padding: 10px; border-radius: 5px;box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                        <div class="invalid-feedback is-invalid" style="text-align: right">
                          Campo obligatorio
                        </div>
                      </div>
                    </th>
                    <th style="width: 50%">
                      <div class="container-fluid " style=" fill: #FFF;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    background: white;
    border-radius: 15px;
    margin-left: 3px;
    font-family: PT serif;">
                        <label for="name">Nombre</label>
                        <input type="text" name="name" id="name"
                               placeholder="nombre" required
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
                    <th style="width: 50%">
                      <div class="container-fluid " style=" fill: #FFF;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    background: white;
    border-radius: 15px;
    margin-left: 3px;
    font-family: PT serif;">
                        <label for="name">Apellido Paterno</label>
                        | <input type="text" name="surname" class="form-control"
                                 id="surname"
                                 placeholder="Apellido Paterno" required
                                 style="border: none; outline: none;padding: 10px; border-radius: 5px;box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                        <div class="invalid-feedback is-invalid" style="text-align: right">
                          Campo obligatorio
                        </div>
                      </div>
                    </th>
                    <th style="width: 50%">
                      <div class="container-fluid " style=" fill: #FFF;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    background: white;
    border-radius: 15px;
    margin-left: 3px;
    font-family: PT serif;">
                        <label for="name">Apellido Materno</label>
                        <input type="text" name="lastname" class="form-control"
                               id="lastname"
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
                      <div class="container-fluid " style=" fill: #FFF;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    background: white;
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
                    <th style="width: 50%">
                      <div class="container-fluid ">
                        <label for="name" style="font-family: PT serif">Sexo:</label>
                        <select name="sex" id="sex" class="form-select" required style="width: 100%; height: 199%; border: none;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);border-radius: 15px; font-family: PT Serif">
                          <option value="">-Selecionar-</option>
                          <option value="mujer" id="mujer1">Mujer</option>
                          <option value="hombre" id="hombre1">Hombre</option>
                          <option value="otro">Otro</option>
                        </select>
                        <div class="invalid-feedback is-invalid" style="text-align: right">
                          Campo obligatorio
                        </div>
                      </div>
                    </th>
                    <th style="width: 50%">
                      <div class="container-fluid " style=" fill: #FFF;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    background: white;
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
                      <div class="container-fluid " style=" fill: #FFF;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);background: white;
    border-radius: 15px;
    margin-left: 3px;
    font-family: PT serif;">
                        <label for="name">Contraseña:</label>
                        <input type="password" name="pass" class="form-control" id="pass"
                               placeholder="name" placeholder="Contraseña" required
                               style="border: none; outline: none;padding: 10px; border-radius: 5px;box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                        <div class="invalid-feedback is-invalid" style="text-align: right">
                          Campo obligatorio
                        </div>
                      </div>
                    </th>
                  </tr>
                  <tr>
                    <th colspan="2">
                      <button class="container-fluid" type="button" id="updateUserbtn"
                              onclick="upSendForm()"
                              style="height: 50px; background-color: black; font-family: PT serif; width: 100% ;color: #FFF; border-radius: 15px;">
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


<!-- Enlace a Bootstrap JS y Popper.js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
  // Mostrar vista previa de la imagen seleccionada
  $("#fotoPerfil").change(function () {
    const reader = new FileReader();
    reader.onload = function (e) {
      $("#preview").attr("src", e.target.result);
    }
    reader.readAsDataURL(this.files[0]);
  });
</script>
<script>


  const form = document.getElementById("form")
  const btn = document.getElementById("updateUserbtn")
  var id = document.getElementById("id");
  const form2 = document.getElementById("formUpdate");
  const btn2 = document.getElementById("updatestories");


  function prueba(user) {
    var valores = user.split("|");
    var id = valores[0];
    var name = valores[1];
    var correo = valores[2];
    var password = valores[3];
    var surname = valores[4];
    var lastname = valores[5];
    var birthday = valores[6];
    var sex = valores[7];
    var idImg1 = valores[8];
    console.log("hola " + user);
    console.log("hola1 " + valores);
    console.log("hola2 " + name);
    console.log("Id img " + idImg1);
    document.getElementById("id").value = id;
    document.getElementById("name").value = name;
    document.getElementById("emailRegistro").value = correo;
    document.getElementById("pass").value = password;
    document.getElementById("surname").value = surname;
    document.getElementById("lastname").value = lastname;
    document.getElementById("birthday").value = birthday;
    document.getElementsByTagName("sex").value = sex;
    document.getElementById("idImg1").value = idImg1;
  }

  function prueba2(Stories) {
    var valores = Stories.split("|");
    var tile = valores[0];
    var content = valores[1];
    var idStory = valores[2];
    var img = valores[3];
    var idUSer = valores[4];
    console.log("hola " + Stories);
    console.log("hola1 " + valores);
    console.log("hola2 " + id);
    console.log("idUser" + idUSer);
    document.getElementById("id1").value = idStory;
    document.getElementById("titulo").value = tile;
    document.getElementById("contenido").value = content;
    document.getElementById("idImg").value = img;
    document.getElementById("idUserStory").value = idUSer
  }

  (function () {
    btn.addEventListener("click", function (event) {
      console.log(form.checkValidity());

      if (!form.checkValidity()) {
        event.preventDefault();
        event.stopPropagation();
      }

      form.classList.add("was-validated")
    }, false);

  })();

  (function () {
    btn2.addEventListener("click", function (event) {
      console.log(form2.checkValidity());

      if (!form2.checkValidity()) {
        event.preventDefault();
        event.stopPropagation();
      }

      form2.classList.add("was-validated")
    }, false);

  })();

  function upSendForm2() {
    if (form2.checkValidity()) {
      var id = document.getElementById("id1");
      console.log("aa " + id.value);
      var nombre = document.getElementById("name");
      console.log(form.checkValidity());
      form2.submit();
    }
  }

  const handleFileChange2 = () => {
    const inputFile = document.getElementById("img1").files;
    let preview = document.getElementById("previewUp");
    preview.innerHTML = "";
    for (let i = 0; i < inputFile.length; i++) {
      let reader = new FileReader();
      reader.onloadend = (result) => {
        preview.innerHTML = "<img src='" + result.target.result
                + "' style='height: 200px;width: auto;'/>";
      }
      reader.readAsDataURL(inputFile[i]);
    }
  }

  const handleFileChange1 = () => {
    const inputFile = document.getElementById("img2").files;
    let preview = document.getElementById("preview1");
    preview.innerHTML = "";
    for (let i = 0; i < inputFile.length; i++) {
      let reader = new FileReader();
      reader.onloadend = (result) => {
        preview.innerHTML = "<img src='" + result.target.result
                + "' style='height: 200px;width: auto;'/>";
      }
      reader.readAsDataURL(inputFile[i]);
    }
  }

  const handleFileChange3 = () => {
    const inputFile = document.getElementById("img1S").files;
    let preview = document.getElementById("preview1S");
    preview.innerHTML = "";
    for (let i = 0; i < inputFile.length; i++) {
      let reader = new FileReader();
      reader.onloadend = (result) => {
        preview.innerHTML = "<img src='" + result.target.result
                + "' style='height: auto;width: 150px;'/>";
      }
      reader.readAsDataURL(inputFile[i]);
    }
  }

  function upSendForm() {
    if (form.checkValidity()) {
      console.log("a " + document.getElementById("name").value);
      var id = document.getElementById("id");
      console.log("aa " + id.value);
      var nombre = document.getElementById("name");
      console.log("aaa " + nombre.value);
      console.log(document.getElementById("form").value);
      console.log(form.checkValidity());
      form.submit();
    }
  }
</script>

<jsp:include page="/layouts/footer.jsp"/>
</body>
</html>