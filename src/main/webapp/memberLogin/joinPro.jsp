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
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	if(MemberDAO.getInstance().checkId(id)!=-1){%>
	<script>
		alert("이미 존재하는 아이디 입니다.");
		location.href="joinForm.jsp";
	</script>
	<%
	}else{
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		MemberDAO.getInstance().addMember(id, pw, name, age, email, phone, gender);
 	%>
 	<script>
		alert("<%= name %> 님 회원가입 완료");
		location.href="main.jsp";
	</script>
	<%
	}
	%>
</body>
</html>