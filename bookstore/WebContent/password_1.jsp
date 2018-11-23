<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String basePath = request.getContextPath();
	pageContext.setAttribute("ctx", basePath);
%>

<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改密码</title>
<link href="css/style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
function submitForm() {
	/* 做校验 */
	var flag1 = checkCusername();
	var flag2 = checkvCode();
	if (flag1 && flag2) {
		document.forms[0].submit();
	}
}
//用户名不能为空
function checkCusername() {
	var cusernames = document.getElementsByName("cusername");
	var cusername = cusernames[0];
	var cusernameSpan = document.getElementById("cusernameSpan");
	if (cusername.value.trim() == '') {
		cusernameSpan.innerHTML = "不能为空";
		return false;
	}
	return true;
}

function clearCusername() {
	var cusernameSpan = document.getElementById("cusernameSpan");
	cusernameSpan.innerHTML = "";
}
//验证码不能为空
function checkvCode() {
	var vCodes = document.getElementsByName("vCode");
	var vCode = vCodes[0];
	var vCodeSpan = document.getElementById("vCodeSpan");
	if (vCode.value.trim() == '') {
		vCodeSpan.innerHTML = "不能为空";
		return false;
	}
	return true;
}

function clearvCode() {
	var vCodeSpan = document.getElementById("vCodeSpan");
	vCodeSpan.innerHTML = "";
}
</script>
</head>

<body class="body_login">
   <div class="login_t">
         <div class="login_logo"><a href="" target="_blank" ></a></div>
       

   </div>
   <div class="zhuce_c">
        <div class="password_t">
             <span class="fr_pw"><a href="login.jsp" target="">返回</a></span><span class="zhmm">找回密码</span>
        </div>
        <div class="password_b">
             <div class="password_b1 bg1">
                   <ul>                                                        
                       <li>1、输入用户名</li>
                       <li>2、回答密保问题</li>
                       <li>3、重设密码</li>
                       <li>4、密码重设成功</li>
                   </ul>
             </div>
             <div class="password_bc">
             <form action="${ctx}/customer?method=password_1" method="post">
             <div><span style="color:red;">${errorMsg}</span></div>
                   <dl>
                        <dt>账&nbsp;&nbsp;&nbsp;户：</dt>
                        <dd>
                        	<input name="cusername" type="text" class="pass_name" onblur="checkCusername()" onfocus="clearCusername()"/><span
							id="cusernameSpan" style="color:red;">${error.cusername }</span>
						</dd>
                   </dl>
                   <dl>
                        <dt>验证码：</dt>
                        <dd><input name="vCode" type="text" class="pass_name"  onblur="checkvCode()" onfocus="clearvCode()"/>
                        <span id="vCodeSpan" style="color:red;">${requestScope.vCode }</span>
                        </dd>
                   </dl>
                   <dl>
                        <dt></dt>
                        <dd>
                            <span class="pass_yzm"><img id="vCode" src="${ctx}/code" width="178" height="50" /></span>
                            看不清？<a href="javascript:changeCode()">换张图</a>
                        <script type="text/javascript">
							function changeCode(){
								var vCode = document.getElementById("vCode");
								vCode.src = "${ctx}/code?"+Math.random();
							}
						</script>
                        </dd>
                   </dl>
                   <dl>
                        <dt></dt><!-- class="pass_next" -->
                        <dd><input name="dl" type="button" class="pass_next" value="下一步"
						onclick="submitForm()" /></dd>
                   </dl>
                </form>
             </div>
             
        </div>
   </div>
  <jsp:include page="footer.jsp" />
</body>
</html>
