<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int tot = 0;
	List<Map<String,Object>> boardList = null;
	boardList = (List<Map<String,Object>>)request.getAttribute("boardList");
	if(boardList !=null){
		tot = boardList.size();
	}
	
%> 
<table style="width: 100%">
	<tr>
		<td>
		  <h1 style="font-family: 'Nanum Pen Script', cursive; padding-left: 10px;">오늘의 일식</h1>
		  <table class="table table-hover">
		    <tbody>
<%
			for(int i=0;i<4;i++){
			//Map<String,Object> rmap = boardList.get(i);
%>
		      <tr style="cursor: pointer;">
		      	<td style="width: 20%;">
		      		<input type="image" src="/images/food.jpg" style="width: 100%;">
		      	</td>
		        <td style="width: 60%">일식 요리<%=i+1 %></td>
		        <td style="width: 20%">셰프<%=i+1 %></td>
		      </tr>
<%
			}
%>
		    </tbody>
		  </table>
		</td>
	</tr>
</table>