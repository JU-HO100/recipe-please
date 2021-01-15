<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.util.PageBar" %> 
<table style="width: 80%" align="center">
	<tr>
		<td style="width: 80%; padding-left: 5%; padding-right: 5%;">
  		<h1 style="font-family: 'Nanum Pen Script', cursive; padding-left: 10px;">셰프 랭킹</h1>
		<table class="table table-hover">
			<tbody>
		      <tr style="cursor: pointer;">
		      	<td style="width: 20%;">
			     	<input type="image" src="/images/r1.jpg" style="width: 100%; cursor: default;">
		      		<img id="like" src="/images/likeOff.png" style="width: 20%;border: none;cursor:pointer;" onclick="javascript:changeLike(0)">
		      		<%=100 %>
		      	</td>
							<td>
								<input class ="easyui-textbox"  id="m_name" name="m_name"  label="셰프" data-options="prompt:'Enter a ENAME'" style="width:250px"/>
							</td>
<!-- 							<td> -->
<!-- 								<input class ="easyui-textbox"  id="c_cook" name="c_cook"  label="소개란" data-options="prompt:'Enter a ENAME'" style="width:250px"/> -->
<!-- 							</td> -->
<!-- 							<td> -->
<!-- 								<input class ="easyui-textbox"  id="c_cook" name="c_cook"  label="주력요리" data-options="prompt:'Enter a ENAME'" style="width:250px"/> -->
<!-- 							</td> -->
		      </tr>
		  </tbody>
		</table>
		</td>
	</tr>
</table>
<div id="dlg_chefDetail" closed="true" class="easyui_dialog" style="padding: 20px 50px">
</div>
