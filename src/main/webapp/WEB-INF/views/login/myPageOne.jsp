<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<title>나의정보</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<%@include file="/header.jsp"%>
	<%@include file="/sidebar.jsp"%>
	<div class="w3-container w3-padding" style="margin-left: 25%">
		<div class="w3-card w3-round">
			<div class="w3-container w3-pale-green">나의 정보</div>
			<div class="w3-container">
				<table align="center" border="2" height="100" cellspacing="0"
					cellpadding="3" bordercolor="#999999"
					style="border-collapse: collapse;" rules="rows" frame="hsides">

					<th colspan="2" align="left">나의 정보</th>
					<tr>
						<td align="left">아이디</td>
						<td id="id"></td>
					</tr>
					<tr>
						<td align="left">비밀번호</td>
						<td><a href="/www/login/myPagePwMf"><input type="button"
								value="변경하기" padding-left="20px" name="button"></a></td>
					</tr>
				</table>
				<table align="center" border="2" height="100" cellspacing="0"
					cellpadding="3" bordercolor="#999999"
					style="border-collapse: collapse;" rules="rows" frame="hsides">

					<th class="mPh" colspan="6" align="left">점수</th>

					<tr align="center">
						<td>과목A</td>
						<td>점 ( 위)</td>
						<td>과목B</td>
						<td>점 ( 위)</td>
						<td>과목C</td>
						<td>점 ( 위)</td>
					</tr>
				</table>
			</div>
			<div class="w3-container w3-pale-green">
				<a href="/www"><input type="submit" value="메인으로" align="center"></a>
				<a href=""><input type="button" value="회원탈퇴" align="right"
					name="button"></a>
			</div>
		</div>
	</div>

	<script>
		function getId() {
			var cookie = document.cookie;
			var id = cookie.valueOf();
			document.getElementById('id').innerHTML = id;
		}
		window.onload = getId();
	</script>
</body>
</html>