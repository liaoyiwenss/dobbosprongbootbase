<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@include file="../common/common.jsp"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
<!--[if IE 6]>
    <script src="${pageContext.request.contextPath}/js/iepng.js" type="text/javascript"></script>
        <script type="text/javascript">
           EvPNG.fix('div, ul, img, li, input, a');
        </script>
    <![endif]-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min_044d0927.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.bxslider_e88acd1b.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/menu.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/select.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/lrscroll.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/iban.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/fban.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/f_ban.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/mban.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bban.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/hban.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/tban.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/lrscroll_1.js"></script>


<title>liaoyiwen</title>
</head>
<body>
	<!--Begin Header Begin-->

	<%@include file="../common/header.jsp"%>
	<%@include file="../common/Search.jsp"%>
	<!--End Header End-->
	<!--Begin Menu Begin-->
	<div class="menu_bg">
		<div class="menu">
			<!--Begin 商品分类详情 Begin-->

			<!-- 
    	 List<ProductCategoryVO> ss=ProductCategoryserviceimpl.getDomList();
		  Iterator<ProductCategoryVO> it1=ss.iterator();
		  while(it1.hasNext())
		  {
			  ProductCategoryVO v1 = it1.next();
			  ProductCategory pc1=v1.getPc();
			  System.out.println("1--------------------------");
			  System.out.println(pc1.getId()+pc1.getName());
			  List<ProductCategoryVO> v1List = v1.getPcVOList();
			 Iterator<ProductCategoryVO> it2= v1List.iterator();
			  System.out.println("1----------------------");
			 while(it2.hasNext())
			 {
				 ProductCategoryVO v2 = it2.next();
				 ProductCategory pc2=v2.getPc();
				 System.out.println("2--------------------------");
				 System.out.println(pc2.getId()+pc2.getName());
				 System.out.println("2--------------------------");
				 List<ProductCategoryVO> v2List = v2.getPcVOList();
				 
				 Iterator<ProductCategoryVO> it3= v2List.iterator();
				 
				 while(it3.hasNext())
				 {
					 ProductCategoryVO v3 = it3.next(); 
					 
					 ProductCategory pc3=v3.getPc();
					 System.out.println(pc3.getId()+pc3.getName());
				 
				 }
				 	
			 }
		  }
    	 -->




			<%@include file="../common/LeftBar.jsp"%>


			<!--End 商品分类详情 End-->
			
			<div class="m_ad">中秋送好礼！</div>
		</div>
	</div>
	<!--End Menu End-->
	<div class="i_bg bg_color">
		<div class="i_ban_bg">
			<!--Begin Banner Begin-->
			<div class="banner">
				<div class="top_slide_wrap">
					<ul class="slide_box bxslider">
						<li><img src="${pageContext.request.contextPath}/images/ban1.jpg" width="740" height="401" />
						</li>
						<li><img src="${pageContext.request.contextPath}/images/ban1.jpg" width="740" height="401" />
						</li>
						<li><img src="${pageContext.request.contextPath}/images/ban1.jpg" width="740" height="401" />
						</li>
					</ul>
					<div class="op_btns clearfix">
						<a href="#" class="op_btn op_prev"><span></span>
						</a> <a href="#" class="op_btn op_next"><span></span>
						</a>
					</div>
				</div>
			</div>
			<script type="text/javascript">
				//var jq = jQuery.noConflict();
				(function() {
					$(".bxslider").bxSlider({
						auto : true,
						prevSelector : jq(".top_slide_wrap .op_prev")[0],
						nextSelector : jq(".top_slide_wrap .op_next")[0]
					});
				})();
			</script>
			<!--End Banner End-->
			<div class="inews">
				<div class="news_t">
					<span class="fr"><a href="#">更多 ></a>
					</span>新闻资讯
				</div>
				<ul id="express">
					<!-- <li><span>[ 特惠 ]</span><a href="#">掬一轮明月 表无尽惦念</a></li>
            	<li><span>[ 公告 ]</span><a href="#">好奇金装成长裤新品上市</a></li>
            	<li><span>[ 特惠 ]</span><a href="#">大牌闪购 · 抢！</a></li>
            	<li><span>[ 公告 ]</span><a href="#">发福利 买车就抢千元油卡</a></li>
            	<li><span>[ 公告 ]</span><a href="#">家电低至五折</a></li> -->
				</ul>
				<div class="charge_t">
					话费充值
					<div class="ch_t_icon"></div>
				</div>
				<form>
					<table border="0" style="width:205px; margin-top:10px;"
						cellspacing="0" cellpadding="0">
						<tr height="35">
							<td width="33">号码</td>
							<td><input type="text" value="" class="c_ipt" />
							</td>
						</tr>
						<tr height="35">
							<td>面值</td>
							<td><select class="jj" name="city">
									<option value="0" selected="selected">100元</option>
									<option value="1">50元</option>
									<option value="2">30元</option>
									<option value="3">20元</option>
									<option value="4">10元</option>
							</select> <span style="color:#ff4e00; font-size:14px;">￥99.5</span></td>
						</tr>
						<tr height="35">
							<td colspan="2"><input type="submit" value="立即充值"
								class="c_btn" />
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<!--Begin 热门商品 Begin-->
		<div class="content mar_10">
			<div class="h_l_img">
				<div class="img">
					<img src="${pageContext.request.contextPath}/images/l_img.jpg" width="188" height="188" />
				</div>
				<div class="pri_bg">
					<span class="price fl">￥53.00</span> <span class="fr">16R</span>
				</div>
			</div>
			<div class="hot_pro">
				<div id="featureContainer">
					<div id="feature">
						<div id="block">
							<div id="botton-scroll">
								<ul class="featureUL">
									<c:forEach items="${productlist}" var="prolist" varStatus="i">

										<li class="featureBox">
											<div class="box">
												<div class="imgbg">
													<a href="#"><img
														src="${pageContext.request.contextPath}${filepath}${prolist.filename}"
														width="160" height="136" />
													</a>
												</div>
												<div class="name">
													<a href="#">
														<h2>${prolist.name }</h2> ${prolist.name } </a>
												</div>
												<div class="price">
													<font>￥<span>${prolist.price}</span>
													</font> &nbsp; 26R
												</div>
											</div></li>
									</c:forEach>
								</ul>
							</div>
						</div>
						<a class="h_prev" href="javascript:void();">Previous</a> <a
							class="h_next" href="javascript:void();">Next</a>
					</div>
				</div>
			</div>
		</div>
		<!--Begin 限时特卖 Begin-->
		<div class="i_t mar_10">
			<span class="fl">限时特卖</span> <span class="i_mores fr"><a
				href="#">更多</a>
			</span>
		</div>
		<div class="content">
			<div class="i_sell">
				<div id="imgPlay">
					<ul class="imgs" id="actor">
						<li><a href="#"><img src="${pageContext.request.contextPath}/images/tm_r.jpg" width="211"
								height="357" />
						</a>
						</li>
						<li><a href="#"><img src="${pageContext.request.contextPath}/images/tm_r.jpg" width="211"
								height="357" />
						</a>
						</li>
						<li><a href="#"><img src="${pageContext.request.contextPath}/images/tm_r.jpg" width="211"
								height="357" />
						</a>
						</li>
					</ul>
					<div class="previ">上一张</div>
					<div class="nexti">下一张</div>
				</div>
			</div>
			<div class="sell_right">
				<div class="sell_1">
					<div class="s_img">
						<a href="#"><img src="${pageContext.request.contextPath}/images/tm_1.jpg" width="185"
							height="155" />
						</a>
					</div>
					<div class="s_price">
						￥<span>89</span>
					</div>
					<div class="s_name">
						<h2>
							<a href="#">沙宣洗发水</a>
						</h2>
						倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
					</div>
				</div>
				<div class="sell_2">
					<div class="s_img">
						<a href="#"><img src="${pageContext.request.contextPath}/images/tm_2.jpg" width="185"
							height="155" />
						</a>
					</div>
					<div class="s_price">
						￥<span>289</span>
					</div>
					<div class="s_name">
						<h2>
							<a href="#">德芙巧克力</a>
						</h2>
						倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
					</div>
				</div>
				<div class="sell_b1">
					<div class="sb_img">
						<a href="#"><img src="${pageContext.request.contextPath}/images/tm_b1.jpg" width="242"
							height="356" />
						</a>
					</div>
					<div class="s_price">
						￥<span>289</span>
					</div>
					<div class="s_name">
						<h2>
							<a href="#">东北大米</a>
						</h2>
						倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
					</div>
				</div>
				<div class="sell_3">
					<div class="s_img">
						<a href="#"><img src="${pageContext.request.contextPath}/images/tm_3.jpg" width="185"
							height="155" />
						</a>
					</div>
					<div class="s_price">
						￥<span>289</span>
					</div>
					<div class="s_name">
						<h2>
							<a href="#">迪奥香水</a>
						</h2>
						倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
					</div>
				</div>
				<div class="sell_4">
					<div class="s_img">
						<a href="#"><img src="${pageContext.request.contextPath}/images/tm_4.jpg" width="185"
							height="155" />
						</a>
					</div>
					<div class="s_price">
						￥<span>289</span>
					</div>
					<div class="s_name">
						<h2>
							<a href="#">美妆</a>
						</h2>
						倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
					</div>
				</div>
				<div class="sell_b2">
					<div class="sb_img">
						<a href="#"><img src="${pageContext.request.contextPath}/images/tm_b2.jpg" width="242"
							height="356" />
						</a>
					</div>
					<div class="s_price">
						￥<span>289</span>
					</div>
					<div class="s_name">
						<h2>
							<a href="#">美妆</a>
						</h2>
						倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
					</div>
				</div>
			</div>
		</div>
		<!--End 限时特卖 End-->
		<div class="content mar_20">
			<img src="${pageContext.request.contextPath}/images/mban_1.jpg" width="1200" height="110" />
		</div>
		<!--Begin 进口 生鲜 Begin-->
		<div class="i_t mar_10">
			<span class="floor_num">1F</span> <span class="fl">进口 <b>·</b>
				生鲜</span> <span class="i_mores fr"><a href="#">进口咖啡</a>&nbsp; &nbsp;
				&nbsp; <a href="#">进口酒</a>&nbsp; &nbsp; &nbsp; <a href="#">进口母婴</a>&nbsp;
				&nbsp; &nbsp; <a href="#">新鲜蔬菜</a>&nbsp; &nbsp; &nbsp; <a href="#">新鲜水果</a>
			</span>
		</div>
		<div class="content">
			<div class="fresh_left">
				<div class="fre_ban">
					<div id="imgPlay1">
						<ul class="imgs" id="actor1">
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/fre_r.jpg" width="211"
									height="286" />
							</a>
							</li>
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/fre_r.jpg" width="211"
									height="286" />
							</a>
							</li>
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/fre_r.jpg" width="211"
									height="286" />
							</a>
							</li>
						</ul>
						<div class="prevf">上一张</div>
						<div class="nextf">下一张</div>
					</div>
				</div>
				<div class="fresh_txt">
					<div class="fresh_txt_c">
						<a href="#">进口水果</a><a href="#">奇异果</a><a href="#">西柚</a><a
							href="#">海鲜水产</a><a href="#">品质牛肉</a><a href="#">奶粉</a><a
							href="#">鲜活禽蛋</a><a href="#">进口酒</a><a href="#">进口奶粉</a><a
							href="#">鲜活禽蛋</a>
					</div>
				</div>
			</div>
			<div class="fresh_mid">
				<ul>
					<c:forEach items="${productlist1}" var="list1" varStatus="i">
						<li>
							<div class="name">
								<a href="#">${list1.name}</a>
							</div>
							<div class="price">
								<font>￥<span>${list1.price}</span>
								</font> &nbsp; 25R
							</div>
							<div class="img">
								<a href="#"><img
									src="${pageContext.request.contextPath}${filepath}${list1.filename}"
									width="185" height="155" />
								</a>
							</div></li>
					</c:forEach>
				</ul>
			</div>
			<div class="fresh_right">
				<ul>
					<li><a href="#"><img src="${pageContext.request.contextPath}/images/fre_b1.jpg" width="260"
							height="220" />
					</a>
					</li>
					<li><a href="#"><img src="${pageContext.request.contextPath}/images/fre_b2.jpg" width="260"
							height="220" />
					</a>
					</li>
				</ul>
			</div>
		</div>
		<!--End 进口 生鲜 End-->
		<!--Begin 食品饮料 Begin-->
		<div class="i_t mar_10">
			<span class="floor_num">2F</span> <span class="fl">食品饮料</span> <span
				class="i_mores fr"><a href="#">咖啡</a>&nbsp; &nbsp; | &nbsp;
				&nbsp;<a href="#">休闲零食</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">饼干糕点</a>&nbsp;
				&nbsp; | &nbsp; &nbsp;<a href="#">冲饮谷物</a>&nbsp; &nbsp; | &nbsp;
				&nbsp;<a href="#">营养保健</a>
			</span>
		</div>
		<div class="content">
			<div class="food_left">
				<div class="food_ban">
					<div id="imgPlay2">
						<ul class="imgs" id="actor2">
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/food_r.jpg" width="211"
									height="286" />
							</a>
							</li>
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/food_r.jpg" width="211"
									height="286" />
							</a>
							</li>
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/food_r.jpg" width="211"
									height="286" />
							</a>
							</li>
						</ul>
						<div class="prev_f">上一张</div>
						<div class="next_f">下一张</div>
					</div>
				</div>
				<div class="fresh_txt">
					<div class="fresh_txt_c">
						<a href="#">饼干糕点</a><a href="#">休闲零食</a><a href="#">饮料果汁</a><a
							href="#">牛奶乳品</a><a href="#">冲饮谷物</a><a href="#">营养保健</a><a
							href="#">冲饮谷物</a><a href="#">营养保健</a>
					</div>
				</div>
			</div>
			<div class="fresh_mid">
				<ul>
					<c:forEach items="${productlist2}" var="list2" varStatus="i">
						<li>
							<div class="name">
								<a href="#">${list2.name}</a>
							</div>
							<div class="price">
								<font>￥<span>${list2.price}</span>
								</font> &nbsp; 25R
							</div>
							<div class="img">
								<a href="#"><img
									src="${pageContext.request.contextPath}${filepath}${list2.filename}"
									width="185" height="155" />
								</a>
							</div></li>
					</c:forEach>
				</ul>
			</div>
			<div class="fresh_right">
				<ul>
					<li><a href="#"><img src="${pageContext.request.contextPath}/images/food_b1.jpg" width="260"
							height="220" />
					</a>
					</li>
					<li><a href="#"><img src="${pageContext.request.contextPath}/images/food_b2.jpg" width="260"
							height="220" />
					</a>
					</li>
				</ul>
			</div>
		</div>
		<!--End 食品饮料 End-->
		<!--Begin 个人美妆 Begin-->
		<div class="i_t mar_10">
			<span class="floor_num">3F</span> <span class="fl">个人美妆</span> <span
				class="i_mores fr"><a href="#">洗发护发</a>&nbsp; &nbsp; | &nbsp;
				&nbsp;<a href="#">面膜</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">洗面奶</a>&nbsp;
				&nbsp; | &nbsp; &nbsp;<a href="#">香水</a>&nbsp; &nbsp; | &nbsp;
				&nbsp;<a href="#">沐浴露</a>
			</span>
		</div>
		<div class="content">
			<div class="make_left">
				<div class="make_ban">
					<div id="imgPlay3">
						<ul class="imgs" id="actor3">
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/make_r.jpg" width="211"
									height="286" />
							</a>
							</li>
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/make_r.jpg" width="211"
									height="286" />
							</a>
							</li>
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/make_r.jpg" width="211"
									height="286" />
							</a>
							</li>
						</ul>
						<div class="prev_m">上一张</div>
						<div class="next_m">下一张</div>
					</div>
				</div>
				<div class="fresh_txt">
					<div class="fresh_txt_c">
						<a href="#">洗发护发</a><a href="#">牙刷牙膏</a><a href="#">面膜</a><a
							href="#">补水面膜</a><a href="#">香水</a><a href="#">面霜</a><a href="#">洗面奶</a><a
							href="#">脱毛膏</a><a href="#">沐浴露</a>
					</div>
				</div>
			</div>
			<div class="fresh_mid">
				<ul>
					<c:forEach items="${productlist3}" var="list3" varStatus="i">
						<li>
							<div class="name">
								<a href="#">${list3.name}</a>
							</div>
							<div class="price">
								<font>￥<span>${list3.price}</span>
								</font> &nbsp; 25R
							</div>
							<div class="img">
								<a href="#"><img
									src="${pageContext.request.contextPath}${filepath}${list3.filename}"
									width="185" height="155" />
								</a>
							</div></li>
					</c:forEach>
				</ul>
			</div>
			<div class="fresh_right">
				<ul>
					<li><a href="#"><img src="${pageContext.request.contextPath}/images/make_b1.jpg" width="260"
							height="220" />
					</a>
					</li>
					<li><a href="#"><img src="${pageContext.request.contextPath}/images/make_b2.jpg" width="260"
							height="220" />
					</a>
					</li>
				</ul>
			</div>
		</div>
		<!--End 个人美妆 End-->
		<div class="content mar_20">
			<img src="${pageContext.request.contextPath}/images/mban_1.jpg" width="1200" height="110" />
		</div>
		<!--Begin 母婴玩具 Begin-->
		<div class="i_t mar_10">
			<span class="floor_num">4F</span> <span class="fl">母婴玩具</span> <span
				class="i_mores fr"><a href="#">营养品</a>&nbsp; &nbsp; | &nbsp;
				&nbsp;<a href="#">孕妈背带裤</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">儿童玩具</a>&nbsp;
				&nbsp; | &nbsp; &nbsp;<a href="#">婴儿床</a>&nbsp; &nbsp; | &nbsp;
				&nbsp;<a href="#">喂奶器</a>
			</span>
		</div>
		<div class="content">
			<div class="baby_left">
				<div class="baby_ban">
					<div id="imgPlay4">
						<ul class="imgs" id="actor4">
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/baby_r.jpg" width="211"
									height="286" />
							</a>
							</li>
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/baby_r.jpg" width="211"
									height="286" />
							</a>
							</li>
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/baby_r.jpg" width="211"
									height="286" />
							</a>
							</li>
						</ul>
						<div class="prev_b">上一张</div>
						<div class="next_b">下一张</div>
					</div>
				</div>
				<div class="fresh_txt">
					<div class="fresh_txt_c">
						<a href="#">孕妈必备</a><a href="#">儿童玩具</a><a href="#">重装童鞋</a><a
							href="#">辅助食品</a><a href="#">奶粉</a><a href="#">鲜活禽蛋</a><a
							href="#">维生素</a><a href="#">重装童鞋</a><a href="#">辅助食品</a>
					</div>
				</div>
			</div>
			<div class="fresh_mid">
				<ul>
					<c:forEach items="${productlist4}" var="list4" varStatus="i">
						<li>
							<div class="name">
								<a href="#">${list4.name}</a>
							</div>
							<div class="price">
								<font>￥<span>${list4.price}</span>
								</font> &nbsp; 25R
							</div>
							<div class="img">
								<a href="#"><img
									src="${pageContext.request.contextPath}${filepath}${list4.filename}"
									width="185" height="155" />
								</a>
							</div></li>
					</c:forEach>
				</ul>
			</div>
			<div class="fresh_right">
				<ul>
					<li><a href="#"><img src="${pageContext.request.contextPath}/images/baby_b1.jpg" width="260"
							height="220" />
					</a>
					</li>
					<li><a href="#"><img src="${pageContext.request.contextPath}/images/baby_b2.jpg" width="260"
							height="220" />
					</a>
					</li>
				</ul>
			</div>
		</div>
		<!--End 母婴玩具 End-->
		<!--Begin 家居生活 Begin-->
		<div class="i_t mar_10">
			<span class="floor_num">5F</span> <span class="fl">家居生活</span> <span
				class="i_mores fr"><a href="#">床上用品</a>&nbsp; &nbsp; | &nbsp;
				&nbsp;<a href="#">家纺布艺</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">餐具</a>&nbsp;
				&nbsp; | &nbsp; &nbsp;<a href="#">沙发</a>&nbsp; &nbsp; | &nbsp;
				&nbsp;<a href="#">汽车用品</a>
			</span>
		</div>
		<div class="content">
			<div class="home_left">
				<div class="home_ban">
					<div id="imgPlay5">
						<ul class="imgs" id="actor5">
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/home_r.jpg" width="211"
									height="286" />
							</a>
							</li>
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/home_r.jpg" width="211"
									height="286" />
							</a>
							</li>
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/home_r.jpg" width="211"
									height="286" />
							</a>
							</li>
						</ul>
						<div class="prev_h">上一张</div>
						<div class="next_h">下一张</div>
					</div>
				</div>
				<div class="fresh_txt">
					<div class="fresh_txt_c">
						<a href="#">床上用品</a><a href="#">家纺布艺</a><a href="#">餐具水具</a><a
							href="#">锅具厨具</a><a href="#">沙发</a><a href="#">书柜</a><a href="#">狗粮</a><a
							href="#">家装建材</a><a href="#">汽车用品</a>
					</div>
				</div>
			</div>
			<div class="fresh_mid">
				<ul>

					<c:forEach items="${productlist5}" var="list5" varStatus="i">
						<li>
							<div class="name">
								<a href="#">${list5.name}</a>
							</div>
							<div class="price">
								<font>￥<span>${list5.price}</span>
								</font> &nbsp; 25R
							</div>
							<div class="img">
								<a href="#"><img
									src="${pageContext.request.contextPath}${filepath}${list5.filename}"
									width="185" height="155" />
								</a>
							</div></li>
					</c:forEach>
				</ul>
			</div>
			<div class="fresh_right">
				<ul>
					<li><a href="#"><img src="${pageContext.request.contextPath}/images/home_b1.jpg" width="260"
							height="220" />
					</a>
					</li>
					<li><a href="#"><img src="${pageContext.request.contextPath}/images/home_b2.jpg" width="260"
							height="220" />
					</a>
					</li>
				</ul>
			</div>
		</div>
		<!--End 家居生活 End-->
		<!--Begin 数码家电 Begin-->
		<div class="i_t mar_10">
			<span class="floor_num">6F</span> <span class="fl">数码家电</span> <span
				class="i_mores fr"><a href="#">手机</a>&nbsp; &nbsp; | &nbsp;
				&nbsp;<a href="#">苹果</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">华为手机</a>&nbsp;
				&nbsp; | &nbsp; &nbsp;<a href="#">洗衣机</a>&nbsp; &nbsp; | &nbsp;
				&nbsp;<a href="#">数码配件</a>
			</span>
		</div>
		<div class="content">
			<div class="tel_left">
				<div class="tel_ban">
					<div id="imgPlay6">
						<ul class="imgs" id="actor6">
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/tel_r.jpg" width="211"
									height="286" />
							</a>
							</li>
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/tel_r.jpg" width="211"
									height="286" />
							</a>
							</li>
							<li><a href="#"><img src="${pageContext.request.contextPath}/images/tel_r.jpg" width="211"
									height="286" />
							</a>
							</li>
						</ul>
						<div class="prev_t">上一张</div>
						<div class="next_t">下一张</div>
					</div>
				</div>
				<div class="fresh_txt">
					<div class="fresh_txt_c">
						<a href="#">手机</a><a href="#">平板电脑</a><a href="#">空调</a><a
							href="#">合约机</a><a href="#">电风扇</a><a href="#">数码配件</a><a
							href="#">洗衣机</a><a href="#">电视</a><a href="#">充电器</a><a href="#">耳线</a>
					</div>
				</div>
			</div>
			<div class="fresh_mid">
				<ul>

					<c:forEach items="${productlist6}" var="list6" varStatus="i">
						<li>
							<div class="name">
								<a href="#">${list6.name}</a>
							</div>
							<div class="price">
								<font>￥<span>${list6.price}</span>
								</font> &nbsp; 25R
							</div>
							<div class="img">
								<a href="#"><img
									src="${pageContext.request.contextPath}${filepath}${list6.filename}"
									width="185" height="155" />
								</a>
							</div></li>
					</c:forEach>


				</ul>
			</div>
			<div class="fresh_right">
				<ul>
					<li><a href="#"><img src="${pageContext.request.contextPath}/images/tel_b1.jpg" width="260"
							height="220" />
					</a>
					</li>
					<li><a href="#"><img src="${pageContext.request.contextPath}/images/tel_b2.jpg" width="260"
							height="220" />
					</a>
					</li>
				</ul>
			</div>
		</div>
		<!--End 数码家电 End-->
		<!--Begin 猜你喜欢 Begin-->
		<div class="i_t mar_10">
			<span class="fl">猜你喜欢</span>
		</div>
		<div class="like">
			<div id="featureContainer1">
				<div id="feature1">
					<div id="block1">
						<div id="botton-scroll1">
							<ul class="featureUL">



								<c:forEach items="${productlist}" var="prolist" varStatus="i">

									<li class="featureBox">
										<div class="box">
											<div class="imgbg">
												<a href="#"><img
													src="${pageContext.request.contextPath}${filepath}${prolist.filename}"
													width="160" height="136" />
												</a>
											</div>
											<div class="name">
												<a href="#">
													<h2>${prolist.name }</h2> ${prolist.name } </a>
											</div>
											<div class="price">
												<font>￥<span>${prolist.price}</span>
												</font> &nbsp; 26R
											</div>
										</div></li>
								</c:forEach>


							</ul>
						</div>
					</div>
					<a class="l_prev" href="javascript:void();">Previous</a> <a
						class="l_next" href="javascript:void();">Next</a>
				</div>
			</div>
		</div>
		<!--End 猜你喜欢 End-->

		<!--Begin Footer Begin -->
		<%@include file="../common/footer2.jsp"%>
		<%@include file="../common/footer.jsp"%>
		<!--End Footer End -->
	</div>
<script>


	jQuery(".leftNav").removeClass("none");

	</script>


	<script type="text/javascript">
		$(function() {
			$.ajax({
						"url" : "${pageContext.request.contextPath}/news/init",
						"type" : "post",
						"data" : null,
						"dataType" : "Json",
						"success" : function(result) {
							$.each(result, function(i, n) {
								$("#express").append(
										"<li><span>[ 公告 ]</span><a href='#'>"
												+ n.title + "</a></li>");
							})
						}
					})
		})

		var marginTop = 0;
		var interval = setInterval(function() {
			$("#express").children("li").first().animate({
				"margin-top" : marginTop--
			}, 0, function() {
				var $first = $(this);
				if (!$first.is(":animated")) {
					if ((-marginTop) > $first.height()) {
						$first.css({
							"margin-top" : 0
						}).appendTo($("#express"));
						marginTop = 0;
					}
				}
			});
		}, 50);
	</script>

	   <script type="text/javascript">
		   var path="${pageContext.request.contextPath }";
    jQuery.ajax({
		"url" : path+"/show/Temp",
		"type" : "post",
		"data" : null,
		"dataType" : "html",
		"success" : function(result) {
			jQuery("#searchBar").html(result);
		}
	}
)
    </script>
</body>




<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>
