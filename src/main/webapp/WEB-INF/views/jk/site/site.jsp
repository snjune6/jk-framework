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
    <div class="well">
        <form:form modelAttribute="siteDto" cssClass="form-horizontal">
            <div class="form-group">
                <form:label path="siteName" cssClass="col-sm-2 control-label">siteName</form:label>
                <div class="col-sm-10">
                    <form:input path="siteName" cssClass="form-control" />
                    <form:errors path="siteName" />
                </div>
            </div>
            <div class="form-group">
                <form:label path="siteState" cssClass="col-sm-2 control-label">siteState</form:label>

                    <div class="col-sm-10">
                        <form:radiobuttons path="siteState" items="${siteStateList}" />
                        <form:errors path="siteState" />
                    </div>
            </div>
            <div class="form-group has-error">
                <form:label path="siteDomain" cssClass="col-sm-2 control-label">siteDomain</form:label>
                <div class="col-sm-10">
                    <form:input path="siteDomain" cssClass="form-control has-error" />
                    <form:errors path="siteDomain" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <form:button class="btn btn-default" >수정</form:button>
                </div>
            </div>
        </form:form>
    </div>
</body>
</html>
