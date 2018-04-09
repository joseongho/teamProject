<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<div class="w3-container w3-pale-green">문제목록</div>
			<div class="w3-container">
				<table class="w3-table-all w3-centered   ">
					<tr class="w3-pale-yellow">
						<th>문제 번호</th>
						<th>문제</th>
						<th>정답</th>
					</tr>
					<c:forEach var="i" begin="0" end="${list.size()-1}">
						<tr>
							<td>${list.get(i).getQno()}</td>
							<td>${list.get(i).getQuestion()}</td>
							<td>${list.get(i).getCorrect()}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="w3-container w3-pale-green">123</div>
		</div>
	</div>
</body>
</html>