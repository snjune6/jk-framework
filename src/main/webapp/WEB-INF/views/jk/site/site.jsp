<%--
  Created by IntelliJ IDEA.
  User: DEV-BACK04
  Date: 2021-10-21
  Time: 오후 2:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4><span class="glyphicon glyphicon-pencil" aria-hidden="true"><b> 사이트관리</b></span></h4>
    <form:form modelAttribute="siteDto" cssClass="form-horizontal">
        <div class="well">
            <div class="form-group">
                <form:label path="siteName" cssClass="col-sm-2 control-label">사이트 명</form:label>
                <div class="col-sm-10">
                    <form:input path="siteName" cssClass="form-control" />
                    <form:errors path="siteName" />
                </div>
            </div>
            <div class="form-group">
                <form:label path="siteState" cssClass="col-sm-2 control-label">사이트 상태</form:label>

                    <div class="col-sm-10">
                        <form:radiobuttons path="siteState" items="${siteStateList}" />
                        <form:errors path="siteState" />
                    </div>
            </div>
            <div class="form-group">
                <form:label path="siteDomain" cssClass="col-sm-2 control-label">사이트 도메인</form:label>
                <div class="col-sm-10">
                    <form:input path="siteDomain" cssClass="form-control" />
                    <form:errors path="siteDomain" />
                </div>
            </div>
            <div class="form-group">
                <form:label path="siteCdn" cssClass="col-sm-2 control-label">CDN URL</form:label>
                <div class="col-sm-10">
                    <form:input path="siteCdn" cssClass="form-control" />
                    <form:errors path="siteCdn" />
                </div>
            </div>
        </div>
        <div class="well">
            <div class="form-group">
                <form:label path="siteJkNm" cssClass="col-sm-2 control-label">사이트 관리자 명</form:label>
                <div class="col-sm-10">
                    <form:input path="siteJkNm" cssClass="form-control" />
                    <form:errors path="siteJkNm" />
                </div>
            </div>

            <div class="form-group">
                <form:label path="siteJk" cssClass="col-sm-2 control-label">사이트 관리자</form:label>
                <div class="col-sm-10">
                    <form:input path="siteJk" cssClass="form-control" />
                    <form:errors path="siteJk" />
                </div>
            </div>

            <div class="form-group">
                <form:label path="siteAdminNm" cssClass="col-sm-2 control-label">컨텐츠 관리자 사이트 명</form:label>
                <div class="col-sm-10">
                    <form:input path="siteAdminNm" cssClass="form-control" />
                    <form:errors path="siteAdminNm" />
                </div>
            </div>

            <div class="form-group">
                <form:label path="siteAdmin" cssClass="col-sm-2 control-label">컨텐츠 관리자 사이트</form:label>
                <div class="col-sm-10">
                    <form:input path="siteAdmin" cssClass="form-control" />
                    <form:errors path="siteAdmin" />
                </div>
            </div>

            <div class="form-group">
                <form:label path="siteMyPageNm" cssClass="col-sm-2 control-label">마이페이지 명</form:label>
                <div class="col-sm-10">
                    <form:input path="siteMyPageNm" cssClass="form-control" />
                    <form:errors path="siteMyPageNm" />
                </div>
            </div>

            <div class="form-group">
                <form:label path="siteMyPage" cssClass="col-sm-2 control-label">마이페이지</form:label>
                <div class="col-sm-10">
                    <form:input path="siteMyPage" cssClass="form-control" />
                    <form:errors path="siteMyPage" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <form:button class="btn btn-default" >수정</form:button>
                </div>
            </div>
        </div>
    </form:form>
    <script>
        $(function(){
            $("#siteDomain.errors").on("click", function(e){
                console.log(e);
            });
        });
    </script>
</body>
</html>
