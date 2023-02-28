<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<body>
	<form action="<%=request.getContextPath()%>/login.do" method="post">
	<table border="1">
		<tr><td>아이디</td><td><input type="text" name="id"></td></tr>
		<tr><td>비밀번호</td><td><input type="text" name="pw"></td></tr>
		<tr><td colspan="2"><button>로그인</button></td></tr>
	</table>
	</form>
</body>
</html>