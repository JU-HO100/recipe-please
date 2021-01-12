<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/common/bootstrap_common.jsp"%>
<title>오늘 뭐 먹지?</title>
<script type="text/javascript">
function loginAction() {
	//아이디 공백 확인
    if($("#m_id").val() == ""){
      alert("아이디 입력바람");
      $("#m_id").focus();
      return false;
    }
	
  //비밀번호 공백 확인
    if($("#m_pw").val() == ""){
      alert("비밀번호를 입력해주세요");
      $("#m_pw").focus();
      return false;
    }
	
}
function findIdAction() {
	location.href="/findId.jsp";
}
function findPwAction() {
	location.href="/findPw.jsp";
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
			<%@ include file="/loginContent.jsp" %>
		</td>	
	</tr>
	<tr>
		<td align="center" style="padding-bottom: 8%">
			<%@ include file="/kakaoLogin.jsp" %>
		</td>		
	</tr>
	<tr>
		<td>
			<%@ include file="/footer.jsp" %>
		</td>
	</tr>	
</table>
<script type='text/javascript'>
    //<![CDATA[
   // 사용할 앱의 JavaScript 키를 설정해 주세요.
   Kakao.init('f61c36ee28b1fe4d00e270bcf75d344d');
   
   // 카카오 로그인 버튼을 생성합니다.
   Kakao.Auth.createLoginButton({
     container: '#kakao-login-btn',
     success: function(authObj) {
    alert(JSON.stringify(authObj));
     },
     fail: function(err) {
     alert(JSON.stringify(err));
     }
   });
    //
 </script>
</body>