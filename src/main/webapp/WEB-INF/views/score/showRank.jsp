<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<div class="w3-container w3-pale-green">점수 상위 10위</div>
			<div class="w3-container">
				<table class="w3-table-all w3-centered   ">
					<tr class="">
						<th>순위</th>
						<th>아이디</th>
						<th>점수</th>
					</tr>
					<c:forEach var="i" begin="0" end="${list.size()-1 }">
						<tr>
							<td id="ranking">${i+1}위</td>
							<td id="id">${list.get(i).getId()}</td>
							<td id="score">${list.get(i).getScore()}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="w3-container w3-pale-green">footer</div>
		</div>
	</div>

</body>
</html>