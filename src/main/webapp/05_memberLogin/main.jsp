<%@page import="Member.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Member.MemberDAO"%>
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
	Object idx = session.getAttribute("idx");
	ArrayList<MemberVO> list = MemberDAO.getInstance().getAllMemberList();
	%>
	<h1>메인페이지</h1>
	<table border="1">
	<tr>
	<td><a href="boardMain.jsp">게시판</a></td>
	<%if(idx==null){%>
		<td><a href="loginForm.jsp">로그인</a></td>
		<td><a href="joinForm.jsp">회원가입</a></td>
	<%}else{%>
		<td><a href="logoutPro.jsp">로그아웃</a></td>
		<td><a href="updateForm.jsp">회원정보수정</a></td>
		<td><a href="deleteForm.jsp">회원탈퇴</a></td>
	<%}%>
	</tr>
	</table>
</body>
</html>