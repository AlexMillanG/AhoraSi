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
  <jsp:include page="http:///34196.17.66/Integradora-1.0-SNAPSHOT/layouts/head.jsp"/>
</head>
<body>
<jsp:include page="http:///34196.17.66/Integradora-1.0-SNAPSHOT/layouts/navbarAdmin.jsp"/>
<div class="container-fluid" id='cont'>
  <table class="table">
    <tr>
      <th scope="col">
        <div class="container-fluid" id='cont-2'>
          <jsp:include page="http:///34196.17.66/Integradora-1.0-SNAPSHOT/layouts/carrusel.jsp"/>
        </div>
      </th>
    </tr>
  </table>
</div>
<jsp:include page="http:///34196.17.66/Integradora-1.0-SNAPSHOT/layouts/navbarSupeadmin.jsp"/>
</body>
</html>
