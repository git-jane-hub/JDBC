<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>1부터 100까지의 합</h4>
	<%-- 변수 선언 태그 - int sum = 0; 와 같음 --%>
	<c:set var = "sum" value = "0" />
	
	<%-- 반복문 태그 - for(int i = 1; i <= 100; i++{
						sum = sum + 1;
					} 와 같음 --%>
	<c:forEach var = "n" begin = "1" end = "100">
		<c:set var = "sum" value = "${sum + n }" />
	</c:forEach>
	${sum}
	<c:out value = "${sum }" />
	
	<h4>1부터 100까지의 홀수의 합</h4>
	<%-- 변수 다시 초기화 --%>
	<c:set var = "sum" value = "0" />
	
	<%-- step의 기본값은 1, 2(step)로 작성하면 1(begin)부터 시작해서 2씩 증가 1, 3, 5, 7, ..., 97, 99(end) --%>
	<c:forEach var = "n" begin = "1" end = "100" step = "2">
		<c:set var = "sum" value = "${sum + n }" />
	</c:forEach>
	<c:out value = "${sum }" />
</body>
</html>