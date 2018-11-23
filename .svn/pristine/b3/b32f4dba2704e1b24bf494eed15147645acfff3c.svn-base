<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String basePath = request.getContextPath();
	pageContext.setAttribute("ctx", basePath);
%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品详情</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css" />
<script type="text/javascript"	src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath }/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.jqzoom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/base.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.tabso_yeso.js"></script>
<script>
	$(function() {
		$('.nav_left').mouseover(function() {
			$('.category_ho').show();
		}).mouseout(function() {
			$('.category_ho').hide();
		});
	});

	function submit(arg) {
		var bookForm = document.getElementById("bookForm");
		if (arg == 1) {
			bookForm.action = "${pageContext.request.contextPath}/book?method=toBuy";
		} else if (arg == 2) {
			bookForm.action = "${pageContext.request.contextPath}/cart?method=addCart";
		}
		bookForm.submit();
	}

	function addNum(num) {
		num = parseInt(num);
		var buyNum = document.getElementById("buy-num");
		var stock = parseInt("${detialVo.book.stock}");
		if (num == 1) {
			buyNum.value = parseInt(buyNum.value) + 1;
		} else if (num == -1) {
			buyNum.value = parseInt(buyNum.value) - 1;
		}
		if (buyNum.value < 1) {
			buyNum.value = 1;
		} else if (buyNum.value > stock) {
			alert("购买的数量已经超出库存");
			buyNum.value = stock;
		}
	}

	function checkNum() {
		var buyNum = document.getElementById("buy-num");
		var stock = parseInt("${detialVo.book.stock}");
		var num = buyNum.value;
		var regex = /^\d+$/;
		var flag = regex.test(num);
		if (!flag) {
			buyNum.value = 1;
		}
		if (parseInt(buyNum.value) > stock) {
			buyNum.value = stock;
		}
	}
