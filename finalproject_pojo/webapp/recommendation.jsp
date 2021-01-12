<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table align="center" style="width: 70% ; height: 100%;">
			<!-- Header -->
		<tr>
			<td colspan="2" style="width: 100%; padding-top: 2%; padding-bottom: 2%;">
				<%@ include file="/header.jsp"%>
			</td>
		</tr>
			<!-- END Header -->
			
			<!-- NavBar -->
		<tr>
			<td colspan="2" style="width: 100%;">
				<%@ include file="/navbar.jsp" %>
			</td>
		</tr>
			<!-- END NavBar -->
		<tr>
			<td>
				<%@ include file="/recommendationContent.jsp" %>
			</td>		
		</tr>
			<!-- Footer -->
		<tr>
			<td colspan="2" style="padding-top: 8%">
				<%@ include file="/footer.jsp" %>
			</td>
		</tr>
			<!-- End Footer -->
	</table>
</body>
</html>