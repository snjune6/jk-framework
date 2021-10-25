<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, viewport-fit=cover">
    <title>KCMS::<sitemesh:write property='title'/></title>

</head>
<body>
    <div>
        <ul>
            <sec:authentication property="principal" var="user"/>
            <li><span>ID : </span><span>${user.username}</span></li>
            <li><span>권한 : </span><span>${user.authorities}</span></li>
        </ul>
    </div>
    <div>
        <ul>
            <li><a href="/jk-framework/site">사이트 관리</a></li>
        </ul>
    </div>
    <sitemesh:write property='body'/>
</body>
</html>
