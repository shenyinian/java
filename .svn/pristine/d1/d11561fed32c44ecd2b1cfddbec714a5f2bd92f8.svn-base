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
<title>首页</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript">
	$(function(){
		$(".category_ho").show();
	});
</script>
</head>

<body>
	<jsp:include page="header.jsp" />
	<!--container begin -->
	<div class="container">
		<!--1 begin -->
		<div class="con_one">
			<!--left begin -->
			<div class="con_one_left">
				<div class="category" style="height: 662px;"></div>
				<!--hot begin -->
				<div class="hotsell">
					<div class="hotsell_t">热销排行榜</div>
					<div class="hotsell_b">
						<ul>
							<c:forEach items="${vo.hotSales }" var="book" varStatus="vs">
								<li>
									<div class="dis_pi">
										<a href="${ctx}/book?method=selectBookById&bid=${book.bid}" target="_blank"><img src="${book.imgurl }"
											width="70" height="82" alt="" title="" /></a> <span
											class="pic_r"><em>${book.author }</em> <i><fmt:formatNumber
													pattern="0.00" type="currency">${book.price * book.discount }</fmt:formatNumber></i>
											<del>
												<fmt:formatNumber pattern="0.00" type="currency">${book.price}</fmt:formatNumber>
											</del> </span>
									</div>
									<p>
										<a href="${ctx}/book?method=selectBookById&bid=${book.bid}" target="_blank">${book.name}</a>
									</p> <c:if test="${vs.count<4}">
										<div class="num lbg">${vs.count}</div>
									</c:if> <c:if test="${vs.count>=4}">
										<div class="num">${vs.count}</div>
									</c:if>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<script type="text/javascript">
					jQuery(".hotsell_b").slide({
						titCell : "li",
						triggerTime : 0
					});
				</script>

				<!--hot end -->
				<div class="clearfloat"></div>
				<!--ads1 begin -->
				<div class="ads1">
					<ul>
						<li><a href=""><img src="images/ad1.jpg" width="235"
								height="115" /></a></li>
						<li><a href=""><img src="images/ad2.jpg" width="235"
								height="115" /></a></li>
					</ul>
				</div>
				<!--ads1 end -->
			</div>
			<!--left end -->
			<!--right begin -->
			<div class="con_one_right">
				<!--banner begin -->
				<div class="banner">
					<ul class="pic">
						<li><a href="" target="_blank"><img
								src="images/banner1.jpg" width="856" height="335" /></a></li>
						<li><a href="" target="_blank"><img
								src="images/banner1.jpg" width="856" height="335" /></a></li>
						<li><a href="" target="_blank"><img
								src="images/banner1.jpg" width="856" height="335" /></a></li>
					</ul>
					<ul class="hd">
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
				<script type="text/javascript">
					jQuery(".banner").slide({
						mainCell : ".pic",
						effect : "left",
						autoPlay : true,
						delayTime : 300
					});
				</script>
				<!--banner end -->
				<!--new book begin -->
				<div class="newbook">
					<div class="hd">
						<h2>新书上架</h2>
						<a class="next"></a> <a class="prev"></a>
						<ul>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</div>
					<div class="bd">
						<!-- 新书上架 -->
						<ul>
							<c:forEach items="${vo.newest}" var="book">
								<li><a href="${ctx}/book?method=selectBookById&bid=${book.bid}" target="_blank">
										<div class="imgs">
											<img src="${book.imgurl }" width="135" height="157" alt=""
												title="" />
										</div>
										<h3>${book.name}</h3>
										<div class="shou">
											<span class="shou_l">已售：<b class="red">${book.sold }</b></span>
											<span class="shou_r">收藏：<b class="red">${book.collection }</b></span>
										</div>
										<div class="price">
											<fmt:formatNumber pattern="0.00" type="currency">${book.price * book.discount }</fmt:formatNumber>
										</div>
								</a></li>
							</c:forEach>
						</ul>
					</div>

				</div>
				<script type="text/javascript">
					jQuery(".newbook").slide({
						mainCell : ".bd ul",
						effect : "left",
						delayTime : 800,
						vis : 5,
						scroll : 1,
						pnLoop : false,
						trigger : "click",
						easing : "easeOutCubic"
					});
				</script>

				<!--new book end -->

				<!--hot tj begin -->
				<div class="hottj">
					<div class="hd">
						<h2>热门推荐</h2>
						<ul>
							<li>小学</li>
							<li>初中</li>
							<li>高中</li>
							<li>教育</li>
							<li>工具书</li>
							<li>期刊</li>
						</ul>
					</div>
					<div class="bd">
						<!-- 小学 -->
						<ul class="tjul">
							<c:forEach items="${vo.recommend}" var="book">
								<c:if test="${book.specialty == 1 }">
									<li><a href="${ctx}/book?method=selectBookById&bid=${book.bid}" target="_blank">
											<div class="imgs">
												<img src="${book.imgurl }" width="132" height="180" alt=""
													title="" />
											</div>
											<h3>${book.name }</h3>
											<div class="shou">
												<span class="shou_l">已售：<b class="red">${book.sold }</b></span>
												<span class="shou_r">收藏：<b class="red">${book.collection }</b></span>
											</div>
											<div class="price">
												<fmt:formatNumber pattern="0.00" type="currency">${book.price * book.discount }</fmt:formatNumber>
											</div>
									</a></li>
								</c:if>
							</c:forEach>
						</ul>
						<!-- 初中 -->
						<ul class="tjul">
							<c:forEach items="${vo.recommend}" var="book">
								<c:if test="${book.specialty == 2 }">
									<li><a href="${ctx}/book?method=selectBookById&bid=${book.bid}" target="_blank">
											<div class="imgs">
												<img src="${book.imgurl }" width="132" height="180" alt=""
													title="" />
											</div>
											<h3>${book.name }</h3>
											<div class="shou">
												<span class="shou_l">已售：<b class="red">${book.sold }</b></span>
												<span class="shou_r">收藏：<b class="red">${book.collection }</b></span>
											</div>
											<div class="price">
												<fmt:formatNumber pattern="0.00" type="currency">${book.price * book.discount }</fmt:formatNumber>
											</div>
									</a></li>
								</c:if>
							</c:forEach>
						</ul>
						<!-- 高中 -->
						<ul class="tjul">
							<c:forEach items="${vo.recommend}" var="book">
								<c:if test="${book.specialty == 3 }">
									<li><a href="${ctx}/book?method=selectBookById&bid=${book.bid}" target="_blank">
											<div class="imgs">
												<img src="${book.imgurl }" width="132" height="180" alt=""
													title="" />
											</div>
											<h3>${book.name }</h3>
											<div class="shou">
												<span class="shou_l">已售：<b class="red">${book.sold }</b></span>
												<span class="shou_r">收藏：<b class="red">${book.collection }</b></span>
											</div>
											<div class="price">
												<fmt:formatNumber pattern="0.00" type="currency">${book.price * book.discount }</fmt:formatNumber>
											</div>
									</a></li>
								</c:if>
							</c:forEach>
						</ul>
						<!-- 教育 -->
						<ul class="tjul">
							<c:forEach items="${vo.recommend}" var="book">
								<c:if test="${book.specialty == 4 }">
									<li><a href="${ctx}/book?method=selectBookById&bid="${book.bid} target="_blank">
											<div class="imgs">
												<img src="${book.imgurl }" width="132" height="180" alt=""
													title="" />
											</div>
											<h3>${book.name }</h3>
											<div class="shou">
												<span class="shou_l">已售：<b class="red">${book.sold }</b></span>
												<span class="shou_r">收藏：<b class="red">${book.collection }</b></span>
											</div>
											<div class="price">
												<fmt:formatNumber pattern="0.00" type="currency">${book.price * book.discount }</fmt:formatNumber>
											</div>
									</a></li>
								</c:if>
							</c:forEach>
						</ul>
						<!-- 工具书 -->
						<ul class="tjul">
							<c:forEach items="${vo.recommend}" var="book">
								<c:if test="${book.specialty == 5 }">
									<li><a href="${ctx}/book?method=selectBookById&bid=${book.bid}" target="_blank">
											<div class="imgs">
												<img src="${book.imgurl }" width="132" height="180" alt=""
													title="" />
											</div>
											<h3>${book.name }</h3>
											<div class="shou">
												<span class="shou_l">已售：<b class="red">${book.sold }</b></span>
												<span class="shou_r">收藏：<b class="red">${book.collection }</b></span>
											</div>
											<div class="price">
												<fmt:formatNumber pattern="0.00" type="currency">${book.price * book.discount }</fmt:formatNumber>
											</div>
									</a></li>
								</c:if>
							</c:forEach>
						</ul>
						<!-- 期刊 -->
						<ul class="tjul">
							<c:forEach items="${vo.recommend}" var="book">
								<c:if test="${book.specialty == 6 }">
									<li><a href="${ctx}/book?method=selectBookById&bid=${book.bid}" target="_blank">
											<div class="imgs">
												<img src="${book.imgurl }" width="132" height="180" alt=""
													title="" />
											</div>
											<h3>${book.name }</h3>
											<div class="shou">
												<span class="shou_l">已售：<b class="red">${book.sold }</b></span>
												<span class="shou_r">收藏：<b class="red">${book.collection }</b></span>
											</div>
											<div class="price">
												<fmt:formatNumber pattern="0.00" type="currency">${book.price * book.discount }</fmt:formatNumber>
											</div>
									</a></li>
								</c:if>
							</c:forEach>
						</ul>

					</div>
				</div>
				<script type="text/javascript">
					jQuery(".hottj").slide({
						delayTime : 0
					});
				</script>
				<!--hot tj end -->
			</div>
			<!--right end -->
		</div>
		<!--1 end -->
		<!--ads2 beign -->
		<div class="ads2">
			<ul>
				<li><a href=""><img src="images/b1.jpg" width="360"
						height="125" /></a></li>
				<li><a href=""><img src="images/b2.jpg" width="360"
						height="125" /></a></li>
				<li class="last"><a href=""><img src="images/b3.jpg"
						width="360" height="125" /></a></li>
			</ul>
		</div>
		<!--ads2 end -->

		<!--today begin -->
		<div class="today">
			<div class="today_t">今日特价</div>
			<div class="today_b">
				<ul>
					<c:forEach items="${vo.discount}" var="book" varStatus="vs">
						<c:if test="${vs.count%5==0 }">
							<li style="margin-right: -1px;">
						</c:if>
						<c:if test="${vs.count%5!=0 }">
							<li>
						</c:if>
						<a href="${ctx}/book?method=selectBookById&bid=${book.bid}">
							<div class="pics">
								<img src="${book.imgurl }" width="178" height="168" alt=""
									title="" />
							</div>
							<div class="tt">${book.name }</div>
							<div class="no_price">
								<span class="xj"><fmt:formatNumber pattern="0.00"
										type="currency">${book.price * book.discount }</fmt:formatNumber></span><span
									class="cj"><del>
										<fmt:formatNumber pattern="0.00" type="currency">${book.price}</fmt:formatNumber>
									</del></span>
							</div>
						</a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<!--today end -->
	</div>
	<!--container end -->
	<jsp:include page="footer.jsp" />
</body>
</html>
