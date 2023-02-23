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
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	boolean b1 = true;
	boolean b2 = true;
	for(int i = 0 ; i < num1.length();i++){
		if(!Character.isDigit(num1.charAt(i))){
			b1=false;
		}
	}
	for(int i = 0 ; i < num2.length();i++){
		if(!Character.isDigit(num2.charAt(i))){
			b2=false;
		}
	}
	int n1 = 0;
	int n2 = 0;
	if(b1&&b2){ 
		n1=Integer.parseInt(num1);
		n2=Integer.parseInt(num2);
		if(n1==n2){%>
			<h1>두 수가 같습니다</h1>
		<%}
		else if(n1>n2){%>
			<h1>숫자1이 더 큽니다</h1>
		<%}
		else {%>
			<h1>숫자2이 더 큽니다</h1>
		<%}
	}else{%>
	<h1>숫자가 아닌 값이 있습니다.</h1>
	<%}%>
</body>
</html>