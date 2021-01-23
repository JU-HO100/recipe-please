<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘 뭐 먹지?</title>
<%@ include file="/common/bootstrap_common.jsp"%>
<script>
//Get the button
var mybutton = document.getElementById("myBtn");

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
  
}
function goRecipe() {
	location.href="/recipe/registerRecipe.jsp";
}
function goPopRecipe() {
    $.ajax({
        type : "GET",
        url : "/recipe/popRecipe.jsp",
        dataType : "text",
        error : function() {
          alert('통신실패!!');
        },
        success : function(data) {
          $('#tb_ajax').html(data);
        }

      });
    }
function logout() {
	location.href="/member/logout.jsp";
}

</script>
<style>
#myBtn {
  position: fixed;
  bottom: 45px;
  right: 45px;
  z-index: 99;
  font-size: 18px;
  border: 1px solid black;
  outline: none;
  background-color: white;
  color: black;
  cursor: pointer;
  padding: 15px;
  border-radius: 8px;
}
</style>
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
			<td style="padding-left: 1%; padding-bottom: 1%; padding-top: 3%; padding-right: 1%;" >
				<%@ include file="/largeCategory.jsp" %>
			</td>
		</tr>
		<tr>
			<td style="padding-left: 1%; padding-bottom: 5%">
				<%@ include file="/smallCategory.jsp" %>
			</td>
		</tr>
		<tr>
			<td align="center">
					<div style="width: 100%;" id="recipeCard1" >
					</div>
					<div style="width: 100%;" id="recipeCard2" >
					</div>
					<div style="width: 100%;" id="recipeCard3" >
					</div>
					<%--============================= 전역변수 설정========================== --%>
					<script type="text/javascript">
 						 $.ajax({
 							url : "/recipe/popRecipeList.np"
					         ,success : function (data) { 
	 					//jsontext에 JSON객체를 넣는다.
				 			  var result = JSON.stringify(data);
				   		   //alert("result:"+result);
				   		   var arr = JSON.parse(result);
	 					//for문을 돌면서 contact[i]의 key 값을 가져와 value값 출력해준다.
	 						var recipeListArr = arr.length;
					         }
 						 });
	 				</script>
 					<%--============================= 전역변수 설정========================== --%>
					<script type="text/javascript">
					    $.ajax({
						      url : "/recipe/popRecipeList.np"
							         ,success : function (result) { 
							        	    var imsi = JSON.stringify(result);//json포맷형식
							        	    var arrayObj  = JSON.parse(imsi);//[objejct,object]
							        	    for(var i=0;i<arrayObj.length;i++){
							        	    	if(Math.floor(i/4)==0){
							        	    		var str = '<div class="card" style="height: 400px; width:280px; float: left; margin :15px;">';
									        	      str += '<img class="card-img-top" src="/images/goodFood.jpg" style="width:100%">';
									        	      str += '<div class="card-body text-left">';
									        	      str += '<p class="card-text">제목 : ' +arrayObj[i].FOODNAME+ '</p>';
									        	      str += '<table><tr><td>' +arrayObj[i].M_NICK+ '님의 게시물</td></tr>';
									        	      str += '<tr><td><img src="/images/likeOn.png" style="width: 25px; float: left; margin-right: 2px; ">';
									        	      str += '<p style="float: left;">' +arrayObj[i].LIKECOUNT+ '</p></td>';
									        	      str += '<td> <button type="button" class="btn btn-outline-dark" style="float: right;">보기</button></td>';
									        	      str += '</tr></table></div></div>'; 
									        	      $('#recipeCard1').append(str);
								        	      
// 							        	    		arrayObj[i].empno 나 arrayObj[i].ename 이런식으로
							        	    	}else if(Math.floor(i/4)==1){
							        	    		var str = '<div class="card" style="height: 400px; width:280px; float: left; margin :15px;">';
									        	      str += '<img class="card-img-top" src="/images/goodFood.jpg" style="width:100%">';
									        	      str += '<div class="card-body text-left">';
									        	      str += '<p class="card-text" style="word-break:keep-all">제목 : ' +arrayObj[i].FOODNAME+ '</p>';
									        	      str += '<table><tr><td>' +arrayObj[i].M_NICK+ '님의 게시물</td></tr>';
									        	      str += '<tr><td><img src="/images/likeOn.png" style="width: 25px; float: left; margin-right: 2px; ">';
									        	      str += '<p style="float: left;">' +arrayObj[i].LIKECOUNT+ '</p></td>';
									        	      str += '<td> <button type="button" class="btn btn-outline-dark" style="float: right;">보기</button></td>';
									        	      str += '</tr></table></div></div>'; 
									        	      $('#recipeCard2').append(str);
								        	      						        	    		
							        	    	}else if(Math.floor(i/4)==2){
							        	    		var str = '<div class="card" style="height: 400px; width:280px; float: left;">';
									        	      str += '<img class="card-img-top" src="/images/goodFood.jpg" style="width:100%">';
									        	      str += '<div class="card-body text-left">';
									        	      str += '<p class="card-text">제목 : ' +arrayObj[i].FOODNAME+ '</p>';
									        	      str += '<table><tr><td>' +arrayObj[i].M_NICK+ '님의 게시물</td></tr>';
									        	      str += '<tr><td><img src="/images/likeOn.png" style="width: 25px; float: left; margin-right: 2px; ">';
									        	      str += '<p style="float: left;">' +arrayObj[i].LIKECOUNT+ '</p></td>';
									        	      str += '<td> <button type="button" class="btn btn-outline-dark" style="float: right;">보기</button></td>';
									        	      str += '</tr></table></div></div>'; 
									        	      $('#recipeCard3').append(str);
							        	    		}
							        	   			}//for문
								        	   }//	success			        	    		
					    				});//아작스
					</script>
			</td>
		</tr>
			<!-- End Content -->	
			<!-- Footer -->
		<tr>
			<td style="padding-top: 8%">
				<%@ include file="/footer.jsp" %>
			</td>
		</tr>
			<!-- End Footer -->
	</table>
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
</body>
</html>