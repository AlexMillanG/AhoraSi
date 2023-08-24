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
  <jsp:include page="/layouts/head.jsp"/>
</head>
<body>
<jsp:include page="/layouts/navbarAdmin.jsp"/>
<div class="container-fluid" id='cont'>
  <table class="table">
    <tr>
      <th scope="col">
        <div class="container-fluid" id='cont-2'>
          <jsp:include page="/layouts/carrusel.jsp"/>
        </div>
      </th>
    </tr>
  </table>
</div>
<jsp:include page="/layouts/navbarSupeadmin.jsp"/>
</body>
</html>
