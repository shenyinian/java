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
<title>我的收获地址</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script language="javascript">
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

    <div class="header_1">
			<div class="warp">
				<div class="header_1_l">
					<c:if test="${empty sessionScope.customer}">
						欢迎光临购书网！ <a href="${pageContext.request.contextPath}/login.jsp">请登陆</a>
						<a href="${pageContext.request.contextPath}/regist.jsp">免费注册</a>
					</c:if>
					<c:if test="${not empty sessionScope.customer}">
						欢迎<span style="font-weight: bold; color: red;">${sessionScope.customer.cusername}</span>光临购书网！
						<a
							href="${pageContext.request.contextPath}/customer?method=logout">退出当前登陆</a>
							<a
							href="real_index.jsp">返回首页</a>
					</c:if>
				</div>
				<div class="header_1_r">
					<ul>
						<li><a href="">我的订单</a></li>
						<li><a href="${ctx}/cart?method=cartListBook">购物车<span id="cartCount" class="red">0</span>件
								<!-- 如果session中的customer不为空,说明用户已经登陆 --> <c:if
									test="${not empty customer}">
									<script type="text/javascript">
										/* ajax查询购物车数量 */
										cartCount();
									</script>
								</c:if>
						</a></li>
						<li><a href="">帮助中心</a></li>
					</ul>
				</div>
			</div>
		</div>

    
    <div class="user_nav">
         <div class="user_c">
               <div class="user_nav_l">用户中心</div>
               <div class="user_nav_r">
                     <input name="search2" type="text"  class="uesr_s"/>
                     <input name="search2" type="button"  class="uesr_b"/>
               </div>
         </div>
    </div>
    
    <div class="user_cont">
         <!--left begin -->
         <div class="user_cont_left">
               <dl>
                   <dt>我的交易</dt>
                   <dd><a href="">我的订单</a></dd>
                   <dd><a href="">我的收藏</a></dd>
                   <dd><a href="">我的账单</a></dd>
                   <dd><a href="">我的购物车</a></dd>
                   <dd><a href=${ctx}/vip?method=listBought">已经购买的商品</a></dd>
               </dl>
               <dl>
                   <dt>自助服务</dt>
                   <dd><a href="">申请查询退换货</a></dd>
                   <dd><a href="">查询退换货记录</a></dd>
               </dl>
               <dl>
                   <dt>我的账户</dt>
                   <dd><a href="${ctx}/vip?method=listMyCredit">我的积分</a></dd>
                   <dd><a href="">我的消息</a></dd>
                   <dd class="active"><a href="${ctx}/address.jsp">我的收获地址</a></dd>
                   <dd><a href="${ctx}/info.jsp">个人档案</a></dd>
                   <dd  ><a href="${ctx}/updateinfo.jsp">修改个人档案</a></dd>
               </dl>
               <dl>
                   <dt>社区中心</dt>
                   <dd><a href="">我的评论</a></dd>
                   <dd><a href="">兑换专区</a></dd>
               </dl>
         </div>
         <script type="text/javascript">
$(document).ready(function(){
		$(".user_cont_left dl dt").click(function(){
		$(this).siblings().slideToggle("slow");
		$(this).toggleClass("jia"); return false;
	});
	
});
</script>
         <!--left end -->
         <!--right begin -->
         <div class="user_cont_right">
           <div class="user_lmt">
                    <div class="user_lmt1">我的收货地址</div>
                   
           </div>
           <div class="user_coment">
                <div class="user_address">
                <form id="form1" action="${ctx}/vip?method=address" method="post">
                     <dl>
                          <dt class="yellow">新增收货地址</dt>
                          <dd>电话号码、手机号码选填一项，其余均为必填选项</dd>
                     </dl>
                     <dl>
                  
                          <dt><span class="red">*</span>所在地区</dt>
                          <dd>
                               <div>
                                  <select id="s_province" name="province" class="selects"onblur="checkProvince()" onfocus="clearProvince()"></select>  
                                  <select id="s_city" name="city" class="selects"onblur="checkCity()" onfocus="clearCity()"></select>  
                                  <select id="s_county" name="country" class="selects"onblur="checkcountry()" onfocus="clearcountry()"></select>
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
                          <dt><span class="red">*</span>详细地址</dt>
                          <dd>
                               <input name="addr_detail" cols="" rows="" class="address_xx"  onblur="checkaddr_detail()" onfocus="clearaddr_detail()" />
                          	   <span id="addr_detailSpan" style="color:red;">${error.addr_detail }</span>
                          </dd>
                     </dl>
                     <dl>
                          <dt><span class="red">*</span>邮政编码</dt>
                          <dd>
                          <input name="postCode" type="text"  class="youbian" onblur="checkpostCode()" onfocus="clearpostCode()"/>
                          <span
							id="postCodeSpan" style="color:red;">${error.postCode }</span></dd>
                     </dl>
                     <dl>
                          <dt><span class="red">*</span>收货人姓名</dt>
                          <dd><input name="name" type="text"  class="youbian" onblur="checkname()" onfocus="clearname()"/>
                        <span
							id="nameSpan" style="color:red;">${error.name }</span>
                          </dd>
                     </dl>
                     <dl>
                          <dt>手机号码</dt>
                          <dd>
                              <input name="mobile" type="text"  class="youbian" onblur="checkmobile()" onfocus="clearmobile()"/>
                        <span
							id="mobileSpan" style="color:red;">${error.mobile }</span>
                          </dd>
                     </dl>
                     
                     <dl>
                          <dt></dt>
                          <dd><input name="defautAddr" type="checkbox" onclick="" value="1" class="add_mr"/>设为默认收货地址</dd>
                     
                     </dl>
                     <dl>
                          <dt></dt>
                          <dd><input name="bc_bt" type="submit" class="bc_bt" value="保存"/></dd>
                     </dl>
                     </form>
                </div>
                <!--address list begin -->
                 
                <table width="713" border="0" cellspacing="0" cellpadding="0" class="address_list">
                    
                    <tr  class="address_list_t">
                      <th width="10%">收货人</th>
                      <th width="23%">所在地区</th>
                      <th width="31%">详细地址</th>
                      <th width="9%">邮编</th>
                      <th width="14%">手机</th>
                      <th width="13%">操作</th>
                    </tr>
                    <c:forEach items="${list}" var="address">
                    <tr>
                      <td><div align="center">${address.name}</div></td>
                      <td>${address.province}${address.city}${address.county}</td>
                      <td>${address.addr_detail}</td>
                      <td><div align="center">${address.postCode}</div></td>
                      <td><div align="center">${address.mobile}</div></td>
                   
                      <td><div align="center"><a href="${ctx}/vip?method=deladdress&id=${address.id}">删除</a></div></td>
                    </tr>
                   </c:forEach>
                  </table>

                <!--address list end -->
           </div>
         </div>
         <!--right end -->
    </div>
    
    <div class="footer_m mar38">
           <div class="footer_nav">
               <a href="" target="_blank">关于我们</a>|
               <a href="" target="_blank">联系我们</a>|
               <a href="" target="_blank">人才招聘</a>|
               <a href="" target="_blank">广告服务</a>|
               <a href="" target="_blank">友情链接</a>|
               <a href="" target="_blank">销售联盟</a>|
               <a href="" target="_blank">公司简介</a>
           </div>
           <div class="footer_copyright">
                网络文化经营许可证鄂网文[2015]0278-060号  Copyright © 2015-2018  版权所有
           </div>
     </div>
    
</body>
</html>
