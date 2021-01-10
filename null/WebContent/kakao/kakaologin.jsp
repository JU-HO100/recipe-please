<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>kakao 로그인</title>

</head>
<body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">
	Kakao.init('f61c36ee28b1fe4d00e270bcf75d344d');
	
	Kakao.Auth.authorize({
		redirectUri: 'http://192.168.0.38:9000/kakaoRedirectForm.jsp'
	});
	
	Kakao.Auth.login({
		success: function(authObj){
			
		Kakao.API.request({
			url:'v2/user/me',
			success: function(res){
				console.log(res);
				var id = res.id
				var email = res.kakao_account.email;
				var name = res.properties.nickname;
				var image = res.properties.profile_image;
				var html = '<BR>'+email+'<BR>'+name;
				
				$('body').append(html);
				
			}
		})
		 console.log(authObj);
		var token = authObj.access_token;
		},     
		fail: function(error) {
		         alert(JSON.stringify(error));
	    }
	 });
		 
	 
	 
	 
</script>


</body>
</html>