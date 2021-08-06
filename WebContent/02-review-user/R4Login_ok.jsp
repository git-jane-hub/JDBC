<%@page import="pr.pr.pr.R2UsersDAO"%>
<%@page import="pr.pr.pr.R1UsersVO"%>
<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upw");
	
	R1UsersVO user = new R1UsersVO();
	R2UsersDAO dao = R2UsersDAO.getInstance();
	dao.usersLogin(user);
	user.setUid(uid);
	user.setUpw(upw);
	// 여기 오류, user에 요청해서 얻은 정보가 안들어간 것 같음 - 다시
	if(dao.usersLogin(user) == 1){
		session.setAttribute("id_session", uid);
		session.setAttribute("pw_session", upw);
	}else{
		response.sendRedirect("R5Login_failed.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<h1><%= uid %>님 환영합니다.</h1>
	<h2>로그인에 성공했습니다.</h2>
	<a href = "R6Logout.jsp">로그아웃하기</a><br>
	<a href = "R7Delete_form">회원 탈퇴 진행하기</a>
</body>
</html>