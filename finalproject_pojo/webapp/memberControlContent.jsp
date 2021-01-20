<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table style="width: 100%">
	<tr>
		<td style="width: 100%;">
			<table id="member"  title="회원관리" style="width: 100%; height: 1000px" >
			</table>
<!-- 테이블 끝 -->
<!-- 툴바 시작하기========================================================================================== -->
			<div id="tbar_member">
				<!-- 테이블 태그를 활용하여 조건 검색하는 화면을 추가하고 그 아래 버튼을 배치하시오. -->
				<table border="0" width="100%">
				<!-- 조건 검색 화면 시작 -->	
					<tr>
						<td>
						<table border="0">
							<tr >
								<td>
										<button class="btn btn-outline-warning" style="width: 200px;" onclick="memberall()">전체보기</button>
										<button id="foreverstop" class="btn btn-outline-dark" style="width: 200px;" onclick="foreverstop()" value="블랙리스트">영구정지 회원</button>
										<button id="pause" class="btn btn-outline-dark" style="width: 200px;" onclick="pause()" value="일시정지">일시정지 회원</button>
										<button id="normal" class="btn btn-outline-dark" style="width: 200px;" onclick="normal()" value="정상">정상 회원</button>
										<button id="man" class="btn btn-outline-success" style="width: 200px;" onclick="man()" value="남자">남자</button>
										<button id="lady" class="btn btn-outline-success" style="width: 200px;" onclick="lady()" value="여자">여자</button>
										<button id="chefapply" class="btn btn-outline-danger" style="width: 200px;" onclick="chefapply()" value="셰프신청">셰프 신청한 회원</button>
										<button id="chef" class="btn btn-outline-danger" style="width: 200px;" onclick="chef()" value="셰프">셰프</button>
										<button class="btn btn-outline-info" style="width: 200px;" onclick="out()">관리자모드 나가기</button>
								</td>
							</tr>
							<tr>
			<!-- combobox추가 시작(위치선택, 공간 확보, 코드 추가) 이름|job|부서번호-->				
								<td width="100%" colspan="3">
								
        								<input class="easyui-searchbox" data-options="menu:'#memberCombo',searcher:doSearch" style="width:20%">
									    <div id="memberCombo">
									        <div data-options="name:'이름'">이름</div>
									        <div data-options="name:'아이디'">아이디</div>
									        <div data-options="name:'아이디'">닉네임</div>
									        <div data-options="name:'아이디'">주소</div>
									        <div data-options="name:'아이디'">전화번호</div>
									        <div data-options="name:'아이디'">생성일</div>
									        <div data-options="name:'아이디'">생년월일</div>
									        <div data-options="name:'아이디'">이메일</div>
									    </div>
									    <script>
									        function doSearch(value,name){
									            alert('You input: ' + value+'('+name+')');
									        }
									    </script>
									    &nbsp;&nbsp;&nbsp;범위검색
									    <select class="easyui-combobox" data-options="searcher:doSearch2" style="width:8%;">
									    	<option value="aa">신고 수</option>
										    <option>나이</option>
										    <option>좋아요 수</option>
										    <option>전체게시글 수</option>
										    <option>인기게시글 수</option>
									    </select>
									    <input class="easyui-textbox" style="width: 10%">
									    ~
									    <input class="easyui-searchbox" data-options="searcher:doSearch2" style="width:10%">
									    <script>
									        function doSearch2(value,name){
									            alert('You input: ' + value+'('+name+')');
									        }
									    </script>
									    
								</td>
							</tr>
						</table>		
						</td>
					</tr>
				<!-- 조건 검색 화면  끝  -->	
				<!-- 업무관련 버튼 시작 -->	
					<tr>
						<td>
						   <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addEmp()">입력</a>
						   <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="empUpdate()">수정</a>
						   <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="removeEmp()">삭제</a>
						</td>
					</tr>
				<!-- 업무관련 버튼   끝   -->	
				</table>
			</div>
<!-- 툴바 끝-=========================================================================================================== -->
			<script type="text/javascript">
				//게시판불러오기 스크립트
				$(document).ready(function (){
	        	$("#member").datagrid({
	 			   url: "/admin/memList.np?category="+"GENERAL"	
	 			  ,toolbar:'#tbar_member'
	 			  ,rownumbers:true
	 			  ,method:'get'
	 		   	  ,columns:[[
	 		   				 {field:'CK',checkbox:true, width:50, align:'center'}	
	 		                ,{field:'아이디',title:'아이디',width:150, editor:'text'}
	 		                ,{field:'닉네임',title:'닉네임',width:100, editor:'text'}
	 		                ,{field:'주소',title:'주소',width:220, editor:'text'}
	 		                ,{field:'전화번호',title:'전화번호',width:130, editor:'text'}
	 		                ,{field:'이름',title:'이름',width:80, editor:'text'}
	 		                ,{field:'생성일',title:'생성일',width:130, editor:'text'}
	 		                ,{field:'성별',title:'성별',width:60, editor:'text'}
	 		                ,{field:'생년월일',title:'생년월일',width:120, editor:'text'}
	 		                ,{field:'만 나이',title:'만 나이',width:50, editor:'text'}
	 		                ,{field:'메일주소',title:'메일주소',width:220, editor:'text'}
	 		                ,{field:'회원상태',title:'회원상태',width:70, editor:'text'}
	 		                ,{field:'블랙리스트',title:'블랙리스트',width:80, editor:'text'}
	 		                ,{field:'누적신고량',title:'누적신고량',width:80, editor:'text'}
	 		                ,{field:'게시물개수',title:'게시물개수',width:80, editor:'text'}
	 		                ,{field:'인기게시물개수',title:'인기게시물개수',width:110, editor:'text'}
	 		       ]]	
	 			});	
				});
	        	</script>
		</td>
	</tr>
</table>