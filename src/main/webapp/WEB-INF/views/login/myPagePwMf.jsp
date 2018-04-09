<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<%@include file="/header.jsp"%>
	<%@include file="/sidebar.jsp"%>
	<div class="w3-container w3-padding" style="margin-left: 25%">
		<div class="w3-card w3-round">
			<div class="w3-container w3-pale-green">비밀번호 변경</div>
			<div class="w3-container">
				<table align="center" border="2" height="100" cellspacing="0"
					cellpadding="3" bordercolor="#999999"
					style="border-collapse: collapse;" rules="rows" frame="hsides">

					<th><b> 비밀번호 변경 </b></th>
					<tr>
						<td>현재 비밀번호: <input type="password" id="pw" name="pw"></td>
					</tr>
					<tr>
						<td>비밀번호 변경: <input type="password" id="pw1" name="pw1"></td>
					</tr>
					<tr>
						<td>비밀번호 확인: <input type="password" id="pw2" name="pw2"></td>
					</tr>
				</table>
			</div>
			<div class="w3-container w3-pale-green">
				<input type="submit" value="수정" onclick="chk()">
				<!-- 지금 비번과 맞는지, 수정할 두 비번이 맞는지, 수정버튼을 누르면 알림창이 뜨고 확인버튼을 누르면 마이페이지로 이동 -->
				<input type="reset" value="취소" onclick="함수명()"> <a
					href="/www/login/myPageOne"><input type="button" value="뒤로"></a>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		//현재비밀번호가 같은지 확인 <이거 if(dao.userCheck(member.getId(), member.getPassword())!=1){ 이런 스크립트릿 써야하는거아님?
		//비밀번호 변경과 확인이 같은지 확인

		function chk() {
			var pw = document.getElementById('pw');
			var pw1 = document.getElementById('pw1');
			var pw2 = document.getElementById('pw2');

			if (!pw.value) {
				alert("현재 비밀번호를 입력하세요");
				pw.focus();
				return false;
			}
			if (pw1.value != pw2.value) {
				alert("변경 비밀번호와 확인 비밀번호가 다릅니다.");
				pw1.focus();
				return false;
			}
			return true;
		}
		//수정을 누르면 변경되었다는 알림창 띄우기 <이것도 수정한 다음에 db를 수정해야 하니까 그냥 확인하는거 말고 다른게 들어가야할듯
	</script>
</body>
</html>