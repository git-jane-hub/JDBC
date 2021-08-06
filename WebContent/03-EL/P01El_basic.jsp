<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${a = 15}<br>
	${10}<br>
	${3.14}<br>
	<%-- ${}가 out.println 같은 역할, 따옴표를 제거하고 출력 --%>
	${"hello"}<br>
	${true}<br>
	${a + 20}<br>
	<hr>
	${a}<br>	
	${a < 10}<br>	
	${(a == 15) ? "a는 15와 같다" : "a는 15와 다르다"}<br>	
	${(a > 10) || (a != 15)}<br>	
	
</body>
</html>