<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, viewport-fit=cover">
    <title>::<sitemesh:write property='h1'/></title>
    <link rel="stylesheet" type="text/css" href="http://linkplantec.com/assets/lib/simplePagination/simplePagination.css">

    <link rel="stylesheet" type="text/css" href="/static/css/default.css">
    <link rel="stylesheet" type="text/css" href="http://linkplantec.com/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="http://linkplantec.com/assets/css/join/join.css">
</head>
<body>
    이 부분은 DefaultLayout입니다!
    <div>
        <sitemesh:write property='body'/>
    </div>
</body>
</html>
