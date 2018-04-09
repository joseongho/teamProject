<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Home</title>
</head>
<body onLoad="openPop()">
	<%@include file="/header.jsp"%>
	<%@include file="/sidebar.jsp"%>
	<div class="w3-container w3-padding" style="margin-left: 25%">
		<div class="w3-card w3-round">
			<div class="w3-container w3-pale-green">123</div>
			<div class="w3-container">
				<table class="w3-table">
					<caption>January 2018</caption>
					<thead>
						<tr>
							<th scope="col" title="Monday">M</th>
							<th scope="col" title="Tuesday">T</th>
							<th scope="col" title="Wednesday">W</th>
							<th scope="col" title="Thursday">T</th>
							<th scope="col" title="Friday">F</th>
							<th scope="col" title="Saturday">S</th>
							<th scope="col" title="Sunday">S</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="4"><span>&nbsp;</span></td>
							<td><span>1</span></td>
							<td><span>2</span></td>
							<td><span>3</span></td>
						</tr>
						<tr>
							<td><span>4</span></td>
							<td><span>5</span></td>
							<td><a href="#">6</a></td>
							<td><span>7</span></td>
							<td><span>8</span></td>
							<td><span>9</span></td>
							<td><a href="#">10</a></td>
						</tr>
						<tr>
							<td><span>11</span></td>
							<td><span>12</span></td>
							<td><span>13</span></td>
							<td><a href="#">14</a></td>
							<td><span>15</span></td>
							<td><span>16</span></td>
							<td><span>17</span></td>
						</tr>
						<tr>
							<td><span>18</span></td>
							<td><span>19</span></td>
							<td><span>20</span></td>
							<td><span>21</span></td>
							<td><span>22</span></td>
							<td><a href="#">23</a></td>
							<td><span>24</span></td>
						</tr>
						<tr>
							<td><a href="#">25</a></td>
							<td><span>26</span></td>
							<td><span>27</span></td>
							<td><span>28</span></td>
							<td colspan="3"><span>&nbsp;</span></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="w3-container w3-pale-green">123</div>
		</div>
	</div>
	<script type="text/javascript">
		function openPop() {
			if (getCookie('a') != 1) {
				window
						.open(
								'notice',
								'안내',
								'left=550, top=5, width=442, height=420, status=no, scrollbars=no, resizeable=no');
			}
		}
		function getCookie(name) {
			var nameOfCookie = name + "=";
			var x = 0;
			while (x <= document.cookie.length) {
				var y = (x + nameOfCookie.length);
				if (document.cookie.substring(x, y) == nameOfCookie) {
					if ((endOfCookie = document.cookie.indexOf(";", y)) == -1)
						endOfCookie = document.cookie.length;
					return unescape(document.cookie.substring(y, endOfCookie));
				}
				x = document.cookie.indexOf(" ", x) + 1;
				if (x == 0)
					break;
			}
			return "";
		}

		function setCookie(name, value, expiredays) { //팝업창 재노출을 위한 코드
			var todayDate = new Date();
			todayDate.setDate(todayDate.getDate() + expiredays);
			document.cookie = name + "=" + escape(value) + "; path=/; expires="
					+ todayDate.toGMTString() + ";"
		}
	</script>
</body>
</html>
