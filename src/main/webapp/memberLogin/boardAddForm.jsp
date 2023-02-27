<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<body>
	<form action="boardAddPro.jsp" method="post">
	<table class="table">
	<tr><td>제목 <input class="col-12" type="text" name="title"></td></tr>
	<tr><td>내용  <textarea class="col-12" rows="10" cols="20" name="content"></textarea></td></tr>
	<tr><td><button>작성하기</button></td></tr>
	</table>
	</form>
</body>
</html>