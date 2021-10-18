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
<h1>회원 가입</h1>
<hr>

<form action="/signup" method="post">
    <sec:csrfInput />
    <input type="text" name="username" placeholder="user name 입력">
    <input type="password" name="password" placeholder="password 입력">
    <button type="submit">가입하기</button>
</form>
</body>
</html>