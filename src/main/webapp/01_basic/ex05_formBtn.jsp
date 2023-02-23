<%@page import="java.util.Random"%>
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
	Random ran = new Random();
	int rnum = ran.nextInt(10)+1;
	%>
	
	<h2>홀짝 게임</h2>
	
	<form action="ex05_formBtnpro.jsp" method="get">
	
	홀수 1 입력 짝수면 2입력	<br>
	<input type="hidden" name="rnum" value=<%= rnum %>/>
	<input type="number" name="result"/>
	
	<input type="submit" value="입력완료"/>
	<input type="button" value="전송" onclick="goNextPage(<%= rnum %>)"/>
	
	</form>
	
	<script>
	function goNextPage() {
		let value = document.querySelector("input[name='result']").value;
		location.href="ex05_formBtnpro2.jsp?rnum="+rnum+"&result"+value;
	}
	
	
	</script>
</body>
</html>