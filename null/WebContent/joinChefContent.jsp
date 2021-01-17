<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<table style="width: 100%">
	<tr>
		<td style="width: 23%; vertical-align: top;">
			<div class="card" style="width: 18rem;">
			  <ul class="list-group list-group-flush">
			  	<li class="list-group-item">
			  		<a href="./mypage.jsp" style="color: black;">
						회원정보 수정
					</a>
			  	</li>
			    <li class="list-group-item">
			  		<a href="./cookingClassCheck.jsp" style="color: black;">
						쿠킹클래스 확인
					</a>
			  	</li>
			  	<li class="list-group-item">
			  		<a href="./joinChef.jsp" style="color: black;">
						셰프 등록
					</a>
			  	</li>
			  	<li class="list-group-item">
			  		<a href="./memberOut.jsp" style="color: black;">
						회원 탈퇴
					</a>
			  	</li>
			  </ul>
			</div>
		</td>
		<td style="width: 77%; padding-left: 5%; ">
			<form action="">
			<table style="width: 100%; min-height: 100%;margin-bottom: 10%">
				<tr style="height: 50px;">
					<td>
						자기소개서
					</td>
				</tr>
				<tr>
					<td>
						ex) 지역, 주로 하시는 요리
					</td>
				</tr>
				<tr>
					<td style="margin-top: 4%">
						<textarea rows="20" cols="100"></textarea>
					</td>
				</tr>
				<tr>
					<td style="text-align: right;">
						<input class="btn btn-outline-dark" type="reset" value="다시 작성">
						<input class="btn btn-outline-dark" type="button" value="등록">
					</td>
				</tr>	
			</table>	
			</form>
		</td>
	</tr>
</table>