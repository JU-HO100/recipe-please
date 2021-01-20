<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String MSG = (String)request.getAttribute("msg"); %>
<% String id = (String)session.getAttribute("id"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/common/bootstrap_common.jsp"%>
<title>오늘 뭐 먹지?</title>
<script type="text/javascript" src="<%=path.toString() %>js/cookclass.js"></script>
</head>
<body>
	<%if(id!=null){ %>
	<table align="center" style="width: 70% ; height: 100%;">
			<!-- Header -->
		<tr>
			<%if(session.getAttribute("nick")!=null){ %>
			<td colspan="2" style="width: 100%; padding-top: 2%; padding-bottom: 2%;">
				<%@ include file="/loginOkHeader.jsp"%>
			</td>
			<%}else{ %>
			<td colspan="2" style="width: 100%; padding-top: 2%; padding-bottom: 2%;">
				<%@ include file="/header.jsp"%>
			</td>
			<%} %>
		</tr>
			<!-- END Header -->
			
			<!-- NavBar -->
		<tr>
			<td colspan="2" style="width: 100%;">
				<%@ include file="/navbar.jsp" %>
			</td>
		</tr>
			<!-- END NavBar -->
			
			<!-- Content -->
		<tr>
			<td style="width: 19%; vertical-align: top;">
				<div class="btn-group-vertical" style="width: 100%; margin-top: 12%">
					 <button type="button" class="btn btn-outline-dark" style="text-align: left;" onclick="reload()">쿠킹 클래스 신청</button>
					 <button type="button" class="btn btn-outline-dark" style="text-align: left;" onclick="location.href='/member/checkChef.np?m_id=<%=id%>'">쿠킹 클래스 등록</button>
				</div>
			</td>
			<td style="width: 70%; padding-top:3% ;padding-left: 5%; padding-right: 5%;">
				<table id="cookclass"  class="table" style="width: 100%;">
					<tr>
						<td style="border: none;">
							<h1 style="font-family: 'Nanum Pen Script', cursive; padding-left: 10px;">쿠킹클래스 신청</h1>
							<script type="text/javascript">
								var locFor = {};
								      $.ajax({
									     url : "/cookclass/showClass.np?m_id="+"<%=id%>"
								         ,success : function (result) { 
								        	 $.each(result, function (index, item) {
								        	       //table에 출력   
								        	      if(item.C_COOK != null){
									        	      var str = '<table style="width:100%; margin-bottom:5%"><tr><td style="width:50%"> 제목 : '+item.C_COOK+'</td>';
									        	      str += '<td colspan="2" style="width:50%"> 날짜 : ' + item.C_DATE + '</td></tr>';
									        	      str += '<tr><td colspan="3"> 준비물 : ' + item.C_INGREDIENTS + '</td></tr>';
									        	      str += '<tr><td colspan="3"> 주소 : ' + item.C_ZIP + '</td></tr>';
									        	      str += '<tr><td> 현재인원 : ' + item.NOWPERSONS + '</td>';
									        	      str += '<td> 최대인원 : ' + item.MAXPERSONS + '</td>';
									        	      str += '<td style="float: right;"><button class="btn btn-outline-dark" onclick="location.href="/cookclass/joinClass.np?m_id=<%=id%>&c_classcd=1"">신청하기</button></td></tr></table>';
									        	      $('#cookclass').append(str);
								        	      }
								        	   });
								        	}
								         });
							</script>
						</td>
					</tr>
			   </table>
			</td>
		</tr>
			<!-- End Content -->
			<!-- Footer -->
		<tr>
			<td colspan="2" style="width: 100%;">
				<%@ include file="/footer.jsp" %>
			</td>
		</tr>
			<!-- End Footer -->
</table>
<%}else{ %>
<script type="text/javascript">
	alert("로그인 후 이용해주세요.");
 	history.go(-1);
</script>
<%} %>
</body>
</html>