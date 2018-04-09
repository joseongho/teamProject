<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/header.jsp"%>
	<%@include file="/sidebar.jsp"%>
	<div class="w3-container w3-padding" style="margin-left: 25%">
		<div class="w3-card w3-round">
			<div class="w3-container w3-pale-green">글삭제</div>
			<div class="w3-container">
				<form action="/www/board/deleteBoard2?num=${vo.getNum() }"
					method="post">
					<h3>비밀번호를 입력하여 주세요.</h3>
					<input type="password" name="password"> <input
						type="submit" class="w3-btn w3-pale-green" value="확인">
				</form>
			</div>
			<div class="w3-container w3-pale-green">
				<a href="list" class="w3-btn"> 목록 </a> <a
					href="javascript:history.back();" class="w3-btn">이전으로 </a>
			</div>
		</div>
	</div>
</body>
</html>