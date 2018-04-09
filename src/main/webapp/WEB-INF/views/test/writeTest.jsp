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
			<div class="w3-container w3-pale-green">문제입력</div>
			<div class="w3-container">
				<form action="/www/test/insertTest" method="post"
					class="w3-container ">
					<label>문제</label> <input type="text" name="question"
						class="w3-input" /> <label>정답</label>
					<p>
						1 <input type="radio" name="correct" value="1" checked><input
							type="text" name="ex1" class="w3-input" />
					</p>
					<p>
						2 <input type="radio" name="correct" value="2"><input
							type="text" name="ex2" class="w3-input" />
					</p>
					<p>
						3 <input type="radio" name="correct" value="3"><input
							type="text" name="ex3" class="w3-input" />
					</p>
					<p>
						4 <input type="radio" name="correct" value="4"><input
							type="text" name="ex4" class="w3-input" />
					</p>
					<input type="submit" class="w3-btn  " />
				</form>
			</div>
			<div class="w3-container w3-pale-green">123</div>
		</div>
	</div>
</body>
</html>