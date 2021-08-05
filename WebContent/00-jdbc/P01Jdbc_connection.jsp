<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// DB 연동을 위한 Connector 설정
	// Connection 객체 생성
	Connection con = null;
	try{
		//MySQL과 연동할 것임을 나타냄
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		// 접속 URL은 jdbc:mysql://localhost/db명
		String url = "jdbc:mysql://localhost/ict";
		
		// 접속 주소, 계정, 비밀번호를 이용해 접속 요청
		con = DriverManager.getConnection(url, "root", "choi94w08o26");
	}catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패");
	}catch(SQLException e){
		System.out.println("에러: " + e);
	}finally{
		try{
			if(con != null && !con.isClosed()){
				con.close();
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>