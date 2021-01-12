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
    if($("#id").val() == ""){
      alert("아이디 입력바람");
      $("#id").focus();
      return false;
    }
	
  //비밀번호 공백 확인
    if($("#passwd").val() == ""){
      alert("비밀번호를 입력해주세요");
      $("#passwd").focus();
      return false;
    }
	
	location.href="./loginIndex.jsp";
}
function findIdAction() {
	location.href="./findId.jsp";
}
function findPwAction() {
	location.href="./findPw.jsp";
}
</script>
</head>
<body>
<table align="center" style="width: 70% ; height: 100%;">
	<tr>
		<td>
			<%@ include file="./loginHeader.jsp"%>
		</td>
	</tr>
	<tr>
		<td>
			<%@ include file="./loginContent.jsp" %>
		</td>	
	</tr>
	<tr>
		<td>
			<%@ include file="./footer.jsp" %>
		</td>
	</tr>	
</table>
</body>