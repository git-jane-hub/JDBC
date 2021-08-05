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
	String uname = request.getParameter("uname");
	String email = request.getParameter("email");

	// 회원가입 폼에서 입력한 정보를 DB로 보내주는 로직 
	// R1UsersVO 객체 생성해서 입력받은 결과를 담아줘야 함 - DAO로 전달
	R1UsersVO user = new R1UsersVO(uid, upw, uname, email);
	R2UsersDAO dao = R2UsersDAO.getInstance();
	dao.usersJoin(user);
	if(dao.usersJoin(user) == 1){
		System.out.println("success");
	}else{
		System.out.println("try again");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%= uid %>님 회원가입을 축하합니다.</h1>
	<a href = "R3Login_form.jsp">로그인 창으로 이동</a>
</body>
</html>
