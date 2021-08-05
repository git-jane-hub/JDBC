<%@page import="kr.co.ictedu.P1UsersVO"%>
<%@page import="kr.co.ictedu.P2UsersDAO"%>
<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pw_check = request.getParameter("pw_check");		// 사용자가 탈퇴 페이지에서 입력한 값
	String id = (String)session.getAttribute("id_session"); // DB에 저장되어 있는 값
	String pw = (String)session.getAttribute("pw_session"); // DB에 저장되어 있는 값
	
	P2UsersDAO dao = P2UsersDAO.getInstance();				// private인 dao의 객체를 받아옴
	P1UsersVO user = new P1UsersVO();
	user.setUid(id);										// DB에 저장되어 있는 값
	user.setUpw(pw);										// DB에 저장되어 있는 값

	if(dao.usersDelete(user, pw_check) == 1){				// DB에 저장되어 있는 값, 사용자가 탈퇴 페이지에서 입력한 값 - usersDelete 메서드 내부에서 두 값을 비교
		session.invalidate();
	}else{
		// 로그아웃되면서 세션도 만료되도록 작성
		session.invalidate();
		response.sendRedirect("P06User_logout.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴 페이지</title>
</head>
<body>
	<h2><%= id %>회원 탈퇴가 완료되었습니다.</h2>
	<a href = "P03User_login_form.jsp">회원 탈퇴 확인 및 돌아가기</a>
</body>
</html>