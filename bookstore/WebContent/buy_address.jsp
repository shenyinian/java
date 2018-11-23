<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	String basePath = request.getContextPath();
	pageContext.setAttribute("ctx", basePath);
%>

<!DOCTYPE html PUBLIC >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>支付_选地址</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.SuperSlide.2.1.1.js"></script>
<script>
$(function(){
    $('.nav_left').mouseover(function(){

		$('.category_ho').show();
	}).mouseout(function(){
		$('.category_ho').hide();
	});  	
});

function submitForm() {
	/* 做校验 */
	var flag1 = checkaddr_detail();
	var flag2 = checkpostCode();
	var flag3 = checkname();
	var flag4 = checkphone();
	var flag5 = checkProvince();
	var flag6 = checkCity();
	var flag7 = checkcountry();
	
	if (flag1 && flag2 && flag3 && flag4 && flag5 && flag6 && flag7) {
		
			document.forms[0].submit();
		
		
	}else{
		alert("您的注册信息有误，请检查后再输入");
	}
}

//详细地址不能为空
function checkaddr_detail() {
	var addr_detail = document.getElementsByName("addr_detail");
	var addr_detail = addr_detail[0];
	var addr_detailSpan = document.getElementById("addr_detailSpan");
	
	if (addr_detail.value.trim() == '') {
		addr_detailSpan.innerHTML = "不能为空";
		return false;
	} 

	
	return true;
}


function clearaddr_detail() {
	var addr_detailSpan = document.getElementById("addr_detailSpan");
	addr_detailSpan.innerHTML = "";
}
//邮编不能为空
function checkpostCode() {
	var postCode = document.getElementsByName("postCode");
	var postCode = postCode[0];
	var postCodeSpan = document.getElementById("postCodeSpan");
	
	if (postCode.value.trim() == '') {
		postCodeSpan.innerHTML = "不能为空";
		return false;
	} 
	return true;
}


function clearpostCode() {
	var postCodeSpan = document.getElementById("postCodeSpan");
	postCodeSpan.innerHTML = "";
}
//收件人姓名不能为空
function checkname() {
	var name = document.getElementsByName("name");
	var name = name[0];
	var nameSpan = document.getElementById("nameSpan");
	
	if (name.value.trim() == '') {
		nameSpan.innerHTML = "不能为空";
		return false;
	} 
	return true;
}


function clearname() {
	var nameSpan = document.getElementById("nameSpan");
	nameSpan.innerHTML = "";
}
//电话不能为空
function checkmobile() {
	var mobile = document.getElementsByName("mobile");
	var mobile = mobile[0];
	var mobileSpan = document.getElementById("mobileSpan");
	if (mobile.value.trim() == '') {
		mobileSpan.innerHTML = "不能为空";
		return false;
	}else {
		if(!mobile.value.trim().match(/^1[34578]\d{9}$/)){
		
		mobileSpan.innerHTML = "手机号码格式错误，请重新输入";
		return false;
		} 
	}
	return true;
}

