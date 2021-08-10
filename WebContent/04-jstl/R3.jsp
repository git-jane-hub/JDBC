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
	<c:set var = "a" value = "0" />
	<c:forEach var = "b" begin = "1" end = "10" step = "4">
		<c:set var = "a" value = "${a * b }" /> 
	</c:forEach>
	<c:out value = "${a * b }" />
</body>
</html>