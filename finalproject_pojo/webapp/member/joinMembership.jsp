<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/common/bootstrap_common.jsp"%>
<title>오늘 뭐 먹지?</title>
<script type="text/javascript">
function check(){
	 var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/);
	//이름 공백 확인
	 if($("#m_name").val() == ""){
	      alert("이름 입력바람");
	      $("#m_name").focus();
	      return false;
	    }
	//아이디 공백 확인
	if($("#m_id").val() == ""){
      alert("아이디 입력바람");
      $("#m_id").focus();
      return false;
    }
  //아이디 유효성검사
  	if(!getCheck.test($("#m_id").val())){
	  alert("형식에 맞게 입력해주세요");
	  $("#m_id").val("");
	  $("#m_id").focus();
	  return false; 
	  }

    //아이디랑 비밀번호랑 같은지
    if ($("#m_id").val()==($("#m_pw").val())) {
    alert("비밀번호가 ID와 똑같습니다. 다시 작성해주세요!");
    $("#m_id").val("");
    $("#m_pw").focus();
    return false;
  }

    //비밀번호 똑같은지
    if($("#m_pw").val() != ($("#m_pwcheck").val())){ 
    alert("비밀번호가 다릅니다.");
    $("#m_pw").val("");
    $("#m_pwcheck").val("");
    $("#m_pw").focus();
    return false;
   }
    
    //비밀번호
    if(!getCheck.test($("#m_pw").val())) {
    alert("형식에 맞춰서 PW를 입력해주세요");
    $("#m_pw").val("");
    $("#m_pw").focus();
    return false;
    }
    
  //비밀번호 공백 확인
    if($("#m_pw").val() == ""){
      alert("비밀번호를 입력해주세요");
      $("#m_pw").focus();
      return false;
    }
	
  //이메일 공백 확인
    if($("#m_mail").val() == ""){
      alert("이메일을 입력해주세요");
      $("#m_mail").focus();
      return false;
    }
  //주소 공백 확인
    if($("#m_zip").val() == ""){
      alert("주소를 입력해주세요");
      $("#m_zip").focus();
      return false;
    }
  
    //전화번호 공백 확인
    if($("#m_hp").val() == ""){
      alert("전화번호를 입력해주세요");
      $("#m_hp").focus();
      return false;
    }
  	//생년월일 공백 확인
    if($("#m_birth").val() == ""){
      alert("생년월일을 입력해주세요");
      $("#m_birth").focus();
      return false;
    }
  	alert("회원가입 완료");
  	loginForm.submit();
}
 	function idCheckRegi() {
 		var m_id = $('#m_id').val();
 		var url = "/member/idCheckRegi.np?m_id="+m_id;
 		var name = "아이디 중복 체크";
        var option = "width = 300, height = 100, top = 400, left = 800, location = no"
  		window.open(url, name, option);
	}
 	function nickCheckRegi() {
 		var m_nick = $('#m_nick').val();
 		var url = "/member/nickCheckRegi.np?m_nick="+m_nick;
 		var name = "닉네임 중복 체크";
        var option = "width = 300, height = 100, top = 400, left = 800, location = no"
  		window.open(url, name, option);
	}
</script>
</head>
<body>
<table align="center" style="width: 70% ; height: 100%;">
	<tr>
		<td>
			<%@ include file="/loginHeader.jsp"%>
		</td>
	</tr>
	<tr>
		<td>
			<%@ include file="/member/jmContent.jsp" %>
		</td>	
	</tr>
	<tr>
		<td>
			<%@ include file="/footer.jsp" %>
		</td>
	</tr>	
</table>
</body>
</html>