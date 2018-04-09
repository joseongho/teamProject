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
			<div class="w3-container w3-pale-green">순위찾기</div>
			<div class="w3-container">
				<form action="/www/score/searchRank2" method="post">
					<p>아이디를 입력하세요</p>
					<input class="w3-input" type="text" maxlength="10" name="id" /> <input
						class="w3-btn  " type="submit" />
				</form>
			</div>
			<div class="w3-container w3-pale-green">123</div>
		</div>
	</div>
</body>
</html>