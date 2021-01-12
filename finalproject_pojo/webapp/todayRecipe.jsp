<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/common/bootstrap_common.jsp"%>
<title>오늘 뭐 먹지?</title>
<script type="text/javascript">
function today1(){
    $.ajax({
      type : "GET",
      url : "today1.jsp",
      dataType : "text",
      error : function() {
        alert('통신실패!!');
      },
      success : function(data) {
        $('#tb_ajax').html(data);
      }

    });
  }

function today2(){
    $.ajax({
      type : "GET",
      url : "today2.jsp",
      dataType : "text",
      error : function() {
        alert('통신실패!!');
      },
      success : function(data) {
        $('#tb_ajax').html(data);
      }

    });
  }
function today3(){
    $.ajax({
      type : "GET",
      url : "today3.jsp",
      dataType : "text",
      error : function() {
        alert('통신실패!!');
      },
      success : function(data) {
        $('#tb_ajax').html(data);
      }

    });
  }
function today4(){
    $.ajax({
      type : "GET",
      url : "today4.jsp",
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
</head>
<body>
	<table align="center" style="width: 70%; height: 100%;">
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
				<%@ include file="/navbar.jsp"%>
			</td>
		</tr>
		<!-- END NavBar -->
	<!-- Page Content -->
	<tr>
		<td style="width: 19%; vertical-align: top;">
			<div class="btn-group-vertical" style="width: 100%; margin-top: 12%">
				 <button type="button" class="btn btn-outline-dark" style="text-align: left;" onclick="today1()">한식</button>
				 <button type="button" class="btn btn-outline-dark" style="text-align: left;" onclick="today2()">중식</button>
				 <button type="button" class="btn btn-outline-dark" style="text-align: left;" onclick="today3()">일식</button>
				 <button type="button" class="btn btn-outline-dark" style="text-align: left;" onclick="today4()">양식</button>
			</div>
		</td>
		<td style="width: 70%; padding-top:3% ;padding-left: 5%; padding-right: 5%">
			<div id="tb_ajax">
				<%@ include file="/today1.jsp" %>
			</div>
		</td>
	</tr>
		<!-- footer -->
	<tr>
		<td colspan="2" style="width: 100%;">
			<%@ include file="/footer.jsp" %>
		</td>
	</tr>
		<!-- END footer -->
	</table>
</body>
</html>