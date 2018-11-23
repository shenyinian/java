<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String basePath = request.getContextPath();
	pageContext.setAttribute("ctx", basePath);
%>
<!-- 董大浩-->
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户注册</title>
<link href="css/style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
	
	function submitForm() {
		/* 做校验 */
		var flag1 = checkcusername();
		var flag2 = checkPassword();
		var flag3 = checkPassword2();
		var flag4 = checkEmail();
		var flag5 = checkPhone();
		var flag6 = checkAddress();
		var flag7 = checkanswer_one();
		var flag8 = checkanswer_two();
		var flag9 = checkProvince();
		var flag10 = checkCity();
		var flag11 = checkDistrict();
		var flag12 = checkQq();
		var flag13 = checkquestion_one();
		var flag14 = checkquestion_two();
		if (flag1 && flag2 && flag3 && flag4 && flag5 && flag6 && flag7 && flag8 && flag9 && flag10 && flag11 && flag12 && flag13 && flag14) {
			
				document.forms[0].submit();
			
			
		}else{
			alert("您的注册信息有误，请检查后再输入");
		}
	}
	//账户不能为空
	function checkcusername() {
		var cusername = document.getElementsByName("cusername");
		var cusername = cusername[0];
		var nameSpan = document.getElementById("nameSpan");
		
		if (cusername.value.trim() == '') {
			nameSpan.innerHTML = "不能为空";
			return false;
		} else if(!cusername.value.trim().match(/[a-zA-Z]{6,8}/)){
			
			nameSpan.innerHTML = "账户必须是6-8位字母";
			return false;
		} 
		return true;
	}
	

	function clearcusername() {
		var nameSpan = document.getElementById("nameSpan");
		nameSpan.innerHTML = "";
	}
	//密码不能为空
	function checkPassword() {
		var password = document.getElementsByName("password");
		var password = password[0];
		var pwdSpan = document.getElementById("pwdSpan");
		if (password.value.trim() == '') {
			pwdSpan.innerHTML = "不能为空";
			return false;
		} else if(!password.value.trim().match(/[a-zA-Z0-9]{6,12}/)){
			
			pwdSpan.innerHTML = "密码必须是6-12位数字字母";
			return false;
		} 
		return true;
	}

	function clearPassword() {
		var pwdSpan = document.getElementById("pwdSpan");
		pwdSpan.innerHTML = "";
	}
	//确认密码不能为空
	function checkPassword2() {
		var password2 = document.getElementsByName("password2");
		var password2 = password2[0];
		var pwd1 = password2.value.trim();
		var password = document.getElementsByName("password");
		var password = password[0]; 
		var pwd = password.value.trim();
		var pwddSpan = document.getElementById("pwddSpan");
		if (pwd1 == '') {
			pwddSpan.innerHTML = "不能为空";
			return false;
		}else if(!(pwd1 == (pwd))){
			
			pwddSpan.innerHTML = "密码不匹配，请重新输入";
			return false;
		}
		return true;
	}

	function clearPassword2() {
		var pwddSpan = document.getElementById("pwddSpan");
		pwddSpan.innerHTML = "";
	}
	//邮箱不能为空
	function checkEmail() {
		var email = document.getElementsByName("email");
		var email = email[0];
		var emailSpan = document.getElementById("emailSpan");
		if (email.value.trim() == '') {
			emailSpan.innerHTML = "不能为空";
			return false;
		}else {
			if(!email.value.trim().match(/\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/)){
			
			emailSpan.innerHTML = "邮箱格式错误，请重新输入";
			return false;
		} 
		}
		return true;
	}

	function clearEmail() {
		var emailSpan = document.getElementById("emailSpan");
		emailSpan.innerHTML = "";
	}
	//电话不能为空
	function checkPhone() {
		var phone = document.getElementsByName("phone");
		var phone = phone[0];
		var phoneSpan = document.getElementById("phoneSpan");
		if (phone.value.trim() == '') {
			phoneSpan.innerHTML = "不能为空";
			return false;
		}else {
			if(!phone.value.trim().match(/^1[34578]\d{9}$/)){
			
			phoneSpan.innerHTML = "电话号码格式错误，请重新输入";
			return false;
			} 
		}
		return true;
	}

	function clearPhone() {
		var phoneSpan = document.getElementById("phoneSpan");
		phoneSpan.innerHTML = "";
	}
	//qq不能为空
	function checkQq() {
		var qq = document.getElementsByName("qq");
		var qq = qq[0];
		var qqSpan = document.getElementById("qqSpan");
		if (qq.value.trim() == '') {
			qqSpan.innerHTML = "不能为空";
			return false;
		}else {
			if(!qq.value.trim().match(/[1-9]\d{4,14}/)){
				
				qqSpan.innerHTML = "QQ号码格式错误，请重新输入";
				return false;
				} 
			}
		return true;
	}

	function clearQq() {
		var qqSpan = document.getElementById("qqSpan");
		qqSpan.innerHTML = "";
	}
	//地址不能为空
	function checkAddress() {
		var address = document.getElementsByName("address");
		var address = address[0];
		var addressSpan = document.getElementById("addressSpan");
		if (address.value.trim() == '') {
			addressSpan.innerHTML = "不能为空";
			return false;
		}
		return true;
	}

	function clearAddress() {
		var addressSpan = document.getElementById("addressSpan");
		addressSpan.innerHTML = "";
	}
	//答案一不能为空
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
	//答案二不能为空
	function checkanswer_two() {
		var answer_two = document.getElementsByName("answer_two");
		var answer_two = answer_two[0];
		var answer_twoSpan = document.getElementById("answer_twoSpan");
		if (answer_two.value.trim() == '') {
			answer_twoSpan.innerHTML = "不能为空";
			return false;
		}
		return true;
	}

	function clearanswer_two() {
		var answer_twoSpan = document.getElementById("answer_twoSpan");
		answer_twoSpan.innerHTML = "";
	}
	//省份不能为空
	function checkProvince() {
		var province = document.getElementsByName("province");
		var province = province[0];
		var provinceSpan = document.getElementById("provinceSpan");
		if (province.value.trim() == "省份") {
			provinceSpan.innerHTML = "省份不能为空";
			return false;
		}
		return true;
	}

	function clearProvince() {
		var provinceSpan = document.getElementById("provinceSpan");
		provinceSpan.innerHTML = "";
	}
	//地级市不能为空
	function checkCity() {
		var city = document.getElementsByName("city");
		var city = city[0];
		var citySpan = document.getElementById("citySpan");
		if (city.value.trim() == "地级市") {
			citySpan.innerHTML = "地级市不能为空";
			return false;
		}
		return true;
	}

	function clearCity() {
		var citySpan = document.getElementById("citySpan");
		citySpan.innerHTML = "";
	}
	//市、县级市不能为空
	function checkDistrict() {
		var district = document.getElementsByName("district");
		var district = district[0];
		var districtSpan = document.getElementById("districtSpan");
		if (district.value.trim() == "市、县级市") {
			districtSpan.innerHTML = "市、县级市不能为空";
			return false;
		}
		return true;
	}

	function clearDistrict() {
		var districtSpan = document.getElementById("districtSpan");
		districtSpan.innerHTML = "";
	}
	//问题一不能为空
	function checkquestion_one() {
		var question_one = document.getElementsByName("question_one");
		var question_one = question_one[0];
		var question_oneSpan = document.getElementById("question_oneSpan");
		if (question_one.value.trim() == "请选择您要回答的问题一") {
			question_oneSpan.innerHTML = "问题一不能为空";
			return false;
		}
		return true;
	}

	function clearquestion_one() {
		var question_oneSpan = document.getElementById("question_oneSpan");
		question_oneSpan.innerHTML = "";
	}
	//问题二不能为空
	function checkquestion_two() {
		var question_two = document.getElementsByName("question_two");
		var question_two = question_two[0];
		var question_twoSpan = document.getElementById("question_twoSpan");
		if (question_two.value.trim() == "请选择您要回答的问题二") {
			question_twoSpan.innerHTML = "问题二不能为空";
			return false;
		}
		return true;
	}

	function clearquestion_two() {
		var question_twoSpan = document.getElementById("question_twoSpan");
		question_twoSpan.innerHTML = "";
	}

	 //注册协议是否未选
	function disable()
	  {
	  document.getElementById("btnLogin").disabled=true;
	  }
	function enable()
	  {
	  document.getElementById("btnLogin").disabled=false;
	  }
