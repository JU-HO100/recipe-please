<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘 뭐 먹지?</title>
<%@ include file="/common/bootstrap_common.jsp"%>
<script type="text/javascript">
	function recipeView(){
  		$('#dlg_recipeDetail').dialog({
  		    title: '__요리',
  		    width: 800,
  		    height: 800,
  		    closed: true,
  		    cache: false,
  		    href: './recipeDetail.jsp',//나중에 쿼리스트링으로 값 보내기
  		    modal: true
  		});  		
  		$('#dlg_recipeDetail').dialog('open');
  	}
</script>
</head>
<body>
	<table align="center" style="width: 70% ; height: 100%;">
			<!-- Header -->
		<tr>
			<td style="width: 100%; padding-top: 2%; padding-bottom: 2%;">
				<%@ include file="./header.jsp"%>
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
			
			<!-- Content -->
		<tr>
			<td style="padding-top: 4%">
				<%@ include file="./recipeRankingContent.jsp" %>
			</td>
		</tr>			
			<!-- Content -->
			
			<!-- Footer -->
		<tr>
			<td style="padding-top: 8%">
				<%@ include file="./footer.jsp" %>
			</td>
		</tr>
			<!-- End Footer -->
	</table>
</body>
</html>