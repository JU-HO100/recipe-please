<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 	String id

%>    
<!DOCTYPE html>
<table style="width: 100%">
	<tr>
		<td style="width: 20%; vertical-align: top;">
			<div class="btn-group-vertical" style="width: 100%;">
				 <button type="button" class="btn btn-outline-dark active" style="text-align: left;" onclick="memberUpdateContent()">회원정보 수정</button>
				 <button type="button" class="btn btn-outline-dark" style="text-align: left;" onclick="cookingClassCheckContent()">쿠킹클래스 확인</button>
				 <button type="button" class="btn btn-outline-dark" style="text-align: left;" onclick="joinChefContent()">셰프 등록</button>
				 <button type="button" class="btn btn-outline-dark" style="text-align: left;" onclick="memberOutContent()">회원 탈퇴</button>
			</div>
		</td>
		<td style="width: 80%">
			<form method="get" action="#">
			<table align="left" style="width: 70%">
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">이름</p>
					</td>
					<td style="widows: 50%">
						<input value="안준헌" type="text" name="name" id="name" style="float: left;">
					</td>
				</tr>
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p
							style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">성별</p>
					</td>
					<td><label><input type="radio" name="gender"
							value="남자" checked="checked"> 남자</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<label><input type="radio" name="gender" value="여자">
							여자</label></td>
				</tr>
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p
							style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">아이디</p>
					</td>
					<td><input value="test123" type="text" name="id" id="id" style="float: left;">
					</td>
				</tr>
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p
							style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">비밀번호</p>
					</td>
					<td><input value="1234" type="text" name="pw" id="pw"
						style="float: left;"></td>
				</tr>
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p
							style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">이메일</p>
					</td>
					<td><input value="test5678@gmail.com" type="email" name="email" id="email"
						style="float: left;"></td>
				</tr>
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p
							style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">닉네임</p>
					</td>
					<td><input value="널포인터" type="text" name="nickname" id="nickname"
						style="float: left;"></td>
				</tr>
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p
							style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">P.H</p>
					</td>
					<td><input value="01012345678" type="tel" name="phone" id="phone"
						style="float: left;"></td>
				</tr>
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p
							style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">생년월일</p>
					</td>
					<td><input value="1994-07-16" type="date" name="date" id="date"
						style="float: left;"></td>
				</tr>
				<tr style="height: 120px;">
					<td colspan="2" style="text-align: center;">
					<input class="btn btn-outline-dark" type="reset" value="다시작성">
					<input class="btn btn-outline-dark" type="submit" value="회원정보 수정">
					</td>
				</tr>
			</table>
			</form>
		</td>
	</tr>
</table>