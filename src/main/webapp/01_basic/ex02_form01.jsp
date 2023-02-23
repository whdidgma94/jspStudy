<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="ex03_form02.jsp" method="post">
	<table border="1">
	<tr>
		<td>첫번째 수 : </td>
		<td><input type="text" name="su1" /></td>
	</tr>
	<tr>
		<td>첫번째 수 : </td>
		<td><input type="text" name="su2" /></td>
	</tr>
	<tr>
	<td colspan="2"><button>전송1</button></td>
	</tr>
	<tr>
	<td colspan="2"><input type="button" value="전송2"></td>
	</tr>
	<tr>
	<td colspan="2"><input type="submit" value="전송3"></td>
	</tr>
	<tr>
	<td colspan="2"><input type="reset" value="전송4"></td>
	</tr>
	</table>
	</form>
</body>
</html>