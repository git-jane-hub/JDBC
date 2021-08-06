<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 여기다시, 로그인 완료한 사람이 다시방문하면 로그인 오케이 창으로 이동 --%>
<%
    String id_session = (String)session.getAttribute("id_session");
	if(id_session != null){
		response.sendRedirect("R4Login_ok.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<h1>로그인을 진행해주세요.</h1><hr>
	<form action = "R4Login_ok.jsp" method = "post">
		<input type = "text" name = "uid" placeholder = "ID" required><br>
		<input type = "password" name = "upw" placeholder = "PASSWORD" required><br>
		<input type = "submit" value = "LOGIN"><br>
		<a href = "R2Join_form.jsp">회원가입 창으로 이동</a>
	</form>
</body>
</html>