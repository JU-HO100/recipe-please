<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<table>
	<tr>
		<td style="width: 23%; vertical-align: top;">
			<div class="card" style="width: 18rem;">
			  <ul class="list-group list-group-flush">
			  	<li class="list-group-item">
			  		<a href="./cookingClass.jsp" style="color: black;">
						쿠킹클래스 등록
					</a>
			  	</li>
			  	<li class="list-group-item">
			  		<a href="./applicationClass.jsp" style="color: black;">
						쿠킹클래스 신청
					</a>
			  	</li>
			  </ul>
			</div>
		</td>
		<td style="width: 77%; padding-left: 90px; padding-bottom: 100px;">
			<div class="col-lg-9">
			<div class="card">
				<div class="row no-gutters">
					<div class="col-5">
						<img src="./images/cake.jpg" alt="" class="card-img"
							style="width: 100%" />
					</div>
					<div class="col-7">
						<div class="container">
							<br>
							<h4 class="card-title">클래스이름:2</h4>
							<p class="card-text">
							<h6>요리명:</h6>
							</p>
							<p>
							<h6>준비물:</h6>
							</p>
							<p>
							<h6>실습주소:</h6>
							</p>
							<p>
							<h6>각오:</h6>
							</p>
							<br>
							<p>
							<h6>수강인원 모집률:</h6>
							</p>
							<div class="progress">
								<div
									class="progress-bar progress-bar-striped progress-bar-animated"
									style="width: 100%">100%</div>
							</div>
							<br>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#myModal">
								<h5>신청하기</h5>
							</button>
							<!-- The Modal -->
							<div class="modal fade" id="myModal">
								<div class="modal-dialog">
									<div class="modal-content">
										<!-- Modal Header -->
										<div class="modal-header">
											<h4 class="modal-title">클래스 신청하기</h4>
											<button type="button" class="close" data-dismiss="modal">×</button>
										</div>
										<!-- Modal body -->
										<div class="modal-body">
											<h5>해당 클래스는 인원모집이 끝났습니다. 다른 클래스를 신청해 주세요.</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</td>
	</tr>
</table>