</script>


</head>

<body class="body_login">
	<div class="login_t">
		<div class="login_logo">
			<a href="" target="_blank"></a>
		</div>
		<div class="login_title">欢迎登陆</div>

	</div>
	<div class="zhuce_c">
		<div class="zhuce_ct">
			<span class="tit">注册新用户</span> <span class="relex">以下*标注的为必填选项</span>
		</div>
		<!--/customer 对应用户所有的web请求,然后用method参数区分增删改查  -->
		
			<div class="zhuce_cb">
		<form id="form1" action="${ctx}/customer?method=regist" method="post">
			<div><span style="color:red;">${errorMsg}</span></div>
				<dl>
					<dt>
						<span class="red">*</span>账号：
					</dt>
					<dd>
						<input name="cusername" type="text" class="usernames" 
						onblur="checkcusername()" onfocus="clearcusername()" /><span
							id="nameSpan" style="color:red;">${error.cusername }</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<span class="red">*</span>密码：
					</dt>
					<dd>
						<input name="password" type="password" class="passwords" onblur="checkPassword()" onfocus="clearPassword()" /><span
							id="pwdSpan" style="color:red;">${error.password }</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<span class="red">*</span>确认密码：
					</dt>
					<dd>
						<input name="password2" type="password" class="passwords" onblur="checkPassword2()" onfocus="clearPassword2()" /><span
							id="pwddSpan" style="color:red;">${error.password2 }</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<span class="red">*</span>EMAIL:
					</dt>
					<dd>
						<input name="email" type="text" class="texts" onblur="checkEmail()" onfocus="clearEmail()" /><span
							id="emailSpan" style="color:red;">${error.email }</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<span class="red">*</span>手机号：
					</dt>
					<dd>
						<input name="phone" type="text" class="texts" onblur="checkPhone()" onfocus="clearPhone()" /><span
							id="phoneSpan" style="color:red;">${error.phone }</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<span class="red">*</span>QQ：
					</dt>
					<dd>
						<input name="qq" type="text" class="texts" onblur="checkQq()" onfocus="clearQq()" /><span
							id="qqSpan" style="color:red;">${error.qq }</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<span class="red">*</span>地址：
					</dt>
					<dd>
						<input name="address" type="text" class="texts" onblur="checkAddress()" onfocus="clearAddress()" /><span
							id="addressSpan" style="color:red;">${error.address }</span>
					</dd>
				</dl>
				<dl>
					<dt>学校</dt>
					<dd>
						<input name="school" type="text" class="texts">
					</dd>
				</dl>
				<dl>
					<dt>年龄</dt>
					<dd>
						<input name="age" type="text" class="texts">
					</dd>
				</dl>
				<dl>
					<dt>班级</dt>
					<dd>
						<input name="className" type="text" class="texts">
					</dd>
				</dl>
				<dl>
					<dt>
						<span class="red">*</span>地区：
					</dt>
					<dd>
						<div>
							<select id="s_province" name="province" class="selects" onblur="checkProvince()" onfocus="clearProvince()"></select>  
							<select id="s_city" name="city" class="selects" onblur="checkCity()" onfocus="clearCity()"></select>  
							<select id="s_county" name="district" class="selects" onblur="checkDistrict()" onfocus="clearDistrict()"></select>
							<span id="provinceSpan" style="color:red;">${error.province }</span>
							<span id="citySpan" style="color:red;">${error.city }</span>
							<span id="districtSpan" style="color:red;">${error.district }</span>
							<script class="resources library" src="js/area.js"
								type="text/javascript"></script>

							<script type="text/javascript">
								_init_area();
							</script>
						</div>
						<div id="show"></div>
						<script type="text/javascript">
							var Gid = document.getElementById;
							var showArea = function() {
								Gid('show').innerHTML = "<h3>省"
										+ Gid('s_province').value + " - 市"
										+ Gid('s_city').value + " - 县/区"
										+ Gid('s_county').value + "</h3>"
							}
							Gid('s_county').setAttribute('onchange',
									'showArea()');
						</script>
					</dd>
				</dl>
				<dl>
					<dt>
						<span class="red">*</span>密码提示问题一：
					</dt>
					<dd>
						<select name="question_one" class="wt1" onblur="checkquestion_one()" onfocus="clearquestion_one()" >
							<option>请选择您要回答的问题一</option>
							<option>您最崇拜的人是谁</option>
							<option>您父亲的生日是</option>
							<option>您母亲的生日是</option>
							<option>您最喜欢的地方是哪里</option>
						</select>
						<span id="question_oneSpan" style="color:red;">${error.question_one }</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<span class="red">*</span>密码问题一答案：
					</dt>
					<dd>
						<input name="answer_one" type="text" class="texts" onblur="checkanswer_one()" onfocus="clearanswer_one()" /><span
							id="answer_oneSpan" style="color:red;">${error.answer_one }</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<span class="red">*</span>密码提示问题二：
					</dt>
					<dd>
						<select name="question_two" class="wt1" onblur="checkquestion_two()" onfocus="clearquestion_two()">
							<option>请选择您要回答的问题二</option>
							<option>您最崇拜的人是谁</option>
							<option>您父亲的生日是</option>
							<option>您母亲的生日是</option>
							<option>您最喜欢的地方是哪里</option>
						</select>
						<span id="question_twoSpan" style="color:red;">${error.question_two }</span>
					</dd>
				</dl>
				<dl>
					<dt>
						<span class="red">*</span>密码问题二答案：
					</dt>
					<dd>
						<input name="answer_two" type="text" class="texts" onblur="checkanswer_two()" onfocus="clearanswer_two()" /><span
							id="answer_twoSpan" style="color:red;">${error.answer_two }</span>
					</dd>
				</dl>
				<dl>
					<dt></dt>
					<dd>
						<input name="agree" id="agree" type="checkbox" value="0" class="check0" onclick="if (this.checked) {enable()} else {disable()}"/>我已阅读并同意<a
							href="" class="red">《购书网用户注册协议》</a><span
							id="agreeSpan" style="color:red;">${error.agree }</span> 
					</dd>
				</dl>
				<div class="zc_bt">
					<input name="zc" type="button" class="bts" disabled="true"  id="btnLogin" value="注册" onclick="submitForm()"/> <input
						name="qx" type="button" class="bts" value="取消" onclick="javascript:window.location.href='index.jsp '" />
				</div>

				<div class="zc_lj">
					已经有账号？<a href="${ctx}/login.jsp" target="_blank" class="yellow">立即登陆</a>
				</div>
		</form>
			</div>
	</div>

	<div class="footer_m mar38">
		<div class="footer_nav">
			<a href="" target="_blank">关于我们</a>| <a href="" target="_blank">联系我们</a>|
			<a href="" target="_blank">人才招聘</a>| <a href="" target="_blank">广告服务</a>|
			<a href="" target="_blank">友情链接</a>| <a href="" target="_blank">销售联盟</a>|
			<a href="" target="_blank">公司简介</a>
		</div>
		<div class="footer_copyright">网络文化经营许可证鄂网文[2015]0278-060号
			Copyright © 2015-2018 版权所有</div>
	</div>
</body>
</html>