</script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!--container begin -->
	<div class="container">
		<!--banner begin -->
		<div class="list_banner">
			<a href="" target="_blank"><img src="images/list_banner.jpg"
				width="1100" height="92" /></a>
		</div>
		<!--banner end -->
		<!--left begin -->
		<div class="xq_left">
			<!-- <div class="xq_left_dq">
				<a href="" target=""> 购书网</a> > <a href="" target=""> 图书</a> ><a
					href="" target=""> 中小学教辅</a> > 小学一年级
			</div> -->
			<!--book begin -->
			<div class="xq_book">
				<div class="books">
					<div id="preview" class="spec-preview">
						<span class="jqzoom"><img jqimg="${detialVo.book.imgurl }"
							src="${detialVo.book.imgurl }" width="350" height="350"  /></span>
					</div>
					<!--缩图开始-->
					<div class="spec-scroll">
						<a class="prev"></a> <a class="next"></a>
						<div class="items">
							<ul>
								<li><img alt="" bimg="${detialVo.book.imgurl }"
									src="${detialVo.book.imgurl }" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="${detialVo.book.imgurl }"
									src="${detialVo.book.imgurl }" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="${detialVo.book.imgurl }"
									src="${detialVo.book.imgurl }" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="${detialVo.book.imgurl }"
									src="${detialVo.book.imgurl }" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="${detialVo.book.imgurl }"
									src="${detialVo.book.imgurl }" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="${detialVo.book.imgurl }"
									src="${detialVo.book.imgurl }" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="${detialVo.book.imgurl }"
									src="${detialVo.book.imgurl }" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="${detialVo.book.imgurl }"
									src="${detialVo.book.imgurl }" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="${detialVo.book.imgurl }"
									src="${detialVo.book.imgurl }" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="${detialVo.book.imgurl }"
									src="${detialVo.book.imgurl }" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="${detialVo.book.imgurl }"
									src="${detialVo.book.imgurl }" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="${detialVo.book.imgurl }"
									src="${detialVo.book.imgurl }" onmousemove="preview(this);"></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- xinxi begin -->
				<div class="books_info">
					<form id="bookForm" name="form1" method="post" action="">
						<h1>${detialVo.book.name }</h1>
						<input name="bid" value="${detialVo.book.bid}" type="hidden" />
						<div class="info">
							<dl>
								<dt>优&nbsp;&nbsp;惠&nbsp;&nbsp;价</dt>
								<dd>
									<b class="price_s"><fmt:formatNumber
											value="${detialVo.book.price*detialVo.book.discount}"
											type="currency"></fmt:formatNumber> </b><span class="red">（${detialVo.book.discount}折）</span>
								</dd>
							</dl>
							<dl>
								<dt>定&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价</dt>
								<dd>
									<del>
										<fmt:formatNumber value="${detialVo.book.price}" type="currency"></fmt:formatNumber>
									</del>
								</dd>
							</dl>
							<dl>
								<dt>时&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;段</dt>
								<dd>

									<label> <input type="radio" name="RadioGroup1"
										value="单选" id="RadioGroup1_0" /> 单期
									</label> <label> <input type="radio" name="RadioGroup1"
										value="单选" id="RadioGroup1_1" /> 半年
									</label> <label> <input type="radio" name="RadioGroup1"
										value="单选" id="RadioGroup1_1" /> 全年
									</label>
								</dd>
							</dl>
							<dl>
								<dt>购买数量</dt>
								<dd>
									<div class="wrap-input">
										<a onclick="addNum(-1)" href="javascript:void(0)"
											class="btn-reduce">减少数量</a> <a onclick="addNum(+1)"
											href="javascript:void(0)" class="btn-add">增加数量</a> <input
											onkeyup="checkNum()" value="1" id="buy-num" name="buyNum"
											class="text">
									</div>
								</dd>
							</dl>
							<dl>
								<dt>库&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;存</dt>
								<dd>
									<span class="red">${detialVo.book.stock }</span>件
								</dd>
							</dl>
							<dl>
								<dt>运&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;费</dt>
								<dd>
									￥10.00 <a href="" target="_blank" class="red">&nbsp;&nbsp;配送说明</a>
								</dd>
							</dl>
						</div>
						<!--dapei begin -->
						<div class="dapei">
							<div class="dapei_l">搭配可选</div>
							<div class="dapei_r">
								<ul>
									<li>
										<div class="dapei_rli1">
											<a href="" target="_blank"><img src="images/xq_03.jpg"
												width="72" height="86" /></a>
										</div>
										<div class="dapei_rli2">
											<a href="" target="_blank">5全国职称英语资料</a>
										</div>
										<div class="dapei_rli3">
											<input name="checkbox1" type="checkbox" value=""
												class="check1" />￥38.04
										</div>
									</li>
									<li>
										<div class="dapei_rli1">
											<a href="" target="_blank"><img src="images/xq_03.jpg"
												width="72" height="86" /></a>
										</div>
										<div class="dapei_rli2">
											<a href="" target="_blank">5全国职称英语资料</a>
										</div>
										<div class="dapei_rli3">
											<input name="checkbox1" type="checkbox" value=""
												class="check1" />￥38.04
										</div>
									</li>
									<li>
										<div class="dapei_rli1">
											<a href="" target="_blank"><img src="images/xq_03.jpg"
												width="72" height="86" /></a>
										</div>
										<div class="dapei_rli2">
											<a href="" target="_blank">5全国职称英语资料</a>
										</div>
										<div class="dapei_rli3">
											<input name="checkbox1" type="checkbox" value=""
												class="check1" />￥38.04
										</div>
									</li>
								</ul>
							</div>
						</div>
						<!--dapei end -->
						<div class="book_but">
							<div class="book_but1">
								<a href="javascript:submit(1);">立即购买</a>
							</div>
							<div class="book_but2">
								<a href="javascript:submit(2);"><i></i>加入购物车</a>
							</div>
						</div>
				</div>
				<!-- xinxi end -->
				</form>
			</div>
			<!--book end -->
			<!--book 详情 begin -->
			<div class="book_xq">
				<div class="book_xq_t">商品详情</div>
				<div class="book_xq_b">${detialVo.book.detail }</div>
			</div>
			<!--book 详情 end -->
			<!--pinglun begin -->
			<div class="evaluate">

				<div class="evaluate_2">
					<span class="more"><a href="">查看全部评论>></a></span>
					<ul class="tabbtn_3" id="normaltab_3">
						<li class="current"><a href="">全部(1236)</a></li>
						<li><a href="">好评(1236)</a></li>
						<li><a href="">中评(0)</a></li>
						<li><a href="">差评(0)</a></li>
						<li><a href="">追评(0)</a></li>

					</ul>
					<!--tabbtn end-->
					<div class="tabcon_3" id="normalcon_3">
						<div class="sublist_3">
							<ul style="padding-bottom: 20px;">
								<c:forEach items="${detialVo.comments}" var="comment">
									<li>
										<div class="people_pic">
											<img src="${comment.customer.picurl}">
											<p>${comment.customer.nickname}</p>
										</div>
										<div class="pl_txt">
											<div class="pl_txt_1">
												<c:choose>
													<c:when test="${comment.satisDegree==5}">
														<img src="images/star5.jpg" width="68" height="13" />
													</c:when>
													<c:when test="${comment.satisDegree==4}">
														<img src="images/star4.png" width="68" height="13" />
													</c:when>
													<c:when test="${comment.satisDegree==3}">
														<img src="images/star3.png" width="68" height="13" />
													</c:when>
													<c:when test="${comment.satisDegree==2}">
														<img src="images/star2.png" width="68" height="13" />
													</c:when>
													<c:when test="${comment.satisDegree==1}">
														<img src="images/star1.png" width="68" height="13" />
													</c:when>
													<c:when test="${comment.satisDegree==0}">
														<img src="images/star0.png" width="68" height="13" />
													</c:when>
												</c:choose>
											</div>
											<div class="pl_txt_2">
												<p>
													心得：<b>${comment.content }</b>
												</p>
												<p style="text-indent: 3em;">${comment.commentTime}</p>
											</div>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>
						<!--tabcon end-->
					</div>
					<!--tabbox end-->
				</div>
				
				<script type="text/javascript">
					$(document).ready(function($) {
						//默认选项卡切换
						$("#normaltab_3").tabso({
							cntSelect : "#normalcon_3",
							tabEvent : "mouseover",
							tabStyle : "normal"
						});

					});
				</script>
			</div>
			<!--pinglun end -->
		</div>
		<!--left end -->

		<!--right begin -->
		<div class="xq_right">
			<!--hot begin -->
			<div class="hot_books">
				<div class="hot_books_t">热销排行</div>
				<div class="hot_books_b">
					<ul>
						<c:forEach items="${detialVo.hotBooks}" var="hotBook">
							<li>
								<div class="p-img">
									<a href="${ctx}/book?method=selectBookById&bid=${hotBook.bid}" title="" target="_blank"><img
										src="${hotBook.imgurl}" width="100" height="100" /></a>
								</div>
								<div class="p-name">
									<a href="${ctx}/book?method=selectBookById&bid=${hotBook.bid}" title="" target="_blank">${hotBook.name}</a>
								</div>
								<div class="p-price">
									<strong><fmt:formatNumber
											value="${hotBook.price*hotBook.discount}" type="currency"></fmt:formatNumber>
									</strong> <span class="zhe">[${hotBook.discount}折]</span>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<!--hot end -->
			<!--other begin -->
			<div class="hot_books">
				<div class="hot_books_t">购买本书的还买了</div>
				<div class="hot_books_b">
					<ul>
						<c:forEach items="${detialVo.boughtBooks}" var="boughtBook">
							<li>
								<div class="p-img">
									<a href="${ctx}/book?method=selectBookById&bid=${boughtBook.bid}" title="" target="_blank"><img
										src="${boughtBook.imgurl }" width="100" height="100" /></a>
								</div>
								<div class="p-name">
									<a href="${ctx}/book?method=selectBookById&bid=${boughtBook.bid}" title="" target="_blank">${boughtBook.name }</a>
								</div>
								<div class="p-price">
									<strong><fmt:formatNumber
											value="${boughtBook.price*boughtBook.discount}"
											type="currency"></fmt:formatNumber></strong> <span class="zhe">[${boughtBook.discount}折]</span>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<!--other end -->
		</div>
		<!--right end -->
	</div>
	<!--container end -->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>