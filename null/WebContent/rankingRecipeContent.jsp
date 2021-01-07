<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<table style="width: 100%">
	<tr>
		<td style="width: 20%; vertical-align: top;">
			<div class="btn-group-vertical" style="width: 100%;">
				 <button type="button" class="btn btn-outline-dark" style="text-align: left;" onclick="rankingChefContent()">셰프 랭킹</button>
				 <button type="button" class="btn btn-outline-dark active" style="text-align: left;" onclick="rankingRecipeContent()">레시피 랭킹</button>
			</div>
		</td>
		<td style="width: 80%; padding-left: 5%; padding-right: 5%;">
<<<<<<< HEAD
  		<h1 style="font-family: 'Nanum Pen Script', cursive; padding-left: 10px;">레시피 랭킹</h1>
		<table class="table table-hover">
			<tbody>
		      <tr onclick="javascript:chefView()" style="cursor: pointer;">
		      	<td style="width: 20%;">
		      		<input type="image" src="./images/r1.jpg" style="width: 100%;">
		      	</td>
				<td style="width: 80%">
					<table>
						<tr>
							<td style="width: 85%; border: none;">
								레시피이름 <!-- 데이터이름 -->
							</td>
							<td style="width: 15%; border: none;">
								작성자
							</td>							
						</tr>
						<tr>
							<td style="width: 100%; border: none;" colspan="2">
								레시피 소개란 <!-- 간단셰프 소개란 -->
							</td>
						</tr>
					</table>
				</td>
		      </tr>
		     <tr onclick="javascript:chefView()" style="cursor: pointer;">
		      	<td style="width: 20%;">
		      		<input type="image" src="./images/r1.jpg" style="width: 100%;">
		      	</td>
				<td style="width: 80%">
					<table>
						<tr>
							<td style="width: 85%; border: none;">
								레시피이름 <!-- 데이터이름 -->
							</td>
							<td style="width: 15%; border: none;">
								작성자
							</td>							
						</tr>
						<tr>
							<td style="width: 100%; border: none;" colspan="2">
								레시피 소개란 <!-- 간단셰프 소개란 -->
							</td>
						</tr>
					</table>
				</td>
		      </tr>
		      <tr onclick="javascript:chefView()" style="cursor: pointer;">
		      	<td style="width: 20%;">
		      		<input type="image" src="./images/r1.jpg" style="width: 100%;">
		      	</td>
				<td style="width: 80%">
					<table>
						<tr>
							<td style="width: 85%; border: none;">
								레시피이름 <!-- 데이터이름 -->
							</td>
							<td style="width: 15%; border: none;">
								작성자
							</td>							
						</tr>
						<tr>
							<td style="width: 100%; border: none;" colspan="2">
								레시피 소개란 <!-- 간단셰프 소개란 -->
							</td>
						</tr>
					</table>
				</td>
		      </tr>
		      <tr onclick="javascript:chefView()" style="cursor: pointer;">
		      	<td style="width: 20%;">
		      		<input type="image" src="./images/r1.jpg" style="width: 100%;">
		      	</td>
				<td style="width: 80%">
					<table>
						<tr>
							<td style="width: 85%; border: none;">
								레시피이름 <!-- 데이터이름 -->
							</td>
							<td style="width: 15%; border: none;">
								작성자
							</td>							
						</tr>
						<tr>
							<td style="width: 100%; border: none;" colspan="2">
								레시피 소개란 <!-- 간단셰프 소개란 -->
							</td>
						</tr>
					</table>
				</td>
		      </tr>
		      <tr onclick="javascript:chefView()" style="cursor: pointer;">
		      	<td style="width: 20%;">
		      		<input type="image" src="./images/r1.jpg" style="width: 100%;">
		      	</td>
				<td style="width: 80%">
					<table>
						<tr>
							<td style="width: 85%; border: none;">
								레시피이름 <!-- 데이터이름 -->
							</td>
							<td style="width: 15%; border: none;">
								작성자
							</td>							
						</tr>
						<tr>
							<td style="width: 100%; border: none;" colspan="2">
								레시피 소개란 <!-- 간단셰프 소개란 -->
							</td>
						</tr>
					</table>
				</td>
=======
		<table style="width: 100%">
  		<tr>
  			<td>
  				<h1 style="font-family: 'Nanum Pen Script', cursive; padding-left: 10px;">레시피 랭킹</h1>
  			</td>
  		</tr>
	</table>
		<table class="table table-hover">
			<tbody>
		      <tr onclick="javascript:recipeView()" style="cursor: pointer;">
		      	<td style="width: 15%">
		      		<input type="image" src="./images/food.jpg" style="width: 100%;">
		      	</td>
		        <td style="width: 15%">레시피이름</td>
		        <td style="width: 70%">레시피 내용</td>
		      </tr>
		      <tr onclick="javascript:recipeView()" style="cursor: pointer;">
		      	<td style="width: 15%">
		      		<input type="image" src="./images/food2.jpg" style="width: 100%;">
		      	</td>
		        <td style="width: 15%">셰프이름</td>
		        <td style="width: 70%">레시피 내용</td>
		      </tr>
		      <tr onclick="javascript:recipeView()" style="cursor: pointer;">
		      	<td style="width: 15%">
		      		<input type="image" src="./images/food.jpg" style="width: 100%;">
		      	</td>
		        <td style="width: 15%">셰프이름</td>
		        <td style="width: 70%">레시피 내용</td>
		      </tr>
		      <tr onclick="javascript:recipeView()" style="cursor: pointer;">
		      	<td style="width: 15%">
		      		<input type="image" src="./images/food2.jpg" style="width: 100%;">
		      	</td>
		        <td style="width: 15%">셰프이름</td>
		        <td style="width: 70%">레시피 내용</td>
		      </tr>
		      <tr onclick="javascript:recipeView()" style="cursor: pointer;">
		      	<td style="width: 15%">
		      		<input type="image" src="./images/food.jpg" style="width: 100%;">
		      	</td>
		        <td style="width: 15%">셰프이름</td>
		        <td style="width: 70%">레시피 내용</td>
>>>>>>> 5a6972c0b348fbc5b3e746362c4f59b92d6e482a
		      </tr>
		  </tbody>
		</table>
		</td>
	</tr>
</table>
<<<<<<< HEAD
<div id="dlg_chefDetail" closed="true" class="easyui_dialog" style="padding: 20px 50px">
=======
<div id="dlg_recipeDetail" closed="true" class="easyui_dialog" style="padding: 20px 50px">
>>>>>>> 5a6972c0b348fbc5b3e746362c4f59b92d6e482a
</div>
