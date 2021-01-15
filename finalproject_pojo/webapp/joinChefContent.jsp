<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<table style="width: 100%">
	<tr>
		<td style="width: 79%">
			<form method="get" action="#">
			<table align="center" style="width: 70%; ">
				<tr style="height: 50px;">
					<td>
						자기소개서
					</td>
				</tr>
				<tr>
					<td>주력 요리:
						<div class="easyui-panel" style="width: 20%; max-width: 400px;">
						<select class="easyui-combobox" name="state"  style="width: 100%;">
							<option value="AL">한식</option>
							<option value="AK">중식</option>
							<option value="AZ">일식</option>
							<option value="AR">양식</option>
						</select>
						</div>
					</td>
				</tr>	
				<tr>
					<td>
						ex) 지역, 주로 하시는 요리
					</td>
				</tr>
				<tr>
					<td style="margin-top: 4%">
						<textarea rows="8" cols="70" id="self" name="self"></textarea>
					</td>
				</tr>
				<tr>
					<td style="text-align: right;">
						<input class="btn btn-outline-dark" type="reset" value="다시 작성">
						<input class="btn btn-outline-dark" type="button" value="등록" onclick="joinChefCheck()">
					</td>
				</tr>	
			</table>	
			</form>
		</td>
	</tr>
</table>