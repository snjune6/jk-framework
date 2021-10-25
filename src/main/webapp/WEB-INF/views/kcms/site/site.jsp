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
    <form:form modelAttribute="siteDto">
        <div class="control-group">
            <form:label path="siteName">siteName</form:label>
            <form:input path="siteName" />
            <form:errors path="siteName" />
        </div>
        <div class="control-group">
            <form:label path="siteState">siteState</form:label>
            <form:radiobuttons path="siteState" items="${siteStateList}" />
            <form:errors path="siteState" />
        </div>
        <div class="control-group">
            <form:label path="siteDomain">siteDomain</form:label>
            <form:input path="siteDomain" />
            <form:errors path="siteDomain" />
        </div>
        <div class="control-group">
            <div class="controls">
                <form:button>수정</form:button>
            </div>
        </div>
    </form:form>
</body>
</html>
