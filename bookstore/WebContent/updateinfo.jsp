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
<title>修改个人档案</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script language="javascript">
function submitForm() {
	/* 做校验 */
	var flag1 = checknickname();
	var flag2 = checkcname();
	var flag3 = checkemail();
	var flag4 = checkqq();
	var flag5 = checkphone();
	var flag6 = checkProvince();
	var flag7 = checkCity();
	var flag8 = checkDistrict();
	
	if (flag1 && flag2 && flag3 && flag4 && flag5 && flag6 && flag7 && flag8) {
		
			document.forms[0].submit();
		
		
	}else{
		alert("您的注册信息有误，请检查后再输入");
	}
}
//昵称不能为空
function checknickname() {
	var nickname = document.getElementsByName("nickname");
	var nickname = nickname[0];
	var nicknameSpan = document.getElementById("nicknameSpan");
	
	if (nickname.value.trim() == '') {
		nicknameSpan.innerHTML = "不能为空";
		return false;
	} 
	return true;
}


function clearnickname() {
	var nicknameSpan = document.getElementById("nicknameSpan");
	nicknameSpan.innerHTML = "";
}
//真实姓名不能为空
function checkcname() {
	var cname = document.getElementsByName("cname");
	var cname = cname[0];
	var cnameSpan = document.getElementById("cnameSpan");
	
	if (cname.value.trim() == '') {
		cnameSpan.innerHTML = "不能为空";
		return false;
	} 
	return true;
}


function clearcname() {
	var cnameSpan = document.getElementById("cnameSpan");
	cnameSpan.innerHTML = "";
}
//邮箱不能为空
function checkemail() {
	var email = document.getElementsByName("email");
	var email = email[0];
	var emailSpan = document.getElementById("emailSpan");
	if (email.value.trim() == '') {
		emailSpan.innerHTML = "不能为空";
		return false;
	}else {
		if(!email.value.trim().match(/\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/)){
		
		emailSpan.innerHTML = "邮箱格式错误，请重新输入";
		return false;
	} 
	}
	return true;
}

function clearemail() {
	var emailSpan = document.getElementById("emailSpan");
	emailSpan.innerHTML = "";
}
//电话不能为空
function checkphone() {
	var phone = document.getElementsByName("phone");
	var phone = phone[0];
	var phoneSpan = document.getElementById("phoneSpan");
	if (phone.value.trim() == '') {
		phoneSpan.innerHTML = "不能为空";
		return false;
	}else {
		if(!phone.value.trim().match(/^1[34578]\d{9}$/)){
		
		phoneSpan.innerHTML = "电话号码格式错误，请重新输入";
		return false;
		} 
	}
	return true;
}

function clearphone() {
	var phoneSpan = document.getElementById("phoneSpan");
	phoneSpan.innerHTML = "";
}
//qq不能为空
function checkqq() {
	var qq = document.getElementsByName("qq");
	var qq = qq[0];
	var qqSpan = document.getElementById("qqSpan");
	if (qq.value.trim() == '') {
		qqSpan.innerHTML = "不能为空";
		return false;
	}else {
		if(!qq.value.trim().match(/[1-9]\d{4,14}/)){
			
			qqSpan.innerHTML = "QQ号码格式错误，请重新输入";
			return false;
			} 
		}
	return true;
}

