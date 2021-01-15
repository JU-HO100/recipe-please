<%@page import="com.sun.xml.internal.bind.v2.runtime.Location"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<table style="width: 100%">
	<tr>
		<td style="width: 80%; padding-left: 5%; padding-right: 5%">
			<table class="table table-hover">
			      <tr style="cursor: pointer;">
			      	<td style="width: 20%;">
			      		<input type="image" src="/images/food.jpg" style="width: 100%;">
			      	</td>
			      	<td style="width: 80%;">
			      	<form name="classSubmit" method="get" action="/cookclass/joinClass.np">
			      		<table style="width: 100%;">
			      			<tr>
			      				<td style="border: none;">
			      					<input class ="easyui-textbox"  id="c_cook" name="c_cook"  label="제목" data-options="prompt:'Enter a ENAME'" style="width:250px"/>
			      				</td>
			      				<td style="border: none; text-align: right;">
			      					<input class ="easyui-textbox"  id="c_date" name="c_date"  label="날짜" data-options="prompt:'Enter a ENAME'" style="width:250px"/>
			      				</td>
			      			</tr>
			      			<tr>
			      				<td colspan="2" style="border: none;">
			      					<input class ="easyui-textbox"  id="c_ingredients" name="c_ingredients"  label = "재료" data-options="prompt:'Enter a ENAME'" style="width:250px"/>
			      				</td>
			      			</tr>
			      			<tr>
			      				<td colspan="2" style="border: none;">
			      					<input class ="easyui-textbox"  id="c_zip" name="c_zip"  label = "주소" data-options="prompt:'Enter a ENAME'" style="width:250px"/>
			      				</td>
			      			</tr>
			      			<tr>
			      				<td style="border: none;">
			      					<input class ="easyui-textbox"  id="c_member" name="c_member"  label = "인원" data-options="prompt:'Enter a ENAME'" style="width:250px"/>
			      				</td>
			      				<td style="border: none; text-align: right;">
									<button type="button" class="btn btn-outline-dark"  onclick="gosubmit()">신청하기</button>
			      				</td>
			      			</tr>
			      		</table>
			      		</form>
			      	</td>
			      </tr>
			    </tbody>
		  </table>
	</tr>
</table>