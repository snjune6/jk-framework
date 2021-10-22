<%--
  Created by IntelliJ IDEA.
  User: DEV-BACK04
  Date: 2021-10-21
  Time: 오후 2:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <sec:authentication property="principal" var="user"/>
    타입 : ${user.} <br>
    ID : ${user.username} <br>
    PW : ${user.password}
    <div>siteName : ${siteDto.siteName}</div>
    <div>siteState : ${siteDto.siteState}</div>
    <div>siteDomain : ${siteDto.siteDomain}</div>
    <div>수정</div>
</body>
</html>
