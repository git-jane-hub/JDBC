<%@page import="kr.co.ictedu.P2UsersDAO"%>
<%@page import="kr.co.ictedu.P1UsersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. 폼에서 전달받은 데이터
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	String uid = (String)session.getAttribute("id_session");
	String upw = request.getParameter("upw");
	String uname = request.getParameter("uname");
	String email = request.getParameter("email");
	// 2. 위의 데이터를 VO 객체 생성해서 삽입
	P1UsersVO user = new P1UsersVO(uid, upw, uname, email);
	// 3. DAO를 생성해 usersUpdate(); 메서드 호출
	P2UsersDAO dao = P2UsersDAO.getInstance();
	if(dao.usersUpdate(user) == 0){
		response.sendRedirect("P11User_update_failed.jsp");
	}
	/* 4. 업데이트 성공 시 1, 실패 시 0을 리턴받고
		  0 - P11User_update_failed.jsp 로 이동
		  1 - 하단 body에서 <계정명>수정완료 후 로그인 폼으로 돌아가는 링크 작성 */
	
	// 5. P11User_update_failed.jsp에서 수정 실패 메세지와 로그인 폼으로 돌아가는 링크 작성
	/* 회원가입 - 로그인 - 정보수정 - 탈퇴를 진행하면 정보 수정하기 이전 비밀번호로 탈퇴가 가능
		정보수정 이후에는 세션이 만료되어 다시 로그인할 수 있도록 작성 */
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정 완료</title>
</head>
<body>
	<h2><%= uid %>님 회원정보 수정에 성공했습니다.</h2><hr>
	<a href = "P03User_login_form.jsp">로그인 창으로 이동</a>
</body>
</html>