function clearmobile() {
	var mobileSpan = document.getElementById("mobileSpan");
	mobileSpan.innerHTML = "";
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
function checkcountry() {
	var country = document.getElementsByName("country");
	var country = country[0];
	var countrySpan = document.getElementById("countrySpan");
	if (country.value.trim() == "市、县级市") {
		countrySpan.innerHTML = "市、县级市不能为空";
		return false;
	}
	return true;
}

function clearcountry() {
	var countrySpan = document.getElementById("countrySpan");
	countrySpan.innerHTML = "";
}
</script>
</head>

<body>
	<jsp:include page="header.jsp"/>

<!--container begin -->
<div class="container">
    <!--banner begin -->
    <div class="list_banner"><a href="" target="_blank"><img src="images/list_banner.jpg" width="1100" height="92" /></a></div>
    <!--1begin -->
    <div class="buy_one">
    
         <div class="buy_one_t">
              <div class="buy_one_t1"></div>
              <div class="buy_one_t2">商品名称</div>
              <div class="buy_one_t3">单价</div>
              <div class="buy_one_t4">数量</div>
              <div class="buy_one_t5">小计</div>
              <div class="buy_one_t6">操作</div>
         </div>
         
         <div class="buy_one_c">
           <ul>
           <c:forEach items="${list}" var="book">
               <li>
                    <div class="buy_one_c1"></div>
                    <div class="buy_one_c2">
                         <div class="buy_one_c2l"><a href=""><img src="${book.imgurl}" width="38" height="54" /></a></div>
                         <div class="buy_one_c2r">${book.bname }</div>
                    </div>
                    <div class="buy_one_c3"><b class="pr1">￥${book.unitprice}</b></div>
                    <div class="buy_one_c4">${book.buynum}</div>
                    <div class="buy_one_c5"><b class="pr2">￥${book.amount}</b></div>
                    <div class="buy_one_c6">
                         <div class="buy_one_c62"><a href="${ctx}/cart?method=cartListBook">放回购物车</a></div>
                        
                    </div>
               </li>
               </c:forEach>
           </ul>
         </div>
         <form id="form1" action="${ctx}/pay?method=addAddress" method="post">
         <div class="buy_one_b">
               <div class="address_t">.收货地址</div>
               <div class="address_x"><input name="newadd" type="radio" value="" checked="checked" />使用新地址</div>
               <div class="address_cc">
                    <dl>
                          <dt><span class="red">*</span>收货人姓名</dt>
                          <dd>
                          <input name="name" type="text"  class="txt1" onblur="checkname()" onfocus="clearname()"/>
                          <span id="nameSpan" style="color:red;">${error.name}</span>
                          </dd>
                     </dl>
                    <dl>
                         <dt><span class="red">*</span>收货地区：</dt>
                         <dd>
                             <div>
                                  <select id="s_province" name="province" class="selects1"onblur="checkProvince()" onfocus="clearProvince()"></select>  
                                  <select id="s_city" name="city" class="selects1"onblur="checkCity()" onfocus="clearCity()"></select>  
                                  <select id="s_county" name="country" class="selects1"onblur="checkcountry()" onfocus="clearcountry()"></select>
                                  <span id="provinceSpan" style="color:red;">${error.province }</span>
								  <span id="citySpan" style="color:red;">${error.city }</span>
							      <span id="countrySpan" style="color:red;">${error.country }</span>
                                <script class="resources library" src="js/area.js" type="text/javascript"></script>
                                
                                <script type="text/javascript">_init_area();</script>
                            </div>
                            <div id="show"></div>
                             <script type="text/javascript">
                                    var Gid  = document.getElementById ;
                                    var showArea = function(){
                                        Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" + 	
                                        Gid('s_city').value + " - 县/区" + 
                                        Gid('s_county').value + "</h3>"
                                                                }
                                    Gid('s_county').setAttribute('onchange','showArea()');
                                    </script>
                         </dd>
                    </dl>
                    <dl>
                         <dt><span class="red">*</span>详细地址：</dt>
                         <dd>
                         	<input name="addr_detail" class="txt2"  onblur="checkaddr_detail()" onfocus="clearaddr_detail()" />
                          	 <span id="addr_detailSpan" style="color:red;">${error.addr_detail }</span>
                         </dd>
                    </dl>
                    <dl>
                         <dt><span class="red">*</span>邮政编码：</dt>
                         <dd>
                         <input name="postCode" type="text"  class="txt1" onblur="checkpostCode()" onfocus="clearpostCode()"/>
                          <span
							id="postCodeSpan" style="color:red;">${error.postCode }</span>
                         </dd>
                    </dl>
                    <dl>
                         <dt><span class="red">*</span>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</dt>
                         <dd>
                               <input name="mobile" type="text"  class="txt1" onblur="checkmobile()" onfocus="clearmobile()"/>
                        <span
							id="mobileSpan" style="color:red;">${error.mobile }</span>
                         </dd>
                    </dl>
                    <dl>
                         <dt></dt>
                         <dd><input name="sheding" type="checkbox" value="1" class="sheding" />设为默认地址</dd>
                    </dl>
                    <dl>
                          <dt></dt>
                          <dd><input name="bc_bt" type="submit" class="address_qr" value=""/></dd>
                     </dl>
                   <!--  <div class="address_qr"><input name="bc_bt" type="submit" class="bc_bt" value=""/></div> -->
               </div>   
         </div>
        </form>
        
        <div class="address_xg">
              <div class="address_xg_t"><span class="edit"></span>收货人信息</div>
              <div class="address_xg_b">
                   <dl>
                        <dt>收货人姓名：</dt>
                        <dd><input name="name" type="text" class="txta" disabled="disabled" value="${address.name}"/></dd>
                   </dl>
                   <dl>
                        <dt>收货地区：</dt>
                        <dd><input name="name" type="text" class="txta" disabled="disabled" value="${address.province}${address.city}${address.county}${address.addr_detail}"/></dd>
                   </dl>
                   <dl>
                        <dt>邮编：</dt>
                        <dd><input name="name" type="text" class="txta" disabled="disabled" value="${address.postCode}"/></dd>
                   </dl>
                   <dl>
                        <dt>手机：</dt>
                        <dd><input name="name" type="text" class="txta" disabled="disabled" value="${address.mobile}"/></dd>
                   </dl>
              </div>
         </div>
    </div>
    <!--1end -->
    <!--2begin -->
    
     <div class="buy_one_z">
             <p>商品金额：￥${totalPrice}</p>
             <p>应付纵总额（含运费）：<b>￥${totalPrice + 10}</b></p>
             <p><a href="${ctx}/pay?method=pay1" class="z_bt"></a></p>
     </div>
         
    <!--2end -->
   
</div>
<!--container end -->
<jsp:include page="footer.jsp" />


</body>
</html>