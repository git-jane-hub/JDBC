<%@ page import="kr.co.ictedu.P1UsersVO"%>
<%@ page import="kr.co.ictedu.P2UsersDAO"%>
<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upw");
	
	/*
	System.out.println(uid == null);		// true
	System.out.println("null".equals(uid)); // false
	*/
	
	/* 로그인 완료 후 해당 페이지에 다시 방문
	 * 로그인처리를 하고 아래 DB에서 데이터를 가져오는 로직을 생략하기 위해 if~else문 작성 
	 */
	String loginOk = (String)session.getAttribute("id_session");	// 여기까지 loginOk에는 id_session의 value 값인 uid가 저장되어 있음 
	if(loginOk != null){											// 그래서 여기는 null 값이 아님 
		// 세션으로 로그인 된 경우, uid 값이 비어있기 때문에 
		uid = loginOk;												// 폼에서 입력된 값 없이 세션으로 로그인 되어 위 변수인 uid가 비어있기 때문에 loginOk 값을 입력해줌 
	}
	 else{
		P2UsersDAO dao = P2UsersDAO.getInstance();
		P1UsersVO user = new P1UsersVO();
		user.setUid(uid);
		user.setUpw(upw);
		
		if(dao.usersLogin(user) == 1){
			session.setAttribute("id_session", uid);
			session.setAttribute("pw_session", upw);
		}else if(dao.usersLogin(user) == 0){
				response.sendRedirect("P05User_login_failed.jsp");
		}
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
	<a href = "P06User_logout.jsp">로그아웃</a><br>
	<a href = "P09User_update_form.jsp">회원 정보 수정</a><br>
	<a href = "P07User_delete_form.jsp">회원 탈퇴 진행</a><br>
</body>
</html>