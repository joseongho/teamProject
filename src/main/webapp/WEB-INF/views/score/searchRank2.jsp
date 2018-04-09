<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<%@include file="/header.jsp"%>
	<%@include file="/sidebar.jsp"%>
	<div class="w3-container w3-padding" style="margin-left: 25%">
		<div class="w3-card w3-round">
			<div class="w3-container w3-pale-green">점수 조회</div>
			<div class="w3-container"><p>
				<b class="w3-opacity"> 아이디 : ${ vo.getId()} </b>
			</p>

			<p>
				<b class="w3-opacity"> 점수 : ${ vo.getScore()} </b>
			<p></div>
			<div class="w3-container w3-pale-green">123</div>
		</div>
	</div>
	
</body>
</html>