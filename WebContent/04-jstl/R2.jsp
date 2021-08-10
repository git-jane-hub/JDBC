<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test = "${param.age < 20 }">young</c:when>
		<c:when test = "${param.age < 50 }">go work</c:when>
		<c:when test = "${param.age < 100 }">old</c:when>
		<c:otherwise>nothing</c:otherwise>
	</c:choose>
</body>
</html>