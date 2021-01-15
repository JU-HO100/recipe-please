<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "java.util.*" %>
<% List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("list");%>
<% for(Map<String, Object> rmap:list) { %>
<table style="width: 100%">
	<tr>
		<td style="width: 79%">
			<form method="get" action="#">
			<table align="left" style="width: 70%">
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">이름</p>
					</td>
					<td style="widows: 50%">
						<input value="<%=rmap.get("M_NAME") %>" type="text" name="m_name" id="m_name" style="float: left;">
					</td>
				</tr>
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p
							style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">성별</p>
					</td>
					<td><label><input type="radio" name="m_gender"
							value="남자" checked="checked"> 남자</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<label><input type="radio" name="m_gender" value="여자">
							여자</label></td>
				</tr>
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p
							style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">아이디</p>
					</td>
					<td><input value="<%=rmap.get("M_ID") %>" type="text" name="m_id" id="m_id" style="float: left;">
					</td>
				</tr>
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p
							style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">비밀번호</p>
					</td>
					<td><input value="<%=rmap.get("M_PW") %>" type="text" name="m_pw" id="m_pw"
						style="float: left;"></td>
				</tr>
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p
							style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">이메일</p>
					</td>
					<td><input value="<%=rmap.get("M_MAIL") %>" type="email" name="m_mail" id="m_mail"
						style="float: left;"></td>
				</tr>
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p
							style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">주소</p>
					</td>
					<td><input value="<%=rmap.get("M_ZIP") %>" type="text" name="m_zip" id="m_zip"
						style="float: left;"></td>
				</tr>
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p
							style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">닉네임</p>
					</td>
					<td><input value="<%=rmap.get("M_NICK") %>" type="text" name="m_nick" id="m_nick"
						style="float: left;"></td>
				</tr>
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p
							style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">P.H</p>
					</td>
					<td><input value="<%=rmap.get("M_HP") %>" type="tel" name="m_hp" id="m_hp"
						style="float: left;"></td>
				</tr>
				<tr style="height: 80px;">
					<td style="width: 50%; text-align: center;">
						<p
							style="font-family: Black Han Sans, sans-serif; color: black; padding-top: 16px;">생년월일</p>
					</td>
					<td><input value="<%=rmap.get("M_BIRTH") %>" type="date" name="m_birth" id="m_birth"
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
 <%}%>