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
			<div class="w3-container w3-pale-green">글쓰기</div>
			<div class="w3-container">
				<form action="/www/board/writeBoard" method="post">
					<table class="w3-table-all w3-centered    ">
						<tr class="">
							<th>이름</th>
							<td><input type="text" name="name"></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input type="text" name="title"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea name="content" rows="10" cols="40"></textarea></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="password" name="password"></td>
						</tr>
						<tr>
							<th>비밀번호 확인</th>
							<td><input type="password"></td>
						</tr>
						<tr>
							<td>업로드</td>
							<td></td>
						</tr>
					</table>
					<div class="w3-bar ">
						<input class=" w3-bar-item w3-btn " type="submit" value="입력"><input
							class=" w3-bar-item w3-btn " type="reset" value="취소">
					</div>
				</form>
			</div>
			<div class="w3-container w3-pale-green">
				<a href="/www/board/boardList" class=" w3-bar-item w3-btn ">목록보기</a>
			</div>
		</div>
</body>
</html>