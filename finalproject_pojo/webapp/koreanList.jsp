<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/common/bootstrap_common.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<table align="center" style="width: 70%; height: 100%;">
		<!-- Header -->
		<tr>
			<td colspan="2"
				style="width: 100%; padding-top: 2%; padding-bottom: 2%;"><%@ include
					file="/header.jsp"%></td>
		</tr>
		<!-- END Header -->

		<!-- NavBar -->
		<tr>
			<td colspan="2" style="width: 100%;"><%@ include
					file="/navbar.jsp"%></td>
		</tr>
		<!-- END NavBar -->
	</table>
	<!-- Page Content -->
	<div class="container">
		<div class="container-fluid" style="min-height: calc(100vh - 136px);">
			<div id="category" style class="rcp_m_cate">
				<!-- 그룹 태그로 role과 aria-multiselectable를 설정한다. -->
				<div class="panel-group" id="accordion" role="tablist"
					aria-multiselectable="true">
					<div class="panel-heading" role="tab">
						<a role="button" data-toggle="collapse" data-parent="#accordion"
							href="#collapse1" aria-expanded="false"
							class="btn btn-outline-success btn-lg">한식 </a> <a role="button"
							data-toggle="collapse" data-parent="#accordion" href="#collapse1"
							aria-expanded="false" class="btn btn-outline-success btn-lg">중식
						</a> <a role="button" data-toggle="collapse" data-parent="#accordion"
							href="#collapse1" aria-expanded="false"
							class="btn btn-outline-success btn-lg">일식 </a> <a role="button"
							data-toggle="collapse" data-parent="#accordion" href="#collapse1"
							aria-expanded="false" class="btn btn-outline-success btn-lg">양식
						</a>
					</div>
					<div id="collapse1" class="panel-collapse collapse" role="tabpanel">
						<div class="panel-body" border="1">
							<div class="cate_list">
							<button href="" class="btn btn-outline-success btn-sm">전체</a>
						<button href="" class="btn btn-outline-success btn-sm">밑반찬</a>
						<button href="" class="btn btn-outline-success btn-sm">메인반찬</a>
						<button href="" class="btn btn-outline-success btn-sm">국/탕</a>
						<button href="" class="btn btn-outline-success btn-sm">찌개</a>
						<button href="" class="btn btn-outline-success btn-sm">디저트</a>
						<button href="" class="btn btn-outline-success btn-sm">면/만두</a>
						<button href="" class="btn btn-outline-success btn-sm">밥/죽/떡</a>
						<button href="" class="btn btn-outline-success btn-sm">퓨전</a>
						<button href="" class="btn btn-outline-success btn-sm">김치/젓갈/장류</a>
						<button href=""class="btn btn-outline-success btn-sm">양념/소스/잼</a>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- Team Member 1 -->
					<div class="col-xl-3 col-md-6 mb-4">
						<div class="card border-0 shadow">
							<button type="button">
								<img src="images/portfolio/ch.jpg " class="card-img-top"
									alt="..." height="175">
							</button>
							<div class="card-body text-center">
								<h5 class="card-title mb-0">닭봉간장조림~ 십년째 만들어 먹는 양념 공유해요!</h5>
								<a href="#"> <img width="10%"
									src="https://recipe1.ezmember.co.kr/cache/rpf/2020/06/25/e95dbdcf4122fe67c45511b5c4f6f4c71.jpg">
									요리하는 라라
								</a>
								<div>
									<span> <img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
										<img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
										<img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
										<img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
										<img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
									</span>
								</div>
								<div>
									<span>(18)</span> <span>조회수 3.3만</span>
								</div>
							</div>
						</div>
					</div>
					<!-- Team Member 1 -->
					<div class="col-xl-3 col-md-6 mb-4">
						<div class="card border-0 shadow">
							<button type="button">
								<img src="images/portfolio/submarine.png " class="card-img-top"
									alt="..." height="175">
							</button>
							<div class="card-body text-center">
								<h5 class="card-title mb-0">닭봉간장조림~ 십년째 만들어 먹는 양념 공유해요!</h5>
								<a href="#">요리하는 라라</a>
								<div>
									<span> <img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
										<img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
										<img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
										<img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
										<img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
									</span>
								</div>
								<div>
									<span>(18)</span> <span>조회수 3.3만</span>
								</div>
							</div>
						</div>
					</div>
					<!-- Team Member 1 -->
					<div class="col-xl-3 col-md-6 mb-4">
						<div class="card border-0 shadow">
							<button type="button">
								<img src="images/portfolio/cake.png " class="card-img-top"
									alt="..." height="175">
							</button>
							<div class="card-body text-center">
								<h5 class="card-title mb-0">닭봉간장조림~ 십년째 만들어 먹는 양념 공유해요!</h5>
								<a href="#">요리하는 라라</a>
								<div>
									<span> <img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
										<img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
										<img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
										<img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
										<img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
									</span>
								</div>
								<div>
									<span>(18)</span> <span>조회수 3.3만</span>
								</div>
							</div>
						</div>
					</div>
					<!-- Team Member 1 -->
					<div class="col-xl-3 col-md-6 mb-4">
						<div class="card border-0 shadow">
							<button type="button">
								<img src="images/portfolio/circus.png " class="card-img-top"
									alt="..." height="175">
							</button>
							<div class="card-body text-center">
								<h5 class="card-title mb-0">닭봉간장조림~ 십년째 만들어 먹는 양념 공유해요!</h5>
								<a href="#">요리하는 라라</a>
								<div>
									<span> <img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
										<img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
										<img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
										<img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
										<img width="8%" alt=""
										src="https://recipe1.ezmember.co.kr/img/mobile/icon_star2_on.png">
									</span>
								</div>
								<div>
									<span>(18)</span> <span>조회수 3.3만</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.container -->
		</div>
</body>
</html>