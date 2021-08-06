<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*"%>
<%@ page import="kr.co.ictedu.P2UsersDAO"%>
<%@ page import="kr.co.ictedu.P1UsersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loginOk = (String)session.getAttribute("id_session");
	if(loginOk == null){
		response.sendRedirect("P03User_login_form.jsp");
	}
%>
<%
	// DB에서 전체 회원 데이터를 조회
	// 1. getAllUsers()메서드를 DAO로 호출
	P1UsersVO user = new P1UsersVO();
	P2UsersDAO dao = P2UsersDAO.getInstance();
	
	ArrayList<P1UsersVO> userList = new ArrayList<>(dao.getAllUsers());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 회원 목록</title>
</head>
<body>
	<h1>전체 회원 목록</h1>
	<table border = "1">
		<thead>
			<tr>
				<th>회원 아이디</th>
				<th>회원 이름</th>
				<th>회원 이메일</th>
			</tr>
		</thead>
		<tbody>
			<%-- userList는 VO의 집합이고 P1UsersVO를 하나씩 순차적으로 출력해야하므로,
				  향상된 for문을 사용 --%>
				  <%-- 이부분 잘 이해 안됨 - P2UsersDAO부터 다시 보기 --%>
			<%--
				for(P1UsersVO userlist : userList){
					out.println("<tr>");
					out.println("<td>" + userlist.getUid() + "</td>");
					out.println("<td>" + userlist.getUname() + "</td>");
					out.println("<td>" + userlist.getEmail() + "</td>");
					out.println("</tr>");
				}
			--%>
			<%-- JSTL을 이용해서 작성 --%>
			<%-- 반복문: for each, items에 향상된 for문의 우측요소, var에 좌측요소를 삽입 --%>
			<c:forEach var = "user" items = "${userList}">
				<tr>
					<td>${user.uid}</td>
					<td>${user.uname}</td>
					<td>${user.email}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>