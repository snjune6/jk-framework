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
<h1>Home Page</h1>
<hr>
<div>
    <sec:authorize access="isAnonymous()">
        <a href="/login">로그인</a>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
        <a href="/logout">로그아웃</a>
    </sec:authorize>
    <sec:authorize access="isAnonymous()">
        <a href="/signup">회원가입</a>
    </sec:authorize>
</div>
<div>
    <a href="/member/info">내 정보</a>
    <a href="/admin">관리자</a>
</div>
</body>
</html>