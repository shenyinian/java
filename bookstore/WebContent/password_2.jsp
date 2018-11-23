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
/* 	var flag1 = checkquestion_one(); */
	var flag2 = checkanswer_one();
	if (flag2) {
		document.forms[0].submit();
	}
}
/* //问题不能为空
function checkquestion_one() {
	var question_one = document.getElementsByName("question_one");
	var question_one = question_one[0];
	var question_oneSpan = document.getElementById("question_oneSpan");
	if (question_one.value.trim() == "请选择您要回答的问题") {
		question_oneSpan.innerHTML = "问题不能为空";
		return false;
	}
	return true;
}

function clearquestion_one() {
	var question_oneSpan = document.getElementById("question_oneSpan");
	question_oneSpan.innerHTML = "";
} */
//答案不能为空
function checkanswer_one() {
	var answer_one = document.getElementsByName("answer_one");
	var answer_one = answer_one[0];
	var answer_oneSpan = document.getElementById("answer_oneSpan");
	if (answer_one.value.trim() == '') {
		answer_oneSpan.innerHTML = "不能为空";
		return false;
	}
	return true;
}

function clearanswer_one() {
	var answer_oneSpan = document.getElementById("answer_oneSpan");
	answer_oneSpan.innerHTML = "";
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
        
             <div class="password_b1 bg2">
                   <ul>                                                        
                       <li>1、输入用户名</li>
                       <li>2、回答密保问题</li>
                       <li>3、重设密码</li>
                       <li>4、密码重设成功</li>
                   </ul>
             </div>
             <div class="password_bc">
             <%-- <div><span style="color:red;">${errorMsg}</span></div> --%>
                <form action="${ctx}/customer?method=password_2" method="post">
                  <div class="password_bc2"><!-- class="password_bc2t" -->
                       <div class="password_bc2t">
						<span class="red">*</span>您所注册的密保问题一
					<input type="text" name="question_one" class="password_bc2btxt" value="${customer.question_one} " />
					
				
                       </div>
                       <div class="password_bc2b"><input type="text" name="answer_one" class="password_bc2btxt" onblur="checkanswer_one()" onfocus="clearanswer_one()" /><span
							id="answer_oneSpan" style="color:red;">${error.answer_one }</span></div>
                       <div class="password_bc2c"><input name="dl" type="button" class="pass_next" value="下一步"
						onclick="submitForm()" /></div>
                  </div>
                </form>
             </div>
           
             
        </div>
   </div>
   <jsp:include page="footer.jsp" />
</body>
</html>
