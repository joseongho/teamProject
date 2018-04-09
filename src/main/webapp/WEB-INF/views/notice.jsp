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
	<div class="w3-container">
		<div class="w3-card w3-pale-green w3-padding w3-center w3-margin-top w3-round">
			<h3 class="w3-opacity">
				<b>팝업창</b>
			</h3>
		</div>
		<form>
			<button class="w3-btn w3-pale-green w3-margin-top" onclick="setCookie('a',1,7)">close-1week_diasable</button>
			<button class="w3-btn w3-pale-green w3-margin-top" onclick="javascript:self.close()">close-default</button>
		</form>
	</div>
	<script type="text/javascript">
		function setCookie(name, value, expiredays) {
			var todayDate = new Date();
			todayDate.setDate(todayDate.getDate() + expiredays);
			document.cookie = name + "=" + escape(value) + "; path=/; expires="
					+ todayDate.toGMTString() + ";"
			self.close()
		}
	</script>
</body>
</html>