<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<table style="width: 100%">
	<tr>
		<td style="width: 20%; vertical-align: top;">
			<div class="btn-group-vertical" style="width: 100%;">
				 <button type="button" class="btn btn-outline-dark active" style="text-align: left;" onclick="rankingChefContent()">셰프 랭킹</button>
				 <button type="button" class="btn btn-outline-dark" style="text-align: left;" onclick="rankingRecipeContent()">레시피 랭킹</button>
			</div>
		</td>
		<td style="width: 80%; padding-left: 5%; padding-right: 5%;">
		<table style="width: 100%">
  		<tr>
  			<td>
  				<h1 style="font-family: 'Nanum Pen Script', cursive; padding-left: 10px;">셰프 랭킹</h1>
  			</td>
  		</tr>
	</table>
		<table class="table table-hover">
			<tbody>
		      <tr onclick="javascript:chefView()" style="cursor: pointer;">
		      	<td style="width: 15%">
		      		<input type="image" src="./images/r1.jpg" style="width: 100px;">
		      	</td>
		        <td style="width: 15%">셰프이름</td>
		        <td style="width: 70%">간단셰프소개란</td>
		      </tr>
		      <tr onclick="javascript:chefView()" style="cursor: pointer;">
		      	<td style="width: 15%">
		      		<input type="image" src="./images/r1.jpg" style="width: 100px;">
		      	</td>
		        <td style="width: 15%">셰프이름</td>
		        <td style="width: 70%">간단셰프소개란</td>
		      </tr>
		      <tr onclick="javascript:chefView()" style="cursor: pointer;">
		      	<td style="width: 15%">
		      		<input type="image" src="./images/r1.jpg" style="width: 100px;">
		      	</td>
		        <td style="width: 15%">셰프이름</td>
		        <td style="width: 70%">간단셰프소개란</td>
		      </tr>
		      <tr onclick="javascript:chefView()" style="cursor: pointer;">
		      	<td style="width: 15%">
		      		<input type="image" src="./images/r1.jpg" style="width: 100px;">
		      	</td>
		        <td style="width: 15%">셰프이름</td>
		        <td style="width: 70%">간단셰프소개란</td>
		      </tr>
		      <tr onclick="javascript:chefView()" style="cursor: pointer;">
		      	<td style="width: 15%">
		      		<input type="image" src="./images/r1.jpg" style="width: 100px;">
		      	</td>
		        <td style="width: 15%">셰프이름</td>
		        <td style="width: 70%">간단셰프소개란</td>
		      </tr>
		  </tbody>
		</table>
		</td>
	</tr>
</table>
<div id="dlg_chefDetail" closed="true" class="easyui_dialog" style="padding: 20px 50px">
</div>
