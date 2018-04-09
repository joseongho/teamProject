<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
</head>
<body>
	<div class="w3-container">
		<div class="w3-container w3-pale-green w3-padding w3-card ">
			<div>
				<h3>
					<b class="w3-opacity">문제풀기 사이트123</b>
				</h3>
			</div>
			<div class="w3-container w3-pale-yellow">
				<div class="w3-bar">
					<a href="/www" class="w3-bar-item w3-button">홈</a>
					<div class="w3-dropdown-hover ">
						<button class="w3-button">시험</button>
						<div class="w3-dropdown-content w3-bar-block w3-card">
							<a href="/www/test/testProcess" class="w3-bar-item w3-button">시험
								시작</a> <a href="/www/test/writeTest" class="w3-bar-item w3-button">문제
								입력</a> <a href="/www/test/testList" class="w3-bar-item w3-button">문제
								목록</a>
						</div>
					</div>

					<div class="w3-dropdown-hover">
						<button class="w3-button">순위</button>
						<div class="w3-dropdown-content w3-bar-block w3-card">
							<a href="/www/score/showRank" class="w3-bar-item w3-button">상위
								순위 보기</a> <a href="/www/score/searchRank"
								class="w3-bar-item w3-button">점수 보기</a>
						</div>
					</div>

					<div class="w3-dropdown-hover">
						<button class="w3-button">나의 정보</button>
						<div class="w3-dropdown-content w3-bar-block w3-card">
							<a href="/www/login/myPageOne" class="w3-bar-item w3-button">나의
								정보</a> <a href="/www/login/myPagePwMf" class="w3-bar-item w3-button">비밀번호
								변경</a>
						</div>
					</div>

					<div class="w3-dropdown-hover">
						<button class="w3-button">게시판</button>
						<div class="w3-dropdown-content w3-bar-block w3-card">
							<a href="/www/board/boardList" class="w3-bar-item w3-button">게시판
								목록</a> <a href="/www/board/writeForm" class="w3-bar-item w3-button">글쓰기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>