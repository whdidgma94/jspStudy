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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	int idx = (int)session.getAttribute("idx");
	if(id.equals(MemberDAO.getInstance().getAMember(idx).getId())&&MemberDAO.getInstance().checkPw(pw, idx)){
		MemberDAO.getInstance().getAMember(idx).setName(name);
		MemberDAO.getInstance().getAMember(idx).setGender(gender);
	%>
		<script>
		alert("회원정보 수정 완료.");
		location.href="main.jsp";
		</script>
	<%}else{%>
		<script>
		alert("아이디 혹은 비밀번호가 틀렸습니다.");
		location.href="updateForm.jsp";
		</script>
	<%}%>
</body>
</html>