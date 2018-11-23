<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	window.onload = function(){
		var spans = document.getElementsByTagName("span");
		var span = spans[0];
		var i = 5;
		//定义一个定时器
		var time = setInterval(function(){
			span.innerHTML = --i;
			if(i==1){
				//清除定时器
				clearInterval(time);
				window.location.href = "${pageContext.request.contextPath}/login.jsp";
			}
		}, 1000);
		
	}
	
</script>
</head>
<body >
	<h2>需要登录,<span style="color:red;">5</span>秒后自动跳到登录页面</h2>
</body>
</html>