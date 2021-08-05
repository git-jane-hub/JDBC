<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 로그인 세션을 확인해서 로그인이 되어있는 상태에서만 탈퇴를 진행하도록 
	String session_id = (String)session.getAttribute("id_session");
	if(session_id == null){
		response.sendRedirect("P03User_login_form.jsp");
	}
	String id = (String)session.getAttribute("id_session");
	String pw = (String)session.getAttribute("pw_session");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴 페이지</title>
</head>
<body>
	<h2><%= id %>회원의 탈퇴를 진행합니다.</h2>
	아래 비밀번호를 한번더 입력해주세요.<br>
	삭제 진행 후 되돌릴 수 없으니 주의하세요.<hr>
	<form action = "P08User_delete_ok.jsp" method = "post">
		<input type = "password" name = "pw_check" required /><br>
		<input type = "submit" value = "탈퇴 진행하기" /><br>
	</form>
</body>
</html>