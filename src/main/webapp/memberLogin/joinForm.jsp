<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<body>
	<form action="joinPro.jsp" method="post">
	<table border="1">
		<tr><td>아이디</td><td><input type="text" name="id"></td></tr>
		<tr><td>비밀번호</td><td><input type="text" name="pw"></td></tr>
		<tr><td>이름</td><td><input type="text" name="name"></td></tr>
		<tr><td>나이</td><td><input type="number" name="age"></td></tr>
		<tr><td>이메일</td><td><input type="text" name="email"></td></tr>
		<tr><td>전화번호</td><td><input type="text" name="phone"></td></tr>
		<tr>
		<td colspan="2">
			<input type="radio" name = "gender" value="남자" checked="checked">남자
			<input type="radio" name = "gender" value="여자">여자
		</td>
		</tr>
	<tr><td colspan="2"><button>가입하기</button></td></tr>
	</table>
	</form>
</body>
</html>