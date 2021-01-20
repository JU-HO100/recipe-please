<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘 뭐 먹지?</title>
<%@ include file="/common/bootstrap_common.jsp"%>
<% String ranking = request.getParameter("ranking");%>
<script type="text/javascript">
	function chefView(){
  		$('#dlg_chefDetail').dialog({
  		    title: '__셰프님의 레시피', //셰프이름 데이터 받자
  		    width: 800,
  		    height: 800,
  		    closed: true,
  		    cache: false,
  		    href: '/chefDetail.jsp',//나중에 쿼리스트링으로 값 보내기
  		    modal: true
  		});  		
  		$('#dlg_chefDetail').dialog('open');
  	}
	function recipeView(){
		location.href="#"; //해당하는 레시피로 가기
  	}
	function rankingChefContent(){
	    $.ajax({
	      type : "GET",
	      url : "rankingChefContent.jsp",
	      dataType : "text",
	      error : function() {
	        alert('통신실패!!');
	      },
	      success : function(data) {
	        $('#tb_ajax').html(data);
	      }

	    });
	  }

	function rankingRecipeContent(){
	    $.ajax({
	      type : "GET",
	      url : "rankingRecipeContent.jsp",
	      dataType : "text",
	      error : function() {
	        alert('통신실패!!');
	      },
	      success : function(data) {
	        $('#tb_ajax').html(data);
	      }

	    });
	  }
// 	 $(function(){
//          /*웹페이지 열었을 때*/
//          $("#likeOff").show();
//          $("#likeOn").hide();

//          /*likeOff을 클릭했을 때 likeOn를 보여줌*/
//          $("#likeOff").click(function(){
//              $("#likeOff").hide();
//              $("#likeOn").show();
//          });

//          /*likeOn를 클릭했을 때 likeOff을 보여줌*/
//          $("#likeOn").click(function(){
//              $("#likeOff").show();
//              $("#likeOn").hide();
//          });
//      });
<% int state = 0; %>
	function changeLike(state) {
		if(state == 0){
			state = 1;
			document.getElementById('like').src = "/images/likeOn.png";
		}else{
			state = 0;
			document.getElementById('like').src = "/images/likeOff.png";
		}
	}
	
	
	

//값 불러오기

// 	$.ajax({
// 		type : "GET",
// 		url : "/member/chefRanking.np",
// 		dataType : "json",
// 		success : function(data) {
// 			var result = JSON.stringify(data);
// 			var arr = JSON.parse(result);

// 			for (var i = 0; i < arr.length; i++) {
// 				if (arr[i].MSG == null) {//값을 불러옴
// 					$("#ranking").textbox('setValue', arr[i].RANKING);
// 					$("#m_like").textbox('setValue', arr[i].M_LIKE);
// 					$("#m_name").textbox('setValue', arr[i].M_NAME);
// 					// $("#m_name").textbox('setValue',arr[i].M_NAME);
// 				} else {
// 					alert('통신실패!!');
// 				}
// 			}
// 		}
// 	});

function logout() {
	location.href="/member/logout.jsp";
}
</script>
</head>
<body>
	<table align="center" style="width: 70% ; height: 100%;">
			<!-- Header -->
		<tr>
			<%if(session.getAttribute("nick")!=null){ %>
			<td colspan="2" style="width: 100%; padding-top: 2%; padding-bottom: 2%;">
				<%@ include file="/loginOkHeader.jsp"%>
			</td>
			<%}else{ %>
			<td colspan="2" style="width: 100%; padding-top: 2%; padding-bottom: 2%;">
				<%@ include file="/header.jsp"%>
			</td>
			<%} %>
		</tr>
			<!-- END Header -->
			
			<!-- NavBar -->
		<tr>
			<td style="width: 100%;">
				<%@ include file="/navbar.jsp" %>
			</td>
		</tr>
			<!-- END NavBar -->
			
			<!-- Content -->
		<tr>
			<td style="width: 80%; padding-left: 5%; padding-right: 5%;padding-top: 5%">
				<h1 style="font-family: 'Nanum Pen Script', cursive; padding-left: 10px;">셰프 랭킹</h1>
					<table id="ranking"  class="table" style="width: 100%;">
						<tr>
							<td style="border: none;">
							<script type="text/javascript">
									$(document).ready(function () {
									      $.ajax({
									    	  url : "/member/chefRanking.np",
									         success : function (result) { 
									        	  $.each(result, function (index, item) {
									        		  var str = '<table style="width:100%;"><tr style="cursor:pointer;"><td style="width:20%;"> 순위 : '+item.RANKING+'</td>';
									        		  str +='<td style="width:20%;"> like : '+item.M_LIKE+'</td>';
									        		  str +='<td style="width:20%;"> 셰프님 : '+item.M_NAME+'</td>';
									        		  str +='<td style="width:20%;"> 주력요리 : '+item.MAIN_FOOD+'</td></tr></table>';
									        		  $('#ranking').append(str);
				// 					             $('#tb_ajax').append(
				// 					           		'순위 : '+item.RANKING+'  like : '+item.M_LIKE+'  셰프님 : '+item.M_NAME+' 주력요리 : '+item.MAIN_FOOD+'<br>'
									        	  });
									        	}
									         });
									   });
							</script>
							</td>
						</tr>
					</table>
			</td>
		</tr>			
			<!-- Content -->
			
			<!-- Footer -->
		<tr>
			<td style="padding-top: 18%">
				<%@ include file="/footer.jsp" %>
			</td>
		</tr>
			<!-- End Footer -->
	</table>
</body>
</html>