function clearqq() {
	var qqSpan = document.getElementById("qqSpan");
	qqSpan.innerHTML = "";
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
function checkDistrict() {
	var district = document.getElementsByName("district");
	var district = district[0];
	var districtSpan = document.getElementById("districtSpan");
	if (district.value.trim() == "市、县级市") {
		districtSpan.innerHTML = "市、县级市不能为空";
		return false;
	}
	return true;
}

function clearDistrict() {
	var districtSpan = document.getElementById("districtSpan");
	districtSpan.innerHTML = "";
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
    </div>>
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
                   <dd><a href="">已经购买的商品</a></dd>
               </dl>
               <dl>
                   <dt>自助服务</dt>
                   <dd><a href="">申请查询退换货</a></dd>
                   <dd><a href="">查询退换货记录</a></dd>
               </dl>
               <dl>
                   <dt>我的账户</dt>
                   <dd><a href="">我的积分</a></dd>
                   <dd><a href="">我的消息</a></dd>
                   
                   <dd ><a href="${ctx}/vip?method=seladdress">我的收获地址</a></dd>
                   <dd><a href="${ctx}/info.jsp">个人档案</a></dd>
                   <dd   class="active"><a href="${ctx}/updateinfo.jsp">修改个人档案</a></dd>
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
           <form id="form1" action="${ctx}/vip?method=updateCInfor" method="post">
           <div>
           <span style="color:red;">${errorMsg}</span></div>
               <div class="gr_wap">
                   <p class="gr_ts">亲爱的&nbsp;<b>${sessionScope.customer.cusername}</b>，请填写真实的资料</p>
                   <dl>
                       <dt>当前头像：</dt>
                       <dd>
                         <div class="pic_head"><img src="images/gr_pic.jpg" width="88" height="87" /></div>
                         <div class="pic_choice">
                               <p class="pic_choice1">
                                   请从您的电脑中上传图片作为头像：
                                   <span class="gray">(建议尺寸96*96像素，300k以内)</span>
                                
                               </p>
                           <p class="browse_mypic">
                                   <input type="file" name="Myfile" id="Myfile" size="36" maxlength="30" onchange="" onclick="" onkeydown="" style="height:21px; width:290px; font-size:12px; padding-top:3px; float:left;" />
                                  <input type="hidden" name="hid_opt" id="hid_opt" />
                                  <input onclick="" name="btnUpload" type="button" id="btnUpload" class="browse_button" Height="20px" value="上传" disabled="disabled" />
                               </p>
                            </div>
                          <script>
                          </script>  
                     </dd>
                   </dl>
                   <dl>
                       <dt><span class="red">*</span>昵称：</dt>
                       <dd>
                       <input name="nickname" type="text" class="nicheng" onblur="checknickname()" onfocus="clearnickname()" />
                       <span
							id="nicknameSpan" style="color:red;">${error.nickname }</span>
                       </dd>
                   </dl>
                   <dl>
                       <dt><span class="red">*</span>身份：</dt>
                       <dd>
                               <label>
                                 <input type="radio" name="RadioGroup1" value="在校学生" id="RadioGroup1_0" />
                                 在校学生</label>
                          
                               <label>
                               <input type="radio" name="RadioGroup1" value="教师" id="RadioGroup1_1" />
                                 教师</label>
                           <input type="radio" name="RadioGroup1" value="上班族" id="RadioGroup1_2" />
                                 上班族</label>
                           <input type="radio" name="RadioGroup1" value="自由职业" id="RadioGroup1_3" />
                                 自由职业</label>
 
                       </dd>
                   </dl>
                   <dl>
                     <dt><span class="red">*</span>真实姓名：</dt>
                       <dd><input name="cname" type="text" class="realname" onblur="checkcname()" onfocus="clearcname()"/>
                       <span
							id="cnameSpan" style="color:red;">${error.cname }</span>
                       </dd>
                   </dl>
                   <dl>
                       <dt>性别：</dt>
                       <dd>

                               <label>
                                 <input type="radio" name="RadioGroup2" value="男" id="RadioGroup2_0" />
                                 男</label>
                      
                               <label>
                                 <input type="radio" name="RadioGroup2" value="女" id="RadioGroup2_1" />
                                 女</label>
                       </dd>
                   </dl>
                   <dl>
                     <dt>EMAIL：</dt>
                       <dd><input name="email" type="text" class="realname"
                       onblur="checkemail()" onfocus="clearemail()"/>
                        <span
							id="emailSpan" style="color:red;">${error.email }</span>
                       </dd>
                   </dl>
                   <dl>
                       <dt><span class="red">*</span>电话：</dt>
                       <dd><input name="phone" type="text" class="realname"
                       onblur="checkphone()" onfocus="clearphone()"/>
                        <span
							id="phoneSpan" style="color:red;">${error.phone }</span>
                      </dd>
                   </dl>
                   <dl>
                       <dt>QQ：</dt>
                       <dd><input name="qq" type="text" class="realname"
                       onblur="checkqq()" onfocus="clearqq()"/>
                        <span
							id="qqSpan" style="color:red;">${error.qq }</span>
							</dd>
                   </dl>
                   <dl>
                       <dt>学校：</dt>
                       <dd><input name="school" type="text" class="realname"
                       onblur="checkschool()" onfocus="clearschool()"/>
                        <span
							id="schoolSpan" style="color:red;">${error.school }</span>
							</dd>
                      
                   </dl>
                   <dl>
                       <dt>班级：</dt>
                       <dd><input name="className" type="text" class="realname"
                       onblur="checkclassName()" onfocus="clearclassName()"/>
                        <span
							id="classNameSpan" style="color:red;">${error.className }</span>
                       </dd>
                   </dl>
                   <dl>
                       <dt>生日：</dt>
                       <dd>
                            <select name="year2" >
                                <option value="2010">2010</option>
                                <option value="2011">2011</option>
                                <option value="2012">2012</option>
                                <option value="2013">2013</option>
                                <option value="2014">2014</option>
                                <option value="2015">2015</option>
                                <option value="2016">2016</option>
                                <option value="2017">2017</option>
                                <option value="2018">2018</option>
                                <option value="2019">2019</option>
                                <option value="2020">2020</option>
                              </select>
               
                              <select name="month2">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                              </select>
                        
                              <select name="day2">
                                <option value="1">1</option>
                                <option value="2" >2</option>
                                <option value="3" >3</option>
                                <option value="4" >4</option>
                                <option value="5" >5</option>
                                <option value="6" >6</option>
                                <option value="7" >7</option>
                                <option value="8" >8</option>
                                <option value="9" >9</option>
                                <option value="10" >10</option>
                                <option value="11" >11</option>
                                <option value="12" >12</option>
                                <option value="13" >13</option>
                                <option value="14" >14</option>
                                <option value="15" >15</option>
                                <option value="16" >16</option>
                                <option value="17" >17</option>
                                <option value="18" >18</option>
                                <option value="19" >19</option>
                                <option value="20" >20</option>
                                <option value="21" >21</option>
                                <option value="22" >22</option>
                                <option value="23" >23</option>
                                <option value="24" >24</option>
                                <option value="25" >25</option>
                                <option value="26" >26</option>
                                <option value="27" >27</option>
                                <option value="28" >28</option>
                                <option value="29" >29</option>
                                <option value="30" >30</option>
                                <option value="31" >31</option>
                              </select>
                              <span class="gray">出生年份为保密</span>
                  <script language="Javascript">
                  if (this.form1.month2!="")
                  {nowtime()}
                  </script>
                       </dd>
                   </dl>
                   <dl>
                       <dt><span class="red">*</span>居住地：</dt>
                       <dd>
                            <div>
                                  <select id="s_province" name="province" class="selects"onblur="checkProvince()" onfocus="clearProvince()"></select>
                                  <select id="s_city" name="city" class="selects"onblur="checkCity()" onfocus="clearCity()"></select>
                                  <select id="s_county" name="district" class="selects"onblur="checkDistrict()" onfocus="clearDistrict()"></select>
                                  <span id="provinceSpan" style="color:red;">${error.province }</span>
							<span id="citySpan" style="color:red;">${error.city }</span>
							<span id="districtSpan" style="color:red;">${error.district }</span>
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
                   <!-- <dl>
                       <dt>兴趣爱好：</dt>
                       <dd><textarea name="aihao" cols="" rows="" class="aihao" placeholder="不同项目之间用空格分开，例如“旅行 阅读 瑜伽"></textarea></dd>
                   </dl>
                   <dl>
                       <dt>自我介绍：</dt>
                       <dd><textarea name="jieshao" cols="" rows="" class="jieshao" placeholder=""></textarea></dd>
                   </dl>
                   <dl> -->
                       <dt></dt>
                       <dd><input name="save_xx" type="button" class="save_xx" value="保存基本信息" onclick="submitForm()"/></dd>
                   <span
							id="saveSpan" style="color:red;">${error.save }</span>
                   </dl>
               </div>
               </form>
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
