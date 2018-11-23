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
<script type="text/javascript">
function submitForm() {
	/* 做校验 */
	var flag1 = checkpassword_bc2btxt();
	if (flag1) {
		document.forms[0].submit();
	}
}
//新密码不能为空
function checkpassword_bc2btxt() {
	var password_bc2btxt = document.getElementsByName("password_bc2btxt");
	var password_bc2btxt = password_bc2btxt[0];
	var password_bc2btxtSpan = document.getElementById("password_bc2btxtSpan");
    if (password_bc2btxt.value.trim() == '') {
		password_bc2btxtSpan.innerHTML = "不能为空";
		return false;
	} else if(!password_bc2btxt.value.trim().match("[a-zA-Z0-9]{6,12}")) {
		password_bc2btxtSpan.innerHTML = "密码必须是6-12位数字字母";
		return false;
	}
	return true;
}

function clearpassword_bc2btxt() {
	var password_bc2btxtSpan = document.getElementById("password_bc2btxtSpan");
	password_bc2btxtSpan.innerHTML = "";
}
</script>
</head>

<body class="body_login">
   <div class="login_t">
         <div class="login_logo"><a href="" target="_blank" ></a></div>
       

   </div>
   <div class="zhuce_c">
        <div class="password_t">
             <span class="fr_pw"><a href="login.jsp" target="_blank">返回</a></span><span class="zhmm">找回密码</span>
        </div>
        <div class="password_b">
             <div class="password_b1 bg3">
                   <ul>                                                        
                       <li>1、输入用户名</li>
                       <li>2、回答密保问题</li>
                       <li>3、重设密码</li>
                       <li>4、密码重设成功</li>
                   </ul>
             </div>
             <div class="password_bc">
                  <form action="${ctx}/customer?method=password_4" method="post">
                  <div><span style="color:red;">${errorMsg}</span></div>
                  <div class="password_bc2">
                  <div class="password_bc2t"><span id="password_bc2btxtSpan" style="color:red;">${error.password_bc2btxt }</span></div>
                       <div class="password_bc2t">请输入您的新密码</div>
                       <div class="password_bc2b">
	                       <input type="text" name="password_bc2btxt" class="password_bc2btxt" onblur="checkpassword_bc2btxt()" onfocus="clearpassword_bc2btxt()">
	                       <span class="zz">密码由数字、字母组成</span>
                       </div>
                       <div class="password_bc2c">
                       		<input name="dl" type="button" class="pass_next" value="下一步" onclick="submitForm()" />
						</div>
                  </div>
                 </form> 
             </div>
             
        </div>
   </div>
   <jsp:include page="footer.jsp" />
</body>
</html>
