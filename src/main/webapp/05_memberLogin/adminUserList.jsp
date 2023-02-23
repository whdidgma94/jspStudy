<%@page import="Member.MemberVO"%>
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
	<form action="adminUserDelete.jsp" method="get">
	<table border="1">
	<tr>
	<td>이름</td><td>아이디</td><td>비밀번호</td><td>성별</td><td>삭제</td>
	</tr>
	<%
	for(MemberVO member:MemberDAO.getInstance().getAllMemberList()){
		if(!member.getId().equals("admin")){
	%>
	<tr>
	<td><%=member.getName()%></td>
	<td><%=member.getId()%></td>
	<td><%=member.getPw()%></td>
	<td><%=member.getGender()%></td>
	<td><button name="id" value="<%=member.getId()%>">삭제</button></td>
	</tr>
	<%
		}
	}
	%>
	</table>
	</form>
</body>
</html>