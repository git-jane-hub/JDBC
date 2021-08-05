<%@ page import = "kr.co.ictedu.P1UsersVO" %>
<%@ page import = "kr.co.ictedu.P2UsersDAO" %>
<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upw");
	String uname = request.getParameter("uname");
	String email = request.getParameter("email");
	
	// 기존에 있던 회원가입 로직을 DAO 클래스로 이동하고 DAO 클래스 받아오기 
	P2UsersDAO dao = P2UsersDAO.getInstance();
	
	// VO 객체 생성 및 uid, upw, uname, email, setter로 입력
	P1UsersVO user = new P1UsersVO(uid, upw, uname, email);
	// VO 객체를 dao에 넣어줌 
	dao.usersJoin(user);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
	<h2>회원가입을 축하합니다.</h2>
	<a href = "P03User_login_form.jsp">로그인 창으로 이동</a>
</body>
</html>