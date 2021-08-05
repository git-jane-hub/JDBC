<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loginOk = (String)session.getAttribute("id_session");

	if(loginOk != null){
		response.sendRedirect("P04User_login_ok.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 양식</title>
</head>
<body>
	<h2>로그인을 진행해주세요.</h2><hr>
	<form action = "P04User_login_ok.jsp" method = "post">
		<input type = "text" name = "uid" placeholder = "ID" required /><br>
		<input type = "password" name = "upw" placeholder = "PASSWORD" required /><br>
		<input type = "submit" value = "LOGIN" /><br>
		<a href = "P02Users_join_form.jsp">회원가입 창으로 이동</a><br>
	</form>
</body>
</html>