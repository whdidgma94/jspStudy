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
	int idx = (int)session.getAttribute("idx");	
	String pw = request.getParameter("pw");
	if(MemberDAO.getInstance().checkPw(pw, idx)){
		MemberDAO.getInstance().deleteMember(idx);
		session.removeAttribute("idx");
		%>
		<script>
		alert("탈퇴 완료.");
		location.href="main.jsp";
		</script>
	<%}else{%>
	<script>
		alert("비밀번호가 틀렸습니다.");
		location.href="main.jsp";
	</script>
	<%}%>
</body>
</html>