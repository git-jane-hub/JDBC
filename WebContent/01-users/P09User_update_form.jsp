<%@ page import="kr.co.ictedu.P2UsersDAO"%>
<%@ page import="kr.co.ictedu.P1UsersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	// 1. 세션을 통해 아이디 가져오기
	String id = (String)session.getAttribute("id_session");
	if(id == null){
		response.sendRedirect("P03User_login_form.jsp");
	}
	// 2. DAO를 통해 P1UsersVO를 호출
	P2UsersDAO dao = P2UsersDAO.getInstance();
	// DB로 데이터를 전달해주기 위한 객체 생성
	P1UsersVO user = new P1UsersVO();
	user.setUid(id);
	
	// 3. 객체를 생성한 클래스 외부에서 호출할 때에는 같은 데이터 타입의 변수에 저장해서 해당 변수를 매개로 호출
	P1UsersVO resultData = dao.getUserInfo(user);
	// DAO에서 rs.next()에서 false가 나오면 실행될 if문
	if(resultData.getUid() == null){
		session.invalidate();
		response.sendRedirect("P03User_login_form.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정 페이지</title>
</head>
<body>
	<%-- 회원정보 수정 시 아이디는 기본키므로 변경할 수 없게, 비밀번호와 이름, 이메일은 수정 가능하도록 작성 --%>
	<h2><%= resultData.getUid() %>님 회원정보를 수정해주세요.</h2><hr>
	<form action = "P10User_update_ok.jsp" method = "post">
		<input type = "text" name = "uid" value = "<%= resultData.getUid() %>" readonly /><br>
		<input type = "password" name = "upw" placeholder = "PASSWORD" required /><br>
		<input type = "text" name = "uname" value = "<%= resultData.getUname() %>" placeholder = "NAME" /><br>
		<input type = "email" name = "email" value = "<%= resultData.getEmail() %>" placeholder = "E-MAIL" /><br>
		<input type = "submit" value = "UPDATE" /><br>
		<a href = "P04User_login_ok.jsp">회원정보 수정 취소</a>
	</form>
</body>
</html>