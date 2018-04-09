<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<div class="w3-container w3-pale-green">
				<h1>글목록</h1>
			</div>
			<div class="w3-container">
				<table class="w3-table-all w3-centered">
					<tr class="w3-pale-yellow">
						<th>번호</th>
						<th>이름</th>
						<th>제목</th>
						<th>날짜</th>
						<th>조회수</th>
					</tr>
					<c:forEach var="i" begin="0" end="${list.size()-1}">
						<tr>
							<td>${list.get(i).getNum()}</td>
							<td>${list.get(i).getName()}</td>
							<td><a
								href="/www/board/readBoard?num=${list.get(i).getNum()}">${list.get(i).getTitle()}</a></td>
							<td>${list.get(i).getBoardDate()}</td>
							<td>${list.get(i).getHit()}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="w3-container w3-pale-green">
				<div class="w3-bar">
					<a class="w3-margin w3-bar-item w3-btn "
						href="/www/board/writeForm">글쓰기</a><a
						class="w3-margin w3-bar-item w3-btn " href="/www/board/writeForm">Previous
						Page</a><a class="w3-margin w3-bar-item w3-btn "
						href="/www/board/writeForm">Next Page</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>