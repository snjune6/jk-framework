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
<div id="wrapper"><!--wrapper -->
    <!-- container -->
    <div id="container">

        <!-- header -->
        <div id="header">

            <div id="header_in" style="display: block;">
                <div class="t_menu_wrap">
                    <ul class="">
                        <sec:authorize access="isAnonymous()">
                            <li><a href="<c:url value="/auth/login" />">로그인</a></li>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                            <li><a href="<c:url value="/logout" />">로그아웃</a></li>
                            <sec:authorize access="hasAnyRole('ROLE_MEMBER')" >
                                <li><a href="<c:url value="#" />">마이페이지</a></li>
                            </sec:authorize>
                        </sec:authorize>
                        <li><a href="<c:url value="#" />">회사소개</a></li>
                        <li><a href="<c:url value="#" />" title="SITEMAP">SITEMAP</a></li>
                    </ul>
                </div>
            </div>

            <div class="main_t_bar_wrap">
                <div id="main_t_bar">
                    <h1>
                        <a href="<c:url value="#" />">
                            <img src="http://linkpt.cdn3.cafe24.com/logo.jpg" alt="로고">
                        </a>
                    </h1>

                    <!-- 메인 상단 검색 -->
                    <div class="main_srch_wrap">
                        <form id="top_search" method="post" action="#">
                            <div class="main_srch">
                                <input type="text" name="keyword" id="top_keyword" class="word_div" size="40" value="">
                                <input type="image" alt="검색버튼" src="http://linkpt.cdn3.cafe24.com/images/m_srch_btn.jpg" name="submit" value="submit" align="absmiddle" onclick="javascript:goSearch();">
                            </div>
                        </form>

                        <div id="word_div" class="word_div" style="text-align: left; padding: 5px; overflow: hidden scroll; height: 140px; border: 1px solid rgb(220, 220, 220); position: relative; z-index: 9999; background: url('http://linkpt.cdn3.cafe24.com/images/white.jpg'); display: none;">
                            <!-- 검색어 출력 -->
                        </div>
                        <div id="word_div_x" class="word_div" style="text-align:right; display:none; position:relative; z-index:9999; background:url('http://linkpt.cdn3.cafe24.com/images/white.jpg') ">
                            <a href="#" id="word_div_close">닫기</a>
                        </div>
                        <!--//메인 상단 검색-->
                    </div>
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

                    <!-- 카테고리보기에 마우스 오버 시 나타나는 네비게이션 -->
                    <div class="m_visual_btn_wrap">
                        <div class="m_visual_btn">
                            <ul class="">
                                <li>
                                    <a href="#" class="mvn_01">공정/설비종합</a>
                                    <ul class="m_2depth">
                                        <p class="category_title">공정/설비종합</p>
                                        <li class="">
                                            <a href="#" class="m_2depth_tit">솔루션</a>
                                            <ul class="m_3depth">
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','699', '542', '357'   );" style="text-align: left;">- Scale Buster</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','705', '542', '357'   );" style="text-align: left;">- Decontamination기술</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','700', '542', '357'   );" style="text-align: left;">- LOHC</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','707', '542', '357'   );" style="text-align: left;">- 설비돌발고장예지기술</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','704', '542', '357'   );" style="text-align: left;">- Membrane Deaeration기술</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','555', '542', '357'   );" style="text-align: left;">- ATCS</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','686', '542', '357'   );" style="text-align: left;">- SRCT</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','701', '542', '357'   );" style="text-align: left;">- MVR</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','702', '542', '357'   );" style="text-align: left;">- MgSO4제조기술</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','703', '542', '357'   );" style="text-align: left;">- Bohemite제조기술</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','706', '542', '357'   );" style="text-align: left;">- 수전해기술</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="#">
                                            <a href="#" class="m_2depth_tit">기자재</a>

                                            <ul class="m_3depth">
                                                <li><a href="#" onclick="goProductByCategory2_x('3','55', '36');" style="text-align: left;">- Air Separation Unit</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','56', '36');" style="text-align: left;">- PSA</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','57', '36');" style="text-align: left;">- Nitrogen Plant</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','556', '36');" style="text-align: left;">- Air Dryer</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','557', '36');" style="text-align: left;">- Cooling Tower</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','558', '36');" style="text-align: left;">- 수처리설비</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','559', '36');" style="text-align: left;">- 냉동/공조설비</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','560', '36');" style="text-align: left;">- 케미칼주입설비</a></li>
                                            </ul>
                                        </li>
                                        <p id="m_gnb_banner">

                                            <a href="javascript:goBanner('8', '2', '', '공정/설비 ');">
                                                <img src="http://linkplantec.comhttp://linkplantec.com/upload/1/banner/b1e1e596a76d457ab077b8e562a9948a.jpg" alt="배너이미지" style="width: 291px; height: 400px;">
                                            </a>

                                        </p>
                                    </ul>
                                </li>

                                <li>
                                    <a href="#" class="mvn_02">안전/환경356</a>

                                    <ul class="m_2depth">
                                        <p class="category_title">안전/환경</p>
                                        <li class="">
                                            <a href="#" class="m_2depth_tit">솔루션</a>
                                            <ul class="m_3depth">
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','723', '544', '356'   );" style="text-align: left;">- 메탈하니컴SCR촉매</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','724', '544', '356'   );" style="text-align: left;">- 활성탄 자동재생기술</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','687', '544', '356'   );" style="text-align: left;">- 불꽃감지기술</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','688', '544', '356'   );" style="text-align: left;">- W2SG</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','708', '544', '356'   );" style="text-align: left;">- 재난안전경영</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','709', '544', '356'   );" style="text-align: left;">- FireWall</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','710', '544', '356'   );" style="text-align: left;">- 비상냉각수펌프차량</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','711', '544', '356'   );" style="text-align: left;">- 음식폐기물처리기술</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','712', '544', '356'   );" style="text-align: left;">- 주유소유증기회수기술</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','713', '544', '356'   );" style="text-align: left;">- LiPEX보안기술</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="">
                                            <a href="#" class="m_2depth_tit">기자재</a>
                                            <ul class="m_3depth">
                                                <li><a href="#" onclick="goProductByCategory2_x('3','301', '35');" style="text-align: left;">- Outdoor Hydrant</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','303', '35');" style="text-align: left;">- Fire Extinguisher</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','305', '35');" style="text-align: left;">- Safety Shower</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','561', '35');" style="text-align: left;">- 화재자동경보시스템</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','562', '35');" style="text-align: left;">- Foam Chamber</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','563', '35');" style="text-align: left;">- Fire Hose &amp; Accessary</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','400', '35');" style="text-align: left;">- VRU</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','471', '35');" style="text-align: left;">- VCU</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','472', '35');" style="text-align: left;">- RTO</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','473', '35');" style="text-align: left;">- 전기집진기</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','728', '35');" style="text-align: left;">- 소공간 자동소화기</a></li>
                                            </ul>
                                        </li>

                                        <p id="m_gnb_banner">
                                            <a href="javascript:goBanner('8', '2', '', '안전/환경 분야별배너');">
                                                <img src="http://linkplantec.comhttp://linkplantec.com/upload/1/banner/bc528121e44a4c29810734e9653e2c4e.jpg" alt="배너이미지" style="width: 291px; height: 400px;">
                                            </a>
                                        </p>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#" class="mvn_03">회전기계350</a>
                                    <ul class="m_2depth">
                                        <p class="category_title">회전기계</p>
                                        <li class="">
                                            <a href="#" class="m_2depth_tit">솔루션</a>
                                            <ul class="m_3depth">
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','689', '546', '350'   );" style="text-align: left;">- Bellows Seal</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="">
                                            <a href="#" class="m_2depth_tit">기자재</a>
                                            <ul class="m_3depth">
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','15', '14');" style="text-align: left;">- Compressor</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','110', '15', '14'   );">- Cetrifugal - Air</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','111', '15', '14'   );">- Cetrifugal - Process</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','112', '15', '14'   );">- Reciprocating - Air</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','113', '15', '14'   );">- Reciprocating - Process</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','114', '15', '14'   );">- Rotary</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','115', '15', '14'   );">- Axial</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','16', '14');" style="text-align: left;">- Pump</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','116', '16', '14'   );">- Centrifugal-API</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','117', '16', '14'   );">- Centrifugal-ANSI</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','118', '16', '14'   );">- Centrifugal-Sump</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','119', '16', '14'   );">- Centrifugal-Slurry</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','120', '16', '14'   );">- Centrifugal-Cooling Water</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','121', '16', '14'   );">- Centrifugal-Hydrant</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','122', '16', '14'   );">- Centrifugal-Non seal</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','123', '16', '14'   );">- Reciprocating</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','124', '16', '14'   );">- Diaphram</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','125', '16', '14'   );">- Metering</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','126', '16', '14'   );">- Screw</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','127', '16', '14'   );">- Gear</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','128', '16', '14'   );">- Mono</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','129', '16', '14'   );">- Vacuum</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','564', '16', '14'   );">- Cryogenic</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','17', '14');" style="text-align: left;">- Fan &amp; Blower</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','134', '17', '14'   );">- Centrifugal</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','135', '17', '14'   );">- Root</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','18', '14');" style="text-align: left;">- Mixer &amp; Agitator</a></li>

                                                <li><a href="#" onclick="goProductByCategory2_x('3','565', '14');" style="text-align: left;">- Steam Turbine</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','566', '14');" style="text-align: left;">- Engine</a></li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','567', '14');" style="text-align: left;">- 부대설비-기계</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','569', '567', '14'   );">- Loading Arm</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','570', '567', '14'   );">- Elevator</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','571', '567', '14'   );">- Hoist &amp; Crane</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','572', '567', '14'   );">- Conveying System</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','568', '14');" style="text-align: left;">- 부속품-기계</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','573', '568', '14'   );">- Coupling-Gear</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','574', '568', '14'   );">- Coupling-Diaphram</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','575', '568', '14'   );">- Coupling-Disc</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','576', '568', '14'   );">- Gear Unit</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','577', '568', '14'   );">- Mechanical Seal</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','578', '568', '14'   );">- Dry Gas Seal</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>

                                        <p id="m_gnb_banner">
                                            <a href="javascript:goBanner('8', '2', '', '기계');">
                                                <img src="http://linkplantec.comhttp://linkplantec.com/upload/1/banner/ed9a55a19c254912affb9c577c6a1dfd.jpg" alt="배너이미지" style="width: 291px; height: 400px;">
                                            </a>
                                        </p>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#" class="mvn_04">장치/배관351</a>

                                    <ul class="m_2depth">
                                        <p class="category_title">장치/배관</p>
                                        <li class="">
                                            <a href="#" class="m_2depth_tit">솔루션</a>
                                            <ul class="m_3depth">
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','718', '547', '351'   );" style="text-align: left;">- 드론 Inspection</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','716', '547', '351'   );" style="text-align: left;">- 배관자동용접기술</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','717', '547', '351'   );" style="text-align: left;">- Hi-Flex</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','690', '547', '351'   );" style="text-align: left;">- On-Stream Leak 차단</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','691', '547', '351'   );" style="text-align: left;">- 세라믹단열코팅</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','692', '547', '351'   );" style="text-align: left;">- Blind Valve</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','714', '547', '351'   );" style="text-align: left;">- Emisshield</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','715', '547', '351'   );" style="text-align: left;">- 초음파기술볼트Tensioner</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','727', '547', '351'   );" style="text-align: left;">- 스토팍방식시스템</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="">
                                            <a href="#" class="m_2depth_tit">기자재</a>
                                            <ul class="m_3depth">
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','20', '19');" style="text-align: left;">- Pressure Vessel</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','149', '20', '19'   );">- Tower</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','150', '20', '19'   );">- Drum</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','579', '20', '19'   );">- Reactor</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','21', '19');" style="text-align: left;">- Heat Exchanger</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','151', '21', '19'   );">- Shell &amp; Tube</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','152', '21', '19'   );">- Air Fin Cooler</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','153', '21', '19'   );">- Plate</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','154', '21', '19'   );">- Spiral</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','155', '21', '19'   );">- Helixchanger</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','22', '19');" style="text-align: left;">- Heater &amp; Incinerator</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','156', '22', '19'   );">- Process Heater</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','157', '22', '19'   );">- Incinerator</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','158', '22', '19'   );">- Burner</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','580', '22', '19'   );">- Waste Heat Boiler</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','581', '22', '19'   );">- Refactory</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','23', '19');" style="text-align: left;">- Filter &amp; Separator</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','130', '23', '19'   );">- Feed Filter</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','131', '23', '19'   );">- Bag &amp; Catridge Filter</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','132', '23', '19'   );">- Centrifugal Separator</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','133', '23', '19'   );">- Memberane Separator</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','24', '19');" style="text-align: left;">- Valve</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','159', '24', '19'   );">- Gate</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','160', '24', '19'   );">- Ball</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','161', '24', '19'   );">- Butterfly</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','162', '24', '19'   );">- Plug</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','163', '24', '19'   );">- Dual Check Plate</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','582', '24', '19'   );">- Blowoff</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','583', '24', '19'   );">- Foot</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','584', '24', '19'   );">- Post Indicate</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','585', '24', '19'   );">- Safety Relief Valve</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','25', '19');" style="text-align: left;">- Pipe &amp; Tube</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','164', '25', '19'   );">-
                                                            Carbon Steel Pipe- SMLS</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','165', '25', '19'   );">-
                                                            Carbon Steel Pipe- EFW</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','166', '25', '19'   );">-
                                                            Carbon Steel Pipe- ERW</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','167', '25', '19'   );">-
                                                            Low Alloy Steel Pipe- SMLS</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','168', '25', '19'   );">-
                                                            Low Alloy Steel Pipe- EFW</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','169', '25', '19'   );">-
                                                            Stainless Steel Pipe-SMLS</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','170', '25', '19'   );">-
                                                            Stainless Steel Pipe-EFW</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','171', '25', '19'   );">-
                                                            PE Coated Pipe</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','172', '25', '19'   );">-
                                                            Tube</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','173', '25', '19'   );">-
                                                            Preinsulated Tube</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','586', '19');" style="text-align: left;">- Flange &amp; Fitting</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','587', '586', '19'   );">-
                                                            Flange</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','588', '586', '19'   );">-
                                                            Fittin</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','589', '586', '19'   );">-
                                                            Tube Fitting</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','590', '19');" style="text-align: left;">- 부대설비-장치</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','591', '590', '19'   );">-
                                                            Desuperheater</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','592', '590', '19'   );">-
                                                            Ejector &amp; Eductor</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','593', '590', '19'   );">-
                                                            Steam Trap &amp; Manifolder</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','594', '590', '19'   );">-
                                                            Silencer</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','595', '19');" style="text-align: left;">- 부속품-장치</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','596', '595', '19'   );">-
                                                            Tank Internal</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','597', '595', '19'   );">-
                                                            Vessel/Boiler Internal</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','598', '595', '19'   );">-
                                                            Reactor Internal</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','599', '595', '19'   );">-
                                                            Tower Internal-Packing</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','600', '595', '19'   );">-
                                                            Tower Internal-Tray</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','601', '595', '19'   );">-
                                                            Breather Valve &amp; Emergency Vent</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','602', '595', '19'   );">-
                                                            SPM Hose</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','603', '595', '19'   );">-
                                                            Jetty Parts</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','604', '595', '19'   );">-
                                                            Gasket-Ring</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','605', '595', '19'   );">-
                                                            Gasket-Sheet, Sprial Wound, Metal</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','606', '595', '19'   );">-
                                                            Flexible Joint</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','607', '595', '19'   );">-
                                                            Quick Coupler</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','608', '595', '19'   );">-
                                                            Strainer</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','609', '595', '19'   );">-
                                                            Gauge Glass</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','610', '595', '19'   );">-
                                                            Steam Ring</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','611', '595', '19'   );">-
                                                            Pipe Support &amp; Spring Hanger</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','612', '595', '19'   );">-
                                                            Expansion Joint</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','613', '595', '19'   );">-
                                                            Flexible Hose</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','614', '595', '19'   );">-
                                                            Bolt &amp; Nut</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>

                                        <p id="m_gnb_banner">
                                            <a href="javascript:goBanner('8', '2', '', '장치');">
                                                <img src="http://linkplantec.com/upload/1/banner/0e0e495351374cbc8e71ba5abbf9074c.jpg" alt="배너이미지" style="width: 291px; height: 400px;">
                                            </a>
                                        </p>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#" class="mvn_05">전기352</a>
                                    <ul class="m_2depth">
                                        <p class="category_title">전기</p>
                                        <li class="">
                                            <a href="#" class="m_2depth_tit">솔루션</a>
                                            <ul class="m_3depth">
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','719', '551', '352'   );" style="text-align: left;">- 모터진단기술</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','725', '551', '352'   );" style="text-align: left;">- Flat-LED</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="">
                                            <a href="#" class="m_2depth_tit">기자재</a>
                                            <ul class="m_3depth">
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','28', '26');" style="text-align: left;">- Motor &amp; Generator</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','189', '28', '26'   );">-
                                                            Induction</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','190', '28', '26'   );">-
                                                            Synchronous</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','191', '28', '26'   );">-
                                                            DC Motor Controller</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','192', '28', '26'   );">-
                                                            Generator Controller</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','193', '28', '26'   );">-
                                                            Synchronous Motor Controller</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','194', '28', '26'   );">-
                                                            Generator-Engine Driven</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','27', '26');" style="text-align: left;">- Transformer</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','176', '27', '26'   );">-
                                                            Oil Immersed Type</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','177', '27', '26'   );">-
                                                            Dry Type</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','178', '27', '26'   );">-
                                                            Mold Type</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','31', '26');" style="text-align: left;">- Controller/Breaker/Relay</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','197', '31', '26'   );">-
                                                            SWGR &amp; MCC</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','198', '31', '26'   );">-
                                                            VCB &amp; VCS</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','199', '31', '26'   );">-
                                                            ACB</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','200', '31', '26'   );">-
                                                            GCB</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','201', '31', '26'   );">-
                                                            LVRD</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','202', '31', '26'   );">-
                                                            EOCR</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','203', '31', '26'   );">-
                                                            Protective Relay</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','615', '31', '26'   );">-
                                                            VFD</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','616', '26');" style="text-align: left;">- Electric Heater &amp; Tracing</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','617', '616', '26'   );">-
                                                            Electric Heater</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','618', '616', '26'   );">-
                                                            Electric Heater Tracing-SECT</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','619', '616', '26'   );">-
                                                            Electric Heater Tracing-Self Regulating</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','620', '26');" style="text-align: left;">- Lamp/Lighting</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','621', '620', '26'   );">-
                                                            무전극</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','622', '620', '26'   );">-
                                                            LED</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','623', '620', '26'   );">-
                                                            Lighting Fixture</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','624', '26');" style="text-align: left;">- UPS &amp; Battery</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','625', '624', '26'   );">-
                                                            UPS</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','626', '624', '26'   );">-
                                                            Battery</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','627', '624', '26'   );">-
                                                            Battery Charge</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','628', '26');" style="text-align: left;">- 부대설비-전기</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','629', '628', '26'   );">- MOV Actuator</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','630', '628', '26'   );">- Distribution Panel Board-방폭형</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','641', '26');" style="text-align: left;">- 부속품-전기</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','642', '641', '26'   );">- Condensor</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','643', '641', '26'   );">- 저항기/접지저항</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>

                                        <p id="m_gnb_banner">
                                            <a href="javascript:goBanner('8', '2', '', '배관');">
                                                <img src="http://linkplantec.com/upload/1/banner/9265521989d94b96a59c8a8dd48c4c0e.jpg" alt="배너이미지" style="width: 291px; height: 400px;">
                                            </a>
                                        </p>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#" class="mvn_06">계장354</a>
                                    <ul class="m_2depth">
                                        <p class="category_title">계장</p>
                                        <li class="">
                                            <a href="#" class="m_2depth_tit">솔루션</a>
                                            <ul class="m_3depth">
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','720', '552', '354'   );" style="text-align: left;">- sample</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="">
                                            <a href="#" class="m_2depth_tit">기자재</a>
                                            <ul class="m_3depth">
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','38', '32');" style="text-align: left;">- PLC/DCS/TMR</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','204', '38', '32'   );">- PLC</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','205', '38', '32'   );">- DCS</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','37', '32');" style="text-align: left;">- Control Valve</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','211', '37', '32'   );">- Globe Type</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','212', '37', '32'   );">- Butterfly Type</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','39', '32');" style="text-align: left;">- On-Off Valve</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','217', '39', '32'   );">- Ball Type</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','218', '39', '32'   );">- Butterfly Type</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','40', '32');" style="text-align: left;">- Flow Devices</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','225', '40', '32'   );">- Positive Displacement</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','226', '40', '32'   );">- Magnetic</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','43', '32');" style="text-align: left;">- Pressure Devices</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','228', '43', '32'   );">- Pressure gauge</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','229', '43', '32'   );">- Pressure Switch</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','42', '32');" style="text-align: left;">- Temperature Devices</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','239', '42', '32'   );">- Temperature Transmitter</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','240', '42', '32'   );">- Thermocouple</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','41', '32');" style="text-align: left;">- Level Devices</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','242', '41', '32'   );">- TLG Receiver</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','243', '41', '32'   );">- Level Switch</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','651', '32');" style="text-align: left;">- Scale &amp; Load Cell</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','652', '651', '32'   );">- Scale &amp; Load Cell</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','653', '651', '32'   );">- Truck Scale</a></li>
                                                    </ul>
                                                </li>

                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','654', '32');" style="text-align: left;">- 분석기/부대설비</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','655', '654', '32'   );">- Gas Chromatograph</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','656', '654', '32'   );">- Moisture/Dew Point</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory2_x('3','678', '32');" style="text-align: left;">- 부속품-계장</a>
                                                    <ul class="m_4depth">
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','679', '678', '32'   );">-Pressure Regulating Valve</a></li>
                                                        <li><a href="#" onclick="goProductByCategory3_x('3','680', '678', '32'   );">- Solenoid Valve</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>

                                        <p id="m_gnb_banner">
                                            <a href="javascript:goBanner('8', '2', '', '계기');">
                                                <img src="http://linkplantec.com/upload/1/banner/8248a71f72ba48cb9042e845c58aa62e.jpg" alt="배너이미지" style="width: 291px; height: 400px;">
                                            </a>
                                        </p>
                                    </ul>
                                </li>

                                <li>
                                    <a href="#" class="mvn_07">토목/건축355</a>
                                    <ul class="m_2depth">
                                        <p class="category_title">토목/건축</p>
                                        <li class="">
                                            <a href="#" class="m_2depth_tit">솔루션</a>
                                            <ul class="m_3depth">
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','698', '554', '355'   );" style="text-align: left;">- Ductile Iron Pile</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="goProductByCategory_x('3','693', '554', '355'   );" style="text-align: left;">- Concrete 보수기술</a>
                                                    <ul class="m_4depth" style="display: none;">
                                                        <li><a href="#" onclick="">- 메뉴명1</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명2</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명3</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명4</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명5</a></li>
                                                        <li><a href="#" onclick="">- 메뉴명6</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="">
                                            <a href="#" class="m_2depth_tit">기자재</a>
                                            <ul class="m_3depth">
                                                <li><a href="#" onclick="goProductByCategory2_x('3','684', '553');" style="text-align: left;">- 철근</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','685', '553');" style="text-align: left;">- 콘크리트</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','694', '553');" style="text-align: left;">- 가설재</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','721', '553');" style="text-align: left;">- PHC파일</a></li>
                                                <li><a href="#" onclick="goProductByCategory2_x('3','722', '553');" style="text-align: left;">- TS판넬</a></li>
                                            </ul>
                                        </li>
                                        <p id="m_gnb_banner">
                                            <a href="javascript:goBanner('8', '2', '', '토목/건축');">
                                                <img src="http://linkplantec.com/upload/1/banner/6997d01f7614486faa019bba09778a59.jpg" alt="배너이미지" style="width: 291px; height: 400px;">
                                            </a>
                                        </p>
                                    </ul>
                                </li>
                            </ul>
                            <div class="tmCurtain">
                                <p class="close_gnb"></p>
                            </div>
                        </div>
                    </div>
                    <!-- //카테고리보기에 마우스 오버 시 나타나는 네비게이션 -->
                </div>
            </div>
        </div>


        <!--//퀵메뉴 -->
        <!-- //header -->

        <script type="text/javascript">

            function goSearch(){
                var keyword = $("[input=keyword]").val();

                if (keyword.length < 2){
                    alert("두글자 이상 입력해주세요.");
                    return;
                }
                $("#top_search").submit();

            }
        </script>

        <form id="form_list_x" method="post" action="#">
            <!--선택한 카테고리 세팅 -->
            <input type="hidden" name="category_id" value="1">
            <input type="hidden" name="category_id_2" value="">
            <input type="hidden" name="category_id_3" value="">
            <input type="hidden" name="category_id_4" value="">
        </form>

        <form id="form_list2_x" method="post" action="#">
            <!--선택한 카테고리 세팅 -->
            <input type="hidden" name="category_id" value="2">
            <input type="hidden" name="category_id_2" value="">
            <input type="hidden" name="category_id_3" value="">
            <input type="hidden" name="category_id_4" value="">
        </form>


        <script>
            function goProductByCategory_x(level, category_id,category_id2, category_id3){
                //category_id 자신
                //category_id2 부모
                //category_id3 부모의 부모


                $("input[name=category_id_2]").val(category_id3);
                $("input[name=category_id_3]").val(category_id2);
                $("input[name=category_id_4]").val(category_id);

                $("#form_list_x").submit();
            }

            function goProductByCategory2_x(level, category_id, parent_id){


                $("input[name=category_id_2]").val(parent_id);
                $("input[name=category_id_3]").val(category_id);

                $("#form_list2_x").submit();
            }

            function goProductByCategory3_x(level, category_id,category_id2, category_id3){
                //category_id 자신
                //category_id2 부모
                //category_id3 부모의 부모


                $("input[name=category_id_2]").val(category_id3);
                $("input[name=category_id_3]").val(category_id2);
                $("input[name=category_id_4]").val(category_id);

                $("#form_list2_x").submit();
            }

        </script>


        <script>
            $(".main_srch_wrap").mouseover(function(){
                $("#word_div").show();
                //$("#word_div_x").show();
            });
            $(".main_srch_wrap").mouseleave(function(){
                $("#word_div").hide();
                //$("#word_div_x").hide();
            });



            var word_div_close = $('#word_div_close');
            word_div_close.click(function(){
                $("#word_div").hide();
                $("#word_div_x").hide();
            });


            function click_search(word){

                $("#top_keyword").val(word);
                $("#top_search").submit();

            }


        </script>


        <!-- 팝업창 (s) -->
        <div id="divpop1" style="position: absolute; left: 120px; top: 30px; border: 3px solid rgb(0, 0, 0); padding: 0; margin: 0; z-index: 201; display: none;">
            <table cellpadding="0" cellspacing="0">
                <tbody>
                <tr>
                    <td>
                        <a href="#" target="_slef" title="새창으로 열림">
                            <img src="http://linkpt.cdn3.cafe24.com/images/210614_popup.jpg" style="width:100%;" alt="팝업">
                        </a>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="background: #000; padding:4px">
                        <input type="checkbox" name="layer_chkbox1" id="layer_chkbox1" value="checkbox" checked="checked" style="vertical-align:middle">
                        <span style="font-size: 14px; color: #fff;">오늘 하루 이 창을 열지 않음</span>
                        <a href="#" onclick="javascript:closeWin(1);"><span style="font-size: 12px; color: #fff; ">[닫기]</span> </a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <!-- 팝업창 (e) -->

        <script type="text/javascript">
            $(function(){
                init();
            });
            function init(){

                //오늘 요일 구하기
                var d = new Date();
                var week = new Array('일', '월', '화', '수', '목', '금', '토', '일');
                var cookiedata = document.cookie;
                var layerCount = 2;  // 레이어팝업갯수는 꼭 조정
                for(var i=1 ; i<=layerCount ; i++) {
                    if ( cookiedata.indexOf("maindiv"+i+"=done") < 0 ) {
                        if(i == 2){
                            if(week[d.getDay()] == "수") {
                                $("div#divpop" + i).show();
                            }
                        }
                        else{
                            $("div#divpop" + i).show();
                        }
                    }
                    else {
                        $("div#divpop" + i).hide();
                    }
                }
            }

            function closeWin(layerNum) {
                if ( document.getElementById("layer_chkbox"+layerNum).checked ){
                    setCookie( "maindiv"+layerNum, "done" , 1 );
                }

                document.all['divpop'+layerNum].style.display = "none";
            }

            function setCookie( name, value, expiredays ) {
                var todayDate = new Date();
                todayDate.setDate( todayDate.getDate() + expiredays );
                document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
            }
        </script>
        <sitemesh:write property='body'/>
        <!-- footer -->
        <div id="m_recent_wrap">
            <div class="m_recent">
                <p class="m_recent_tit">
                    <img src="http://linkpt.cdn3.cafe24.com/images/m_recent_tit.jpg" alt="공지사항">
                </p>
                <p class="m_recent_con">
                    <a href="#">
                        링플 OPEN 안내
                        <span>2021-07-15</span>
                    </a>
                </p>
                <p class="m_recent_moreview">
                    <a href="#">
                        <img src="http://linkpt.cdn3.cafe24.com/images/m_recent_moreview.jpg" alt="전체보기">
                    </a>
                </p>
            </div>
        </div>

        <div id="copy_wrap">
            <a href="#header" class="topBt"><span>TOP</span></a>
            <div id="m_menu">
                <ul class="m_menu">
                    <li><a href="#">이용약관</a>
                    </li><li>
                </li><li><a href="#">개인정보처리방침</a>
                </li><li>
                </li></ul>
            </div>
            <div id="footer">
                <div id="copy">
                    <div class="copy_con">
                        <ul>
                            <li>상호 : 링크플랜텍 / 대표 : 양승호 / 사업자등록번호 : 727-88-00952</li>
                            <li>대표전화 : 052-256-8767 / 주소 : 울산광역시 남구 신두왕로 21 / 개인정보보호책임자 : 양승호</li>
                            <li>Copyright (c) <b>링크플랜텍.</b> 2019. All rights reserved.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <script>
            $(function(){
                /* top 버튼 */
                // Fakes the loading setting a timeout
                setTimeout(function () {
                    $('body').addClass('loaded');
                }, 400);

                $(window).scroll(function () {
                    if ($(this).scrollTop() > $(window).height() * 0.2) {
                        $('.topBt').addClass('over');
                    } else {
                        $('.topBt').removeClass('over');
                    }
                });

                //Click event to scroll to top
                $('.topBt').click(function () {
                    $('html, body').animate({ scrollTop: 0 }, 300);
                    return false;
                });
            });
        </script>
        <!-- //footer -->
</body>
</html>
