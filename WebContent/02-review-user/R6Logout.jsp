<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id_session = (String)session.getAttribute("id_session");
	if(id_session != null){
		session.invalidate();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 페이지</title>
</head>
<body>
	<h2>로그아웃이 완료되었습니다.</h2>
	<a href = "R3Login_form.jsp">로그인 창으로 이동</a>
</body>
</html>