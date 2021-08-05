<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 양식</title>
</head>
<body>
	<!-- P01Users.join.jsp로 회원가입 양식 정보를 보내는 form -  ict03.users 테이블의 컬럼명과 동일한 name 값으로-->
	<h2>회원가입을 진행해주세요.</h2><hr>
	<form action = "P01Users_join.jsp" method = "post">
		<input type = "text" name = "uid" placeholder = "ID" required /><br>
		<input type = "password" name = "upw" placeholder = "PASSWORD" required /><br>
		<input type = "text" name = "uname" placeholder = "NAME" required /><br>
		<input type = "email" name = "email" placeholder = "E-MAIL" required /><br>
		<input type = "submit" value = "JOIN" /><br>
		<a href = "P03User_login_form.jsp">로그인 창으로 이동</a>
	</form>
</body>
</html>
