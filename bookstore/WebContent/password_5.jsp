<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String basePath = request.getContextPath();
	pageContext.setAttribute("ctx", basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改密码</title>
<link href="css/style.css" type="text/css" rel="stylesheet" />
</head>

<body class="body_login">
   <div class="login_t">
         <div class="login_logo"><a href="" target="_blank" ></a></div>
       

   </div>
   <div class="zhuce_c">
        <div class="password_t">
             <span class="fr_pw"><a href="login.jsp" target="">立即登陆</a></span><span class="zhmm">找回密码</span>
        </div>
        <div class="password_b">
             <div class="password_b1 bg4">
                   <ul>                                                        
                       <li>1、输入用户名</li>
                       <li>2、回答密保问题</li>
                       <li>3、重设密码</li>
                       <li>4、密码重设成功</li>
                   </ul>
             </div>
             <div class="password_bc">
                  
                  <div class="password_bc2">
                       <div class="password_bc2t">恭喜您重设密码成功！</div>
                       <div class="password_bc2m">您的新密码为<span class="yellow"> ${password}</span>，请妥善保管您的密码</div>
                       
                  </div>
                  
             </div>
             
        </div>
   </div>
   <jsp:include page="footer.jsp" />
</body>
</html>