<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/common/bootstrap_common.jsp"%>
<title>오늘 뭐 먹지?</title>
<<<<<<< HEAD
<script type="text/javascript">
function recipeControl() {
	location.href="./adminPage.jsp";
}
function cookingClassControl() {
	location.href="./cookingClassControl.jsp";
}
function memberControl() {
	location.href="./memberControl.jsp";
}
</script>
=======
>>>>>>> 5a6972c0b348fbc5b3e746362c4f59b92d6e482a
</head>
<body>
	<table align="center" style="width: 70% ; height: 100%;">
			<!-- Header -->
		<tr>
			<td style="width: 100%; padding-top: 2%; padding-bottom: 2%;">
				<%@ include file="./adminHeader.jsp"%>
			</td>
		</tr>
			<!-- END Header -->
			
			<!-- NavBar -->
		<tr>
			<td style="width: 100%;">
				<%@ include file="./navbar.jsp" %>
			</td>
		</tr>
			<!-- END NavBar -->
			
			<!-- END Mypage -->
		<tr>
			<td style="padding-top: 4%">
<<<<<<< HEAD
				<%@ include file="./recipeControlContent.jsp" %>
=======
				<%@ include file="./adminContent.jsp" %>
>>>>>>> 5a6972c0b348fbc5b3e746362c4f59b92d6e482a
			</td>
		</tr>
			<!-- END Mypage -->
			
			<!-- Footer -->
		<tr>
			<td>
				<%@ include file="./footer.jsp" %>
			</td>
		</tr>
			<!-- End Footer -->
	</table>
</body>
</html>