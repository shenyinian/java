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
<title>付款</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<script>
$(function(){
    $('.nav_left').mouseover(function(){

		$('.category_ho').show();
	}).mouseout(function(){
		$('.category_ho').hide();
	});  	
});
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
           <c:forEach items="${cartlist}" var="book">
               <li>
                    <div class="buy_one_c1"></div>
                    <div class="buy_one_c2">
                         <div class="buy_one_c2l"><a href=""><img src="${book.imgurl}" width="38" height="54" /></a></div>
                         <div class="buy_one_c2r" style="text-align: center">${book.bname }</div>
                    </div>
                    <div class="buy_one_c3"><b class="pr1">￥${book.unitprice}</b></div>
                    <div class="buy_one_c4">${book.buynum}</div>
                    <div class="buy_one_c5"><b class="pr2">￥${book.amount}</b></div>
                    <div class="buy_one_c6">
                         <div class="buy_one_c62"><a href="${ctx}/cart?method=cartListBook">修改</a></div>
                        
                    </div>
               </li>
               </c:forEach>
           </ul>
         </div>
         <!--收货人信息beign -->
         <div class="address_xg">
              <div class="address_xg_t"><span class="edit"><a href="${ctx}/buy_address.jsp">修改</a></span>收货人信息</div>
              <div class="address_xg_b">
                   <dl>
                        <dt>收货人姓名：</dt>
                        <dd><input name="name" type="text" class="txta" disabled="disabled" value="${address1.name}"/></dd>
                   </dl>
                   <dl>
                        <dt>收货地区：</dt>
                        <dd><input name="name" type="text" class="txta" disabled="disabled" value="${address1.province}${address.city}${address.county}${address.addr_detail}"/></dd>
                   </dl>
                   <dl>
                        <dt>邮编：</dt>
                        <dd><input name="name" type="text" class="txta" disabled="disabled" value="${address1.postCode}"/></dd>
                   </dl>
                   <dl>
                        <dt>手机：</dt>
                        <dd><input name="name" type="text" class="txta" disabled="disabled" value="${address1.mobile}"/></dd>
                   </dl>
              </div>
         </div>
         <!--收货人信息end -->
         <!--配送方式 begin -->
        <div class="address_xg">
              <div class="address_xg_t">配送方式</div>
              <div class="address_xg_b">
                <form id="form1" name="form1" method="post" action="">
                      <p>
                        <label class="courier">
                          <input type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_0" />
                          自提</label>
                        <label class="courier">
                          <input type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_1" checked="checked"/>
                          申通快递</label>
                        <label class="courier">
                            <input type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_1" />
                          圆通快递</label>
                        <label class="courier">
                            <input type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_1" />
                          平邮</label>
                      </p>
                </form>
              </div>
        </div>
         <!--配送方式 end -->
    </div>
    <!--1end -->
    <!--zhifu begin -->
  <div class="pay_way">
    <div class="hd">
            选择支付方式
			<ul>
				<li>淘宝支付</li>
				<li>银联支付</li>
			</ul>
		</div>
		<div class="bd">
             <ul>
                  <li>
                        <label>
                          <input type="radio" name="RadioGroup2" value="" id="RadioGroup2_0" />
                          <img src="images/kuaijie.jpg" width="161" height="42"  class="pcs"/>
                        </label>
                  </li>
                  <li>
                       <label>
                          <input type="radio" name="RadioGroup2" value="" id="RadioGroup2_1" />
                          <img src="images/zfb.jpg" width="161" height="42" class="pcs"/>
                        </label>
                  </li>
             </ul>
             <ul>
                    <li>
                        <label>
                          <input type="radio" name="RadioGroup3" value="" id="RadioGroup3_0" />
                          <img src="images/c1.jpg" width="161" height="42"  class="pcs"/>
                        </label>
                  </li>
                  <li>
                       <label>
                          <input type="radio" name="RadioGroup3" value="" id="RadioGroup3_1" />
                          <img src="images/c1.jpg" width="161" height="42" class="pcs"/>
                        </label>
                  </li>
             </ul>
    </div>
    <div>
    <img alt="付款码" src="images/pay.jpg" width="100" height="100">
    </div>
  </div>
   <script type="text/javascript">jQuery(".pay_way").slide({delayTime:0 });</script>
    <!--zhifu end -->
  <div class="next_bt"><a href="${ctx}/pay?method=addOrders"></a></div> 
   
</div>
<!--container end -->
<jsp:include page="footer.jsp" />

</body>
</html>
