<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Book Store</title>
    <%@ include file="/WEB-INF/jsp/frame/include.jsp" %>
    <c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
</head>
<body>
    <c:out value="${user}"></c:out>
</body>
</html>
