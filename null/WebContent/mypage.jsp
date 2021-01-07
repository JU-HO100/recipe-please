<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/common/bootstrap_common.jsp"%>
<<<<<<< HEAD
<script type="text/javascript">
function memberUpdateContent(){
    $.ajax({
      type : "GET",
      url : "./memberUpdateContent.jsp",
      dataType : "text",
      error : function() {
        alert('통신실패!!');
      },
      success : function(data) {
        $('#tb_ajax').html(data);
      }

    });
  }
function cookingClassCheckContent(){
    $.ajax({
      type : "GET",
      url : "./cookingClassCheckContent.jsp",
      dataType : "text",
      error : function() {
        alert('통신실패!!');
      },
      success : function(data) {
        $('#tb_ajax').html(data);
      }

    });
  }
function joinChefContent(){
    $.ajax({
      type : "GET",
      url : "./joinChefContent.jsp",
      dataType : "text",
      error : function() {
        alert('통신실패!!');
      },
      success : function(data) {
        $('#tb_ajax').html(data);
      }

    });
  }
function memberOutContent(){
    $.ajax({
      type : "GET",
      url : "./memberOutContent.jsp",
      dataType : "text",
      error : function() {
        alert('통신실패!!');
      },
      success : function(data) {
        $('#tb_ajax').html(data);
      }

    });
  }
</script>
=======
>>>>>>> 5a6972c0b348fbc5b3e746362c4f59b92d6e482a
<title>오늘 뭐 먹지?</title>
</head>
<body>
	<table align="center" style="width: 70% ; height: 100%;">
			<!-- Header -->
		<tr>
			<td style="width: 100%; padding-top: 2%; padding-bottom: 2%;">
				<%@ include file="./loginOkHeader.jsp"%>
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
<<<<<<< HEAD
			<td style="padding-top: 4%" id="tb_ajax">
				<%@ include file="./memberUpdateContent.jsp" %>
=======
			<td style="padding-top: 4%">
				<%@ include file="./mypageContent.jsp" %>
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