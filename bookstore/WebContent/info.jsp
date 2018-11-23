<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String basePath = request.getContextPath();
	pageContext.setAttribute("ctx", basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人档案</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script language="javascript">

function submit(){
	var form1 = document.getElementById("form1");
	form1.submit();
}

function nowtime()
{//年月日三级联动
var da,ny,nm,nd;
da = new Date();
ny = da.getYear();
nm = da.getMonth();
nd = da.getDate();
document.form1.year2.value = ny;
document.form1.month2.value = nm+1;
document.form1.day2.value = nd;
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

    <div>
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
                   <dd><a href="${ctx}/user_1.jsp">我的订单</a></dd>
                   <dd><a href="${ctx}/user_2.jsp">我的收藏</a></dd>
                   <dd><a href="${ctx}/user_3.jsp">我的账单</a></dd>
                   <dd><a href="${ctx}/user_4.jsp">我的购物车</a></dd>
                   <dd><a href="${ctx}/vip?method=listBought">已经购买的商品</a></dd>
               </dl>
               <dl>
                   <dt>自助服务</dt>
                   <dd><a href="${ctx}/user_6.jsp">申请查询退换货</a></dd>
                   <dd><a href="${ctx}/user_7.jsp">查询退换货记录</a></dd>
               </dl>
               <dl>
                   <dt>我的账户</dt>
                   <dd><a href="${ctx}/vip?method=listMyCredit">我的积分</a></dd>
                   <dd><a href="${ctx}/user_9.jsp">我的消息</a></dd>
                   <dd><a href="${ctx}/vip?method=seladdress">我的收获地址</a></dd>
                   <dd  class="active"><a href="${ctx}/info.jsp">个人档案</a></dd>
                   <dd><a href="${ctx}/updateinfo.jsp">修改个人档案</a></dd>
               </dl>
               <dl>
                   <dt>社区中心</dt>
                   <dd><a href="${ctx}/user_12.jsp">我的评论</a></dd>
                   <dd><a href="${ctx}/user_13.jsp">兑换专区</a></dd>
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
                    <div class="user_lmt1">个人档案</div>
                   
           </div>
           <div class="user_coment">
           <form id="form1" action="${ctx}/vip?method=info" method="post">
               <div class="gr_wap">
                 
                   <dl>
                       <dt><span class="red">*</span>昵称：</dt>
                       <dd><input name="nickname" type="text" class="nicheng"
                       value="${customer.nickname}"
                       /></dd>
                   </dl>
              
                   <dl>
                     <dt><span class="red">*</span>真实姓名：</dt>
                       <dd><input name="cname" type="text" class="realname"
                       value="${customer.cname}"
                       /></dd>
                   </dl>
                  
                   <dl>
                     <dt>EMAIL：</dt>
                       <dd><input name="email" type="text" class="realname"
                       value="${customer.email}"
                       /></dd>
                   </dl>
                   <dl>
                       <dt><span class="red">*</span>电话：</dt>
                       <dd><input name="phone" type="text" class="realname"
                       value="${customer.phone}"/></dd>
                   </dl>
                   <dl>
                       <dt>QQ：</dt>
                       <dd><input name="qq" type="text" class="realname"
                       value="${customer.qq}"
                       /></dd>
                   </dl>
                   <dl>
                       <dt>学校：</dt>
                       <dd><input name="school" type="text" class="realname"
                       value="${customer.school}"
                       /></dd>
                   </dl>
                   <dl>
                       <dt>班级：</dt>
                       <dd><input name="className" type="text" class="realname"
                       value="${customer.className}"
                       /></dd>
                   </dl>
                   
                   
                     <dl>
                       <dt>地址：</dt>
                       <dd><input name="className" type="text" class="realname"
                       value="${customer.province}${customer.city}${customer.district}"/></dd>
                   </dl>
            
               </div>
               </form>
           </div>
         </div>
      
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
