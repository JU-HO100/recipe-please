<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table style="width: 100%">
	<tr>
		<td style="width: 80%;">
			<div class="col-lg-9">
			<div class="container mt-3">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs">
					<li class="nav-item"><a class="nav-link active"
						data-toggle="tab" href="#home">등록</a></li>
				</ul>
				<div class="tab-content">
					<div id="home" class="container tab-pane active">
					<form action="/cookclass/createClass.np"  method="get">
						<br>
						<div class="form-group">
							<label>제목:</label>
							 <input type="text" class="form-control" placeholder="어떤 요리인지 알 수 있도록 입력해 주세요. ex)누구나 쉽게 배울 수 있는 김치찜"  id="c_cook" name="c_cook">
						</div>
						<div class="form-group">
							<label>준비물:</label> 
							<input type="text" class="form-control" placeholder="요리에 필요한 준비물을 입력해주세요."  id="c_ingredients" name="c_ingredients">
						</div>
						<div class="form-group">
							<label>실습주소:</label>
							 <input type="text" class="form-control" placeholder="실습주소를 입력해주세요." id="c_zip" name="c_zip">
						</div>
						<div class="form-group">
							<label>날짜:</label>
							 <input type="date" class="form-control" placeholder="실습날짜를 입력해주세요." id="c_date" name="c_date">
						</div>
						<div class="form-group">
							<label>수강 최대 인원:</label>
							 <input type="text" class="form-control" placeholder="수강 최대 인원을 입력해주세요." id="c_member" name="c_member">
						</div>
						<div class="form-group form-check">
							<label class="form-check-label">
							<input class="form-check-input" type="checkbox">이용수칙 및 약관을 읽었으며 이와같은 내용을 회사에 제출합니다.
							</label>
						</div>
						<input type="hidden"  name="m_id"  value="test123">
						<button type="submit" class="btn btn-outline-dark" onclick="javascript:check()">쿠킹클래스 등록하기</button>
					</form>
					</div>
				</div>
			</div>
		</div>
		</td>	
	</tr>
</table>
