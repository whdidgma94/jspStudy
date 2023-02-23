<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form action="joinPro.jsp" method="post">
	이름 <br> <input type="text" name="name"><br>
	아이디 <br> <input type="text" name="id"> <br>
	비밀번호 <br> <input type="text" name="pw"> <br>
	<input type="radio" name = "gender" value="남자">남자
	<input type="radio" name = "gender" value="여자">여자 <br>
	<button>가입하기</button>
	</form>
</body>
</html>