<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수 학점 변환기</title>
</head>
<body>
	<h2>당신의 학점은?</h2><hr>
	<c:choose>
		<c:when test = "${param.score <= 100 && score >= 0}">
			<c:choose>
				<c:when test = "${param.score >= 90 }">
					<p>A학점입니다.</p>
				</c:when>
				<c:when test = "${param.score >= 80 }">
					<p>B학점입니다.</p>
				</c:when>
				<c:when test = "${param.score >= 70 }">
					<p>C학점입니다.</p>
				</c:when>
				<c:when test = "${param.score >= 60 }">
					<p>D학점입니다.</p>
				</c:when>
				<c:otherwise>F학점입니다.</c:otherwise>
			</c:choose>	
		</c:when>
		<c:otherwise>범위에 맞는 점수를 입력해주세요.(0점 이상 100점 이하로 작성)</c:otherwise>
	</c:choose>
</body>
</html>