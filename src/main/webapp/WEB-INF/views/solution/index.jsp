<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<title>솔루션</title>

<body>
    <div class="subWrap">
        <div id="sub_contents">
            <h2 class="sub_ctit">기자재</h2>

            <!-- 콘텐츠 내용 시작 -->
            <div id="sub_con">
                <!-- 서브내용 -->
                <!-- 2차 카테고리 -->
                <div class="best_category_box">
                    <ul id="metaCtgrUl" class="category_list_best">
                        <c:forEach var="cate2List" items="${cate2List }" varStatus="status">
                            <li class="<c:if test="${cate2 eq cate2List.id }">selected </c:if>category_list${status.index + 1}" class="category_list${status.index + 1}" >
                                <button type="button" class="category_tab" onclick="location.href='/solution?cate2=${cate2List.id}'">
                                        ${cate2List.category_nm }
                                </button>

                                <c:if test="${cate2 eq cate2List.id }">
                                    <div class="sub_category_box">
                                        <ul data-log-actionid-label="large_category">
                                            <c:forEach var="cate3List" items="${cate3List }" varStatus="status2">

                                                <li>
                                                    <a href="/solution?cate2=${cate2List.id}&cate3=${cate3List.id}" <c:if test="${ cate3 eq cate3List.id }">class="on"</c:if>>${cate3List.category_nm }</a>
                                                </li>

                                            </c:forEach>
                                        </ul>
                                    </div>
                                </c:if>

                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <!-- //2차 카테고리 -->

                <!-- 서브 상품 검색 -->
                <div class="s_product_srch_wrap">
                    <a href="/materiala/list5.do" class="prod_comm">
                        기자재 Q&A
                    </a>

                    <ul class="s_product_srch">
                        <li>
                            <select id="sel_category_id" onchange="">
                                <option value="">전체</option>

                                <c:if test="${not empty categoryList2}">
                                    <c:forEach varStatus="status" var="category_2" items="${categoryList2}">
                                        <option value="${category_2.id}" <c:if test="${param.search_category_id eq category_2.id}">selected="selected"</c:if>>
                                                ${category_2.category_nm}
                                        </option>
                                    </c:forEach>
                                </c:if>
                            </select>
                        </li>

                        <li>
                            <input type="text" id="ipt_keyword" value="${param.keyword}">
                        </li>

                        <li>
                            <input type="image" src="http://linkpt.cdn3.cafe24.com/images/s_product_srch_btn.jpg" alt="검색" onclick="javascript:search();">
                        </li>
                    </ul>
                </div>
                <!-- //서브 상품 검색 -->



                <div class="box_leftType1 product_list_wrap">
                    <ul class="list_thumType flnon">

                        <c:forEach var="item" items="${itemList}">
                            <c:set var="total_cnt" value="${item.count }" />
                            <li class="bdr_nor 1">
                                <div class="photo">
                                    <a href="/product2/viewDetails.do?id=${item.prod_id }">
                                        <c:if test="${empty item.real_path}">
                                            <img src="/assets/img/noimage.png" alt="noimage" />
                                        </c:if>
                                        <c:if test="${not empty item.real_path}">
                                            <img src="/${item.real_path}" alt="${item.original_file_nm}" />
                                        </c:if>
                                    </a>
                                </div>
                                <div class="area_txt">
                                    <div class="com_tit">${item.prod_nm }</div>
                                    <div class="web_tit">
                                        <c:choose>
                                            <c:when test="${ not empty item.corp_url }">
                                                <a href="${item.corp_url }">홈페이지주소</a>
                                            </c:when>
                                            <c:otherwise>
                                                등록된 홈페이지 주소가 없습니다.
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="cont_text">
                                        <dl>
                                            <dt>주소</dt>
                                            <c:choose>
                                                <c:when test="${ not empty item.corp_zipcode && not empty item.corp_address && not empty item.corp_addr_detail }">
                                                    <dd>( ${item.corp_zipcode } ) ${item.corp_address }${item.corp_addr_detail }</dd>
                                                </c:when>
                                                <c:otherwise>
                                                    <dd>주소가 입력되지 않았습니다.</dd>
                                                </c:otherwise>
                                            </c:choose>

                                            <dt>담당자</dt>
                                            <dd>${item.corp_manager }</dd>
                                            <dt>연락처</dt>
                                            <dd>${item.crop_tel }</dd>
                                            <dt>이메일</dt>
                                            <c:choose>
                                                <c:when test="${item.crop_email ne '@null' }">
                                                    <dd>${item.crop_email }</dd>
                                                </c:when>
                                                <c:otherwise>
                                                    <dd>이메일이 입력되지 않았습니다.</dd>
                                                </c:otherwise>
                                            </c:choose>
                                        </dl>
                                    </div>
                                    <p class="tag">
                                        <c:set var="tags" value="${fn:split(item.corp_tag, '|') }" />
                                        <c:forEach var="tag" items="${tags }">
                                            <a href="/product/equipment.do?cate2=${item.category2 }&cate3=${item.category3 }&tag=${tag}">#${tag }</a>
                                        </c:forEach>
                                    </p>
                                </div>
                            </li>
                        </c:forEach>



                    </ul>

                </div>

                <div class="box_rightType1 product_list_banner">
                    <a><img src="http://linkpt.cdn3.cafe24.com/images/list_banner.jpg" alt="사이드배너" /></a>
                    <a><img src="http://linkpt.cdn3.cafe24.com/images/list_banner03.jpg" alt="사이드배너_중간" style="margin-top:25px;" /></a>
                    <a><img src="http://linkpt.cdn3.cafe24.com/images/list_banner2.jpg" alt="사이드배너_하단" style="margin-top:25px;" /></a>
                </div>
            </div>



            <div class="paging_box" >
                <div id="div_pagination"  class="pagination"></div>
            </div>
            <!-- // 페이징 -->

        </div>
    </div>
</body>
