<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>로그인 성공!!</h1>
<hr>
<p>
    <span sec:authentication="name"></span>님 환영합니다~
</p>
<a href="/">메인으로 이동</a>
</body>
</html>