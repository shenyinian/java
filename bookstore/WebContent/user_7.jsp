<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String basePath = request.getContextPath();
	pageContext.setAttribute("ctx", basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查询退换货记录</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
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
                   <dd><a href="${ctx}/user_1.jsp">我的订单</a></dd>
                   <dd><a href="${ctx}/user_2.jsp">我的收藏</a></dd>
                   <dd><a href="${ctx}/user_3.jsp">我的账单</a></dd>
                   <dd><a href="${ctx}/user_4.jsp">我的购物车</a></dd>
                   <dd><a href="${ctx}/vip?method=listBought">已经购买的商品</a></dd>
               </dl>
               <dl>
                   <dt>自助服务</dt>
                   <dd><a href="${ctx}/user_6.jsp">申请查询退换货</a></dd>
                   <dd  class="active"><a href="${ctx}/user_7.jsp">查询退换货记录</a></dd>
               </dl>
               <dl>
                   <dt>我的账户</dt>
                   <dd><a href="${ctx}/vip?method=listMyCredit">我的积分</a></dd>
                   <dd><a href="${ctx}/user_9.jsp">我的消息</a></dd>
                   <dd><a href="${ctx}/address.jsp">我的收获地址</a></dd>
                   <dd><a href="${ctx}/info.jsp">个人档案</a></dd>
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
                    <div class="user_lmt1">查询退换货记录</div>
                    
           </div>
               <div class="user_coment">
                 <table width="713" border="0" cellspacing="0" cellpadding="0"  class="my_dd">
                       <tr>
                            <th height="48" colspan="4">书籍信息</th>
                            <th width="98" height="48">订单状态</th>
                            <th width="90" colspan="2">操作</th>
                        </tr>
                        <tr>
                            <td width="32" height="149" style="border-right:none; vertical-align:text-top;">
                              
                            </td>
                            <td width="167">
                                 <div class="dd_img"><a href="" target="_blank"><img src="images/user_img.jpg" width="132" height="121" /></a></div>
                               
                            </td>
                            <td colspan="2" style="padding:0 5px; text-align:left;"><a href="" target="_blank">英语阅读理解与完形填空150篇：七年级</a></td>
                            <td>已发货</td>
                            <td colspan="2">
                                 <div class="user_ck"><a href="" target="_blank">删除</a></div>
                                
                            </td>
                        </tr>
                        <tr>
                            <td width="32" height="149" style="border-right:none; vertical-align:text-top;">
                              
                            </td>
                            <td width="167">
                                 <div class="dd_img"><a href="" target="_blank"><img src="images/user_img.jpg" width="132" height="121" /></a></div>
                               
                            </td>
                            <td colspan="2" style="padding:0 5px; text-align:left;"><a href="" target="_blank">英语阅读理解与完形填空150篇：七年级</a></td>
                            <td>已退货</td>
                            <td colspan="2">
                                 <div class="user_ck"><a href="" target="_blank">删除</a></div>
                                
                            </td>
                        </tr>
                    </table>
                    <!--分页开始 -->
                 <div style="clear:both;"></div>
                    <div class="fenyeys" >
                    <a href="">上一页</a>
                    <a href=""  class="active">1</a>
                    <a href="">2</a>
                    <a href="">3</a>
                    <a href="">4</a>
                    <a href="">5</a>
                    <a href="">下一页</a>
                    </div>
                    <div style="clear:both;"></div>
                    <!--分页结束 -->
                   
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