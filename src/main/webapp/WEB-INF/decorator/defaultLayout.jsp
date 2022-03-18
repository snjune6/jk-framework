<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, viewport-fit=cover">
    <title><sitemesh:write property='title'/>::${projectName}</title>
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="/static/css/default.css">
</head>
<body>
    <%--<div id="wrapper"  class="container-fluid" ><!--wrapper -->
        <!-- container -->
        <div id="container">

            <!-- header -->
            <div id="header">
                <div id="header_in"  style="display: block;">
                    <div class="t_menu_wrap">
                        <ul class="">
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
                            <li><a href="<c:url value="#" />">회사소개</a></li>
                            <li><a href="<c:url value="#" />" title="SITEMAP">SITEMAP</a></li>
                        </ul>
                    </div>
                </div>

                <div class="main_t_bar_wrap">
                    <div id="main_t_bar">
                        <h1>
                            <a href="<c:url value="${siteDomain}" />">
                                <img src="${siteCdn}/logo.jpg" alt="로고">
                            </a>
                        </h1>
                    </div>
                </div>

                <div class="menu_con">
                    <div class="global_header">
                        <div id="gnb_con" class="gnb">
                            <ul id="gnb">
                                <li class="sitemap_btn">카테고리보기</li>
                                <c:forEach var="menuList" items="${menuFullList}" varStatus="status">
                                    <li class="gnb_1">
                                        <a href="${menuList.menuLink}">${menuList.menuNm}</a>
                                        <p class="h_title">
                                            <span>${menuList.menuAlt}</span>
                                        </p>
                                    </li>
                                </c:forEach>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <sitemesh:write property='body'/>
</body>
</html>
