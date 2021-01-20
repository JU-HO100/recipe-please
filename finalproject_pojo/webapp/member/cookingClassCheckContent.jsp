<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String id = (String)session.getAttribute("id"); %>
<h1 style="font-family: 'Nanum Pen Script', cursive; padding-left: 10px;">등록쿠킹클래스</h1>
<table id="cookclassApply"  class="table" style="width: 100%;">
	<tr>
		<td style="border: none;">
			<script type="text/javascript">
				$.ajax({
					url : "/member/checkCookClass.np?m_id="+"<%=id%>"
					,success : function (result) { 
					$.each(result, function (index, item) {
					//table에 출력   
					 if(item.C_COOK != null){
							 var str = '<table style="width:100%; margin-bottom:5%"><tr><td style="width:50%"> 제목 : '+item.C_COOK+'</td>';
							str += '<td colspan="2" style="width:50%"> 날짜 : ' + item.C_DATE + '</td></tr>';
							 str += '<tr><td colspan="3"> 준비물 : ' + item.C_INGREDIENTS + '</td></tr>';
							str += '<tr><td colspan="3"> 주소 : ' + item.C_ZIP + '</td></tr>';
							str += '<tr><td> 현재인원 : ' + item.NOWPERSONS + '</td>';
							str += '<td> 최대인원 : ' + item.MAXPERSONS + '</td></tr></table>';
							$('#cookclassApply').append(str);
							}
							});
						}
					});
			</script>
		</td>
	</tr>
</table>
<h1 style="font-family: 'Nanum Pen Script', cursive; padding-left: 10px;">신청쿠킹클래스</h1>
<script>

</script>
