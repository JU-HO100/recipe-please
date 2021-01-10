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
		<td style="width: 20%; vertical-align: top;">
			<div class="btn-group-vertical" style="width: 100%;">
				 <button type="button" class="btn btn-outline-dark"  style="text-align: left;" onclick="today1()">한식</button>
				 <button type="button" class="btn btn-outline-dark active" style="text-align: left;" onclick="today2()">중식</button>
				 <button type="button" class="btn btn-outline-dark" style="text-align: left;" onclick="today3()">일식</button>
				 <button type="button" class="btn btn-outline-dark" style="text-align: left;" onclick="today4()">양식</button>
			</div>
		</td>
		<td style="width: 80%; padding-left: 5%; padding-right: 5%;">
		  <h1 style="font-family: 'Nanum Pen Script', cursive; padding-left: 10px;">오늘의 중식</h1>
		  <table class="table table-hover">
		    <tbody>
<%
			for(int i=0;i<4;i++){
			//Map<String,Object> rmap = boardList.get(i);
%>
		      <tr>
		      	<td style="width: 20%; height: 100px;">
		      		<input type="image" src="./images/food3.jpg" style="width: 100%;">
		      	</td>
		        <td style="width: 60%">중식 요리<%=i+1 %></td>
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