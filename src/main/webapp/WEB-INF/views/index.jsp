<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html lang="en">
<head>
    <title>test</title>
</head>
<body>
<sec:authorize access="isAnonymous()">
    <li><a href="<c:url value="${siteDomain}/auth/login" />">로그인</a></li>
</sec:authorize>
<sec:authorize access="isAuthenticated()">

    <sec:authorize access="hasAnyRole('ROLE_JK')" >
        <li><a href="${siteDomain}${siteJk}">${siteJkNm}</a></li>
    </sec:authorize>

    <sec:authorize access="hasAnyRole('ROLE_JK', 'ROLE_ADMIN')" >
        <li><a href="${siteDomain}${siteAdmin}">${siteAdminNm}</a></li>
    </sec:authorize>

    <sec:authorize access="hasAnyRole('ROLE_JK', 'ROLE_ADMIN', 'ROLE_MEMBER')" >
        <li><a href="<c:url value="${siteDomain}${siteMyPage}" />">${siteMyPageNm}</a></li>
    </sec:authorize>

    <li><a href="<c:url value="/logout" />">로그아웃</a></li>

</sec:authorize>
</body>
</html>
