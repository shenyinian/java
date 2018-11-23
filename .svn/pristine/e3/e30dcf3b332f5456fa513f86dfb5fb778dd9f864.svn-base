<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>查看书籍</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/css/style.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.min.js"></script>

<script type="text/javascript">

function getXhr() {
	var xmlhttp;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	return xmlhttp;
}
</script>

</head>

<body>

	<div class="user_top">
		<div class="user_c">
			<div class="user_top_l">
				<a href="" target="_blank">回到首页</a> 欢迎您，uesr &nbsp;&nbsp;&nbsp; <a
					href="" target="_blank">退出</a>
			</div>
			<div class="user_top_r">
				<ul>
					<li><a href="" target="_blank">帮助中心</a></li>
					<li><a href="" target="_blank">关于我们</a></li>

				</ul>
			</div>
		</div>
	</div>

	<div class="user_nav">
		<div class="user_c">
			<div class="user_nav_l">管理中心</div>
			<div class="user_nav_r">
				<input name="search2" type="text" class="uesr_s" /> <input
					name="search2" type="button" class="uesr_b" />
			</div>
		</div>
	</div>

	<div class="user_cont">
		<!--left begin -->
		<div class="user_cont_left">
			<dl>
				<dt>管理用户</dt>
				<dd>
					<a href="">查看用户</a>
				</dd>
				<!-- <dd><a href="">我的收藏</a></dd> -->
			</dl>
			<dl>
				<dt>管理书籍</dt>
				<dd class="active">
					<a href="">查看书籍</a>
				</dd>
				<dd>
					<a href="">修改书籍</a>
				</dd>
				<dd>
					<a href="">添加书籍</a>
				</dd>
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
                    <div class="user_lmt1">所有书籍</div>
                   
           </div>
           <div class="user_coment">
                 <div class="my_comments">
                     <ul>
                         <li>
                             <div class="my_co_1">
                                  <div class="my_co_11"><img src="images/my_pl_img.jpg" width="47" height="60" /></div>
                                  <div class="my_co_13">英语阅读理解 </div>
                                  <div class="my_co_13">初中一年级 </div>
                                  <div class="my_co_13">13元</div>
                                  <div class="my_co_13">75折</div>
                                  <div class="my_co_13">库存130</div>
                                  <div class="my_co_13">20个积分</div>
                                  <div class="my_co_13">不可用积分兑换</div>
                                  <div class="my_co_14"><a href="">删除</a></div>
                             </div>
                             <div class="my_co_2"><span class="red">描述：</span>XXXXXXXXXXXX</div>
                             
                         </li>
                        
                     </ul>
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
		