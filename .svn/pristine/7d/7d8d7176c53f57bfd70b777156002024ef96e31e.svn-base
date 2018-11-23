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
<title>添加书籍</title>
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
				<dd>
					<a href="">查看书籍</a>
				</dd>
				<dd>
					<a href="">修改书籍</a>
				</dd>
				<dd class="active">
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
				<div class="user_lmt1">添加书籍</div>

			</div>
			<div class="user_coment">
				<div class="user_address">
					<dl>
						<dt class="yellow">新增书籍</dt>
						<dd>带*均为必填选项</dd>
					</dl>
					<form id="form1" action=""
						method="post">
						<dl>
							<dt>
								<span class="red">*</span>书籍名称
							</dt>
							<dd>
								<input name="book_name" type="text" class="youbian" />
							</dd>
						</dl>
						<dl>
							<dt>
								<span class="red">*</span>书籍价格
							</dt>
							<dd>
								<input name="price" type="text" class="youbian" />
							</dd>
						</dl>
						<dl>
							<dt>
								<span class="red">*</span>书籍折扣
							</dt>
							<dd>
								<input name="discount" type="text" class="youbian" />
							</dd>
						</dl>

						<dl>
							<dt>
								<span class="red">*</span>书籍分类
							</dt>
							<dd>
								<div>

									<input id="category" name="category" type="text"
										class="youbian" onclick="loadCategory()" />

									<script type="text/javascript">
					//方法功能:通过ajax请求得到并展示所有分类
					function loadCategory() {
						var xhr = getXhr();
						var result = "";
						xhr.onreadystatechange = function() {
							if (xhr.readyState == 4 && xhr.status == 200) {
								result = xhr.responseText;
							}
						}
						xhr.open(
										"GET",
										"${pageContext.request.contextPath}/category?method=selectCategoryDeep",
										false);
						xhr.send(null);
						//得到返回的字符串转换成JSON对象
						//var categories = eval("("+result+")");
						var categories = JSON.parse(result);
						showCategory(categories);
					}
					//执行ajax请求
					/* loadCategory();
 */
					//展示所有分类
					function showCategory(categories) {
						var ctx = "${pageContext.request.contextPath}/book?method=selectBooksByCategory&cid=";
						var content = '';
						for ( var index in categories) {
							var c = categories[index];
							//如果是最后一个元素设置last样式
							if (index == categories.length - 1) {
								content += '<dl class="last">';
							} else {
								content += '<dl>';
							}
							content += '<dt>'+ c.category_name + '</dt><dd>';
							//子分类
							var children = c.children;
							for ( var i in children) {
								var c2 = children[i];
								content += "<dt onclick=" + "push_catname('" + c2.category_name+ "')>" +c2.category_name + "</dt>"
							}
							content += '</dd></dl>';
						}
						//将上面组合好的内容放到show中显示
						var div = document.getElementById("show");
						div.innerHTML = content;
						show.style.display = "block";
					}
 					
 					function push_catname(c) {
 						
 						var category = document.getElementById("category");
 						category.value = c;
 						clearCategory();
					}
 					
 					function clearCategory() {
 						var show = document.getElementById("show");
 						show.style.display = "none";
					}
				</script>

								</div>
								<div>
									<!-- <input name="category" type="text" class="category"> -->
									<div id="show"></div>
								</div>


							</dd>
						</dl>
						<dl>
							<dt>
								<span class="red">*</span>书籍图片
							</dt>
							<dd>
								<input name="imgurl" type="text" class="youbian" />
							</dd>
						</dl>
						<dl>
							<dt>
								<span class="red">*</span>书籍库存
							</dt>
							<dd>
								<input name="stock" type="text" class="youbian" />
							</dd>
						</dl>
						<dl>
							<dt>
								<span class="red">*</span>书籍积分
							</dt>
							<dd>
								<input name="credit" type="text" class="youbian" />
							</dd>
						</dl>
						<dl>
							<dt>
								<span class="red">*</span>是否可积分兑换
							</dt>
							<dd>
								<input name="exchagable" type="text" class="youbian"
									placeholder=" 1:可以，0:不可以" />
							</dd>
						</dl>
						<dl>
							<dt>书籍作者</dt>
							<dd>
								<input name="author" type="text" class="youbian" />
							</dd>
						</dl>
						<dl>
							<dt>书籍出版社</dt>
							<dd>
								<input name="press" type="text" class="youbian" />
							</dd>
						</dl>
						<dl>
							<dt>书籍出版时间</dt>
							<dd>
								<input name="pubdate" type="text" class="youbian" />
							</dd>
						</dl>
						<dl>
							<dt>书籍描述</dt>
							<dd>
								<textarea name="detail" cols="" rows="" class="address_xx"
									placeholder="小于120个字符"></textarea>
							</dd>
						</dl>
						<dl>
							<dt></dt>
							<dd>
								
									<input name="zc" type="button" value=" 添  加  " class="bts" />
								
							</dd>
						</dl>
					</form>
				</div>
			</div>
		</div>
		<!--right end -->
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

