<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/header.jsp"%>
	<%@include file="/sidebar.jsp"%>
	<div class="w3-container w3-padding" style="margin-left: 25%">
		<div class="w3-card w3-round">
			<div class="w3-container w3-pale-green">글보기</div>
			<div class="w3-container">
				<table class="w3-table-all w3-centered    ">
					<tr>
						<th>이름</th>
						<td>${vo.getName()}</td>
					</tr>
					<tr>
						<th>제목</th>
						<td>${vo.getTitle()}</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>${vo.getContent()}</td>
					</tr>
					<tr>
					</tr>
				</table>
			</div>
			<div class="w3-container w3-pale-green">
				<div class="w3-bar ">
					<a class=" w3-bar-item w3-btn ">수정</a><a
						href="/www/board/boardList" class=" w3-bar-item w3-btn">목록</a> <a
						class=" w3-bar-item w3-btn"
						href="/www/board/deleteBoard?num=${vo.getNum() }">삭제</a> <a
						href="/www/board/addFavorcnt?num=${vo.getNum() }"
						class=" w3-bar-item w3-btn">좋아요 ${vo.getFavorcnt()}</a><a
						href="/www/board/addHatecnt?num=${vo.getNum() }"
						class=" w3-bar-item w3-btn">싫어요 ${vo.getHatecnt()}</a>
				</div>
			</div>
		</div>


		<div class="w3-container" style="margin-left: 25%"></div>
	</div>
</body>
</html>