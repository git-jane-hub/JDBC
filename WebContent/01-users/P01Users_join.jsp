<%@ page import = "kr.co.ictedu.P1UsersVO" %>
<%@ page import = "kr.co.ictedu.P2UsersDAO" %>
<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 중복된 아이디를 작성해도 로그인이 되기 때문에 중복 아이디값을 입력할 수 없는 로직 추가하기  --%>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upw");
	String uname = request.getParameter("uname");
	String email = request.getParameter("email");
	
	// 중복 아이디 작성 시 회원가입 실패 페이지로 이동
	// VO 객체 생성 및 uid, upw, uname, email를 파라미터에 입력
	P1UsersVO user = new P1UsersVO(uid, upw, uname, email);
	P2UsersDAO dao = P2UsersDAO.getInstance();
	// VO 객체를 dao에 넣어줌 
	dao.usersJoinDup(user);
	if(dao.usersJoinDup(user) != 1){
		response.sendRedirect("P01Users_join_failed.jsp");
	}
	// 중복 아이디가 아니라면 추가
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