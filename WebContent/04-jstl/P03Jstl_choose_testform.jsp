<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수 학점 변환기</title>
</head>
<body>
	<h2>점수를 입력해주세요.</h2><hr>
	<form action = "P04Jstl_choose_test.jsp" method = "get">
		<%-- type 을 number 로 작성하면 text 형식을 작성할 수 없음  --%>
		<input type = "number" name = "score" placeholder = "당신의 점수는?" required /><br>
		<input type = "submit" value = "점수 확인하기 " /><br>
	</form>
</body>
</html>