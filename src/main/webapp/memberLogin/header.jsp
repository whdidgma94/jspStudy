<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부트스트랩</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="./style.css">
</head>
<body>
<header>
<div class="nav justify-content-between">
	<div class="col-2 py-3"> 회원목록 </div>
	<%if(session.getAttribute("idx")==null) {%>
	<div class="col-2 py-3" onclick="location.href='joinForm.jsp'"> 회원가입 </div>
	<div class="col-2 py-3" onclick="location.href='loginForm.jsp'"> 로그인 </div>
	<%}else{ %>
		<div class="col-2 py-3" onclick="location.href='logoutPro.jsp'"> 로그아웃 </div>
	<%} %>
	<div class="col-2 py-3" onclick="location.href='boardMain.jsp'"> 게시판 </div>
</div>
</header>
