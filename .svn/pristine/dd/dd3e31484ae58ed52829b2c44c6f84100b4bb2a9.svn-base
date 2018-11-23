<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String basePath = request.getContextPath();
	pageContext.setAttribute("ctx", basePath);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.prompt:hover {
	background-color: #dedede;
}
</style>
<!-- ajax请求查询当前客户的购物车数量 -->
<script type="text/javascript">
	/* 给收索框添加单击事件 */
	window.onload = function() {
		var inputs = document.getElementsByName("name");
		var search = inputs[0];
		var contentVal = "";
		search.onkeyup = function() {
			var div = document.getElementById("suggestDiv");
			//不显示div
			div.style.display = "none";
			contentVal = search.value;
			if (contentVal.trim().length != 0) {
				var names = getPrompt(contentVal.trim());
				//将字符串names变成json对象
				//names = eval("("+names+")")
				names = JSON.parse(names);
				var content = "";
				for ( var index in names) {
					content += '<div class="prompt" onclick="add(this)" style="height: 24px; line-height: 24px; padding-left: 12px;cursor:pointer;">'
							+ names[index] + '</div>';
				}
				div.innerHTML = content;
				//显示div
				div.style.display = "block";
			}
		}

	}

	/* 点击添加内容到收索框 */
	function add(div) {
		var inputs = document.getElementsByName("name");
		var search = inputs[0];
		search.value = div.innerHTML;
		div.parentNode.style.display = "none";
	}

	/* 根据输入书名ajax查询 */
	function getPrompt(bookName) {
		var bookNames = "";
		var xhr = getXhr();
		//监控xhr对象的状态改变并设置回调函数
		xhr.onreadystatechange = function() {
			//xhr请求已完成,响应已就绪并且服务器响应200,就取数据
			if (xhr.readyState == 4 && xhr.status == 200) {
				bookNames = xhr.responseText;
			}
		}
		//设置请求,同步请求
		xhr.open("POST","${pageContext.request.contextPath}/book?method=selectPromptByName",false);
		xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		//发送请求
		xhr.send("bookName=" + bookName);
		return bookNames;
	}

	/* ajax查询当前用户的购物车数量 */
	function cartCount() {
		//得到ajax对象
		var xhr = getXhr();
		//监控xhr对象的状态改变并设置回调函数
		xhr.onreadystatechange = function() {
			//xhr请求已完成,响应已就绪并且服务器响应200,就取数据
			if (xhr.readyState == 4 && xhr.status == 200) {
				document.getElementById("cartCount").innerHTML = xhr.responseText;
			}
		}
		//设置请求
		xhr
				.open("GET",
						"${pageContext.request.contextPath}/cart?method=cartBooksCount");
		//发送请求
		xhr.send(null);
	}

	/* 得到ajax对象 */
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
	<!--top begin -->
	<div class="header">

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
		<!--logo &s begin -->
		<div class="header_2" style="position: relative;">
			<div class="logo"></div>
			<div class="srarching">
				<div class="srarching_t">
					
						<input name="name" type="text" class="search_txt"
							value="输入你要搜索的书籍名称" autocomplete="off" 
							onfocus="if(this.value=='输入你要搜索的书籍名称'){this.value='';}"
							onblur="if(this.value==''){this.value='输入你要搜索的书籍名称';}" /> <input
							name="search_bt" type="button" class="search_bt" value="搜索" onclick="search()"/>
				</div>
						<script type="text/javascript">
						// ${pageContext.request.contextPath}/book?method=selectBooksByCategory
								function search() {
									var names = document.getElementsByName("name");
									//得到name
									var searchName = names[0];
									//得到value
									var value = searchName.value;
									var url = "${page.url}";
									/* if(url.indexOf("book?method=listBookByName")){
										url += "book?method=listBookByName";
									} */
									url += "book?method=listBookByName";
									var i = url.indexOf("&");
									if(i > 0){
										url = url.substring(0,i);
									}
									url += "&name="+value;
									window.location.href = url;
								}
						
						</script>
				<!-- 查询信息提示 -->
				<div id="suggestDiv"
					style="position: absolute; top: 72px; width: 430px; background-color: white; border: 1px solid #dedede; display: none;">

				</div>
				<div></div>
				<div class="srarching_b">
					热门搜索： <a href="${ctx}/book?method=selectBooksByCategory&grade=26&level=10">外语考试</a> <a href="${ctx}/book?method=selectBooksByCategory&grade=27&level=10">中小学教辅</a> <a href="${ctx}/book?method=selectBooksByCategory&grade=31&level=10">百科全书</a>
					<a href="${ctx}/book?method=selectBooksByCategory&grade=33&level=10">辞典</a> <a href="${ctx}/book?method=selectBooksByCategory&grade=28&level=10">汉语工具书</a> <a
						href="${ctx}/book?method=selectBooksByCategory&grade=29&level=10">英语工具书</a>
				</div>
			</div>
			<div class="ewm">
				<img src="images/ewm.jpg" width="92" height="92" />
			</div>

		</div>
		<!--logo &s end -->
		<!--nav begin -->
		<div class="nav">
			<div class="warp">
				<div class="nav_left">
					全部分类
					<div class="category_ho" id="categoryDiv">
						
					</div>

				</div>
				<!-- 查询上面的分类菜单 -->
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
						xhr
								.open(
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
					loadCategory();

					/* 
						<dl>
							<dt>
								<a href="">小学</a>
							</dt>
							<dd>
								<a href="">小学一年级</a> <a href="">小学二年级</a> <a href="">小学三年级</a> <a
									href="">小学四年级</a> <a href="">小学五年级</a> <a href="">小学六年级</a>
							</dd>
						</dl>
					 */
					//展示所有分类
					function showCategory(categories) {
						var ctx = "${pageContext.request.contextPath}/book?method=selectBooksByCategory&grade=";
						var content = '';
						for ( var index in categories) {
							var c = categories[index];
							//如果是最后一个元素设置last样式
							if (index == categories.length - 1) {
								content += '<dl class="last">';
							} else {
								content += '<dl>';
							}
							content += '<dt><a href="'+ctx+c.category_id+'&level='+c.category_level+'">'
									+ c.category_name + '</a></dt><dd>';
							//子分类
							var children = c.children;
							for ( var i in children) {
								var c2 = children[i];
								content += '<a href="'+ctx+c2.category_id+'&level='+c2.category_level+'">'
										+ c2.category_name + '</a>'
							}
							content += '</dd></dl>';
						}
						//将上面组合好的内容放到categoryDiv中显示
						var div = document.getElementById("categoryDiv");
						div.innerHTML = content;
					}
				</script>

				<div class="nav_right">
					<ul>
						<li><a
							href="${pageContext.request.contextPath}/book?method=selectIndexBooks">首页</a></li>
						<li><a href="">促销优惠</a></li>
						<li><a href="${pageContext.request.contextPath}/cart?method=cartListBook">购物车</a></li>
						<li><a href="">我的订单</a></li>
						<li><a href="info.jsp">个人中心</a></li>
						<li><a href="">客户服务</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!--nav end -->
		<div class="clearfloat"></div>
	</div>
	<!--top end -->
</body>
</html>