<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String name = (String)session.getAttribute("name");
	String id = (String)session.getAttribute("id");
	String pw = (String)session.getAttribute("pw");
	%>
	<h1> 홈화면 </h1>
	<a href="join.jsp">회원가입</a>
	<a href="login.jsp">로그인</a>
	
</body>
</html>