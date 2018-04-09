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
			<div class="w3-container w3-pale-green">시험중</div>
			<div class="w3-container w3-center">
				<div>${vo2.getPageNumber() }번문제</div>
				<div>문제 : ${vo.getQuestion() }</div>
				<div>답 : ${vo.getCorrect() }</div>
				<form action="/www/test/marking" method="POST">
					<p>
						<input type="radio" class="w3-radio" name="mark" value="1"
							checked="checked">1 ${vo.getEx1() }
					</p>
					<p>
						<input type="radio" class="w3-radio" name="mark" value="2">2
						${vo.getEx2() }
					</p>
					<p>
						<input type="radio" class="w3-radio" name="mark" value="3">3
						${vo.getEx3() }
					</p>
					<p>
						<input type="radio" class="w3-radio" name="mark" value="4">4
						${vo.getEx4() }
					</p>
					<input type="submit" class="w3-btn w3-pale-yellow" value="다음 문제">
				</form>
			</div>
			<div class="w3-container w3-pale-green">footer</div>
		</div>
	</div>
</body>
</html>