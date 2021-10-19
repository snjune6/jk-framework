<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>내 정보</h1>
<hr>
<span sec:authentication="name"></span> 님 반갑습니다.
<div sec:authentication="principal.authorities"></div>

<a href="/">홈으로 가기</a>
</body>
</html>