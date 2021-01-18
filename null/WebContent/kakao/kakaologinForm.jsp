<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오 로그인폼 페이지</title>

</head>
<body>
<a href="kakaologin.jsp">로그인</a>

<a id="kakao-login-btn"></a>
<p>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">

	Kakao.Auth.createLoginButton({
	    container: '#kakao-login-btn',
	    success: function(authObj) {
	//    alert(JSON.stringify(authObj));
			kakao.API.request({
				url: '/v2/user/me',
				success: function(res){
					console.log(res);
					var id = res.id
					var email = res.kakao_account.email;
					var name = res.properties.nickname;
					var html = '<BR>'+email+'<BR>'+name;
					
				}
			
			
			});
			}
	    }

</script>
</p>


</body>
</